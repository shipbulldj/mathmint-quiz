// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IQuizContract {
    function getScore(address user) external view returns (uint256);
    function canMintNFT(address user) external view returns (bool);
}

contract MathMintNFT is ERC721, ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;
    IQuizContract public quizContract;

    mapping(address => bool) public hasMinted;
    mapping(address => uint256) public userTokenId;

    event NFTMinted(address indexed user, uint256 tokenId, uint256 score, uint256 timestamp);

    string private _baseTokenURI;

    constructor(address _quizContract) ERC721("MathMint Badge", "MMBADGE") Ownable(msg.sender) {
        quizContract = IQuizContract(_quizContract);
        _baseTokenURI = "ipfs://QmMathMintBadge/";
    }

    function mintBadge(string memory tokenURI) external {
        require(!hasMinted[msg.sender], "NFT already minted");
        require(quizContract.canMintNFT(msg.sender), "Insufficient points to mint");

        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;

        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);

        hasMinted[msg.sender] = true;
        userTokenId[msg.sender] = tokenId;

        uint256 userScore = quizContract.getScore(msg.sender);
        emit NFTMinted(msg.sender, tokenId, userScore, block.timestamp);
    }

    function hasUserMinted(address user) external view returns (bool) {
        return hasMinted[user];
    }

    function getUserTokenId(address user) external view returns (uint256) {
        require(hasMinted[user], "User has not minted");
        return userTokenId[user];
    }

    function setQuizContract(address _quizContract) external onlyOwner {
        quizContract = IQuizContract(_quizContract);
    }

    function setBaseURI(string memory baseURI) external onlyOwner {
        _baseTokenURI = baseURI;
    }

    function totalMinted() external view returns (uint256) {
        return _tokenIdCounter;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}