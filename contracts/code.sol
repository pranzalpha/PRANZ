// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title WheelFi - A simple decentralized spin & win contract
/// @author 
/// @notice This is a beginner-friendly example for learning purposes only
/// @dev DO NOT use in production (insecure randomness)

contract WheelFi {
    address public owner;
    uint256 public minBet = 0.01 ether;
    uint256 public winMultiplier = 2;

    event SpinResult(address indexed player, uint256 bet, bool win, uint256 reward);

    constructor() {
        owner = msg.sender;
    }

    /// @notice Spin the wheel by sending ETH
    function spin() external payable {
        require(msg.value >= minBet, "Bet too low");

        // Very simple pseudo-randomness (not secure!)
        uint256 random = uint256(
            keccak256(abi.encodePacked(block.timestamp, msg.sender, block.prevrandao))
        ) % 100;

        bool win = random < 50; // 50% chance to win
        uint256 reward = 0;

        if (win) {
            reward = msg.value * winMultiplier;
            require(address(this).balance >= reward, "Not enough balance in contract");
            payable(msg.sender).transfer(reward);
        }

        emit SpinResult(msg.sender, msg.value, win, reward);
    }

    /// @notice Fund the contract with ETH (by owner)
    function fundContract() external payable onlyOwner {}

    /// @notice Withdraw contract balance (by owner)
    function withdraw(uint256 amount) external onlyOwner {
        require(address(this).balance >= amount, "Insufficient balance");
        payable(owner).transfer(amount);
    }

    /// @notice Change minimum bet
    function setMinBet(uint256 _minBet) external onlyOwner {
        minBet = _minBet;
    }

    /// @notice Change win multiplier
    function setWinMultiplier(uint256 _multiplier) external onlyOwner {
        require(_multiplier > 0, "Invalid multiplier");
        winMultiplier = _multiplier;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    /// @notice Get current contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
