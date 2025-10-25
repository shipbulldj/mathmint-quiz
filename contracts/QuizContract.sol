// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract QuizContract is Ownable, ReentrancyGuard {
    event ScoreUpdated(address indexed user, uint256 newScore, uint256 timestamp);
    event QuizCompleted(address indexed user, uint256 pointsEarned, uint256 totalScore);

    mapping(address => uint256) public userScores;
    mapping(address => uint256) public quizzesCompleted;
    
    address[] public leaderboard;
    mapping(address => bool) public isInLeaderboard;

    constructor() Ownable(msg.sender) {}

    function updateScore(address user, uint256 points) external nonReentrant {
        require(user != address(0), "Invalid user address");
        require(points > 0, "Points must be greater than 0");

        userScores[user] += points;
        quizzesCompleted[user] += 1;
        _updateLeaderboard(user);

        emit ScoreUpdated(user, userScores[user], block.timestamp);
        emit QuizCompleted(user, points, userScores[user]);
    }

    function getScore(address user) external view returns (uint256) {
        return userScores[user];
    }

    function canMintNFT(address user) external view returns (bool) {
        return userScores[user] >= 50;
    }

    function getLeaderboard() external view returns (address[] memory, uint256[] memory) {
        uint256 length = leaderboard.length > 5 ? 5 : leaderboard.length;
        address[] memory topAddresses = new address[](length);
        uint256[] memory topScores = new uint256[](length);

        for (uint256 i = 0; i < length; i++) {
            topAddresses[i] = leaderboard[i];
            topScores[i] = userScores[leaderboard[i]];
        }
        return (topAddresses, topScores);
    }

    function _updateLeaderboard(address user) internal {
        if (!isInLeaderboard[user]) {
            leaderboard.push(user);
            isInLeaderboard[user] = true;
        }

        for (uint256 i = 0; i < leaderboard.length; i++) {
            for (uint256 j = i + 1; j < leaderboard.length; j++) {
                if (userScores[leaderboard[i]] < userScores[leaderboard[j]]) {
                    address temp = leaderboard[i];
                    leaderboard[i] = leaderboard[j];
                    leaderboard[j] = temp;
                }
            }
        }
    }

    function getTotalPlayers() external view returns (uint256) {
        return leaderboard.length;
    }
}