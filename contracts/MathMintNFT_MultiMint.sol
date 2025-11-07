// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IQuizContract {
    function getScore(address user) external view returns (uint256);
}

/**
 * @title MathMintNFT - Multi-Badge Collection System
 * @notice Allows users to mint multiple badge NFTs as they earn points
 * @dev Each badge tier has unique metadata with cute character artwork
 */
contract MathMintNFT is ERC721, ERC721URIStorage, Ownable {
    uint256 private _tokenIdCounter;
    IQuizContract public quizContract;

    // Mapping to track how many badges each user has minted
    mapping(address => uint256) public userBadgeCount;
    
    // Mapping to track which badge tiers a user has minted (tier => true/false)
    mapping(address => mapping(uint256 => bool)) public hasMintedTier;
    
    // Mapping to store all token IDs owned by a user
    mapping(address => uint256[]) public userTokenIds;

    // Badge tier metadata URIs (set by owner)
    // Tier 1: Baby Dragon (50 pts)
    // Tier 2: Sparkle Unicorn (100 pts)
    // Tier 3: Space Bunny (200 pts)
    // Tier 4: Galaxy Kitten (500 pts)
    // Tier 5: Dragon King (1000 pts)
    mapping(uint256 => string) public tierMetadataURI;
    
    // Required points for each tier
    mapping(uint256 => uint256) public tierRequiredPoints;

    event BadgeMinted(
        address indexed user, 
        uint256 indexed tokenId, 
        uint256 indexed tier,
        uint256 userScore, 
        uint256 timestamp
    );

    constructor(address _quizContract) ERC721("MathMint Badge", "MMBADGE") Ownable(msg.sender) {
        quizContract = IQuizContract(_quizContract);
        
        // Initialize tier requirements
        tierRequiredPoints[1] = 50;   // Baby Dragon
        tierRequiredPoints[2] = 100;  // Sparkle Unicorn
        tierRequiredPoints[3] = 200;  // Space Bunny
        tierRequiredPoints[4] = 500;  // Galaxy Kitten
        tierRequiredPoints[5] = 1000; // Dragon King
    }

    /**
     * @notice Mint a badge NFT for a specific tier
     * @param tier The badge tier to mint (1-5)
     */
    function mintBadge(uint256 tier) external {
        require(tier >= 1 && tier <= 5, "Invalid tier");
        require(!hasMintedTier[msg.sender][tier], "Already minted this tier");
        
        uint256 userScore = quizContract.getScore(msg.sender);
        require(userScore >= tierRequiredPoints[tier], "Insufficient points for this tier");

        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;

        _safeMint(msg.sender, tokenId);
        
        // Set the metadata URI for this tier
        string memory uri = tierMetadataURI[tier];
        require(bytes(uri).length > 0, "Metadata URI not set for this tier");
        _setTokenURI(tokenId, uri);

        hasMintedTier[msg.sender][tier] = true;
        userBadgeCount[msg.sender]++;
        userTokenIds[msg.sender].push(tokenId);

        emit BadgeMinted(msg.sender, tokenId, tier, userScore, block.timestamp);
    }

    /**
     * @notice Check if user has minted a specific tier
     */
    function hasUserMintedTier(address user, uint256 tier) external view returns (bool) {
        return hasMintedTier[user][tier];
    }

    /**
     * @notice Get all token IDs owned by a user
     */
    function getUserTokenIds(address user) external view returns (uint256[] memory) {
        return userTokenIds[user];
    }

    /**
     * @notice Get the number of badges a user has collected
     */
    function getUserBadgeCount(address user) external view returns (uint256) {
        return userBadgeCount[user];
    }

    /**
     * @notice Check which tiers a user can mint based on their current points
     */
    function getAvailableTiers(address user) external view returns (bool[5] memory available) {
        uint256 userScore = quizContract.getScore(user);
        
        for (uint256 i = 1; i <= 5; i++) {
            available[i-1] = (userScore >= tierRequiredPoints[i] && !hasMintedTier[user][i]);
        }
        
        return available;
    }

    /**
     * @notice Set metadata URI for a specific tier (only owner)
     */
    function setTierMetadataURI(uint256 tier, string memory uri) external onlyOwner {
        require(tier >= 1 && tier <= 5, "Invalid tier");
        tierMetadataURI[tier] = uri;
    }

    /**
     * @notice Set required points for a tier (only owner)
     */
    function setTierRequiredPoints(uint256 tier, uint256 points) external onlyOwner {
        require(tier >= 1 && tier <= 5, "Invalid tier");
        tierRequiredPoints[tier] = points;
    }

    /**
     * @notice Set quiz contract address (only owner)
     */
    function setQuizContract(address _quizContract) external onlyOwner {
        quizContract = IQuizContract(_quizContract);
    }

    /**
     * @notice Get total number of badges minted across all users
     */
    function totalMinted() external view returns (uint256) {
        return _tokenIdCounter;
    }

    // Required overrides for ERC721URIStorage
    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
