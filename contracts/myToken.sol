// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Requirements
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

// Import the standard ERC-20 contract from OpenZeppelin library
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MintBurnToken is ERC20 {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        owner = msg.sender;
        _mint(msg.sender, initialSupply);
    }

    // Function to allow any user to burn their own tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Function to allow the owner to mint new tokens
    function mint(uint256 amount) external onlyOwner {
        _mint(msg.sender, amount);
    }
}