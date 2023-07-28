# Integrating Local Hardhat Network with Remix IDE

This project is an application of connecting Remix IDE with Local Hardhat Network and perform certains operations in multi user system.

## Features

This project has following features/applications:

- connecting Local Hardhat Network
- View account balance
- Mint Tokens
- Burn Tokens
- Transfer Token (using ERC20)

## Description
Project mainly concerns with burning and minting the tokens. Below is a great detailed explanation
1. Here constructor is used to add initialSupply and thus creates the token
```solidity
constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        owner = msg.sender;
        _mint(msg.sender, initialSupply);
    }
```

2. Burn function is used to decrease the tokens
```
 function burn(uint256 amount) external {
     _burn(msg.sender, amount);
 }
```

3. Mint function is mainly used to increase tokens
```
 function mint(uint256 amount) external onlyOwner {
     _mint(msg.sender, amount);
 }
```

## Getting Started
### Pre-requisites
- `npx` should be installed

### Setup
- Clone this code
- Mostly solidity code is required. So copy that and paste in remix IDE
- In root directory, run `npx hardhat node` 
- Now in Remix IDE compile the code
- Go to deploy section and choose `Dev Hardhat Provider` on top left
- Now interact with the code using given functions in panel

## Authors
Khushi Kumari

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
