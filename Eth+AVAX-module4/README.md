# DegenToken README

## Overview
This repository contains the smart contract code for the **DegenToken**. It is an ERC-20 token built on the Ethereum blockchain, with additional features like burning tokens and transferring tokens on behalf of the owner. The token follows the MIT license.

## Prerequisites
Before deploying or using this contract, ensure that you have the following:

1. An Ethereum development environment (Injected Provider).
2. Access to the OpenZeppelin smart contract library.
3. Basic understanding of Solidity and ERC-20 tokens.

## Getting Started
To use the **DegenToken** smart contract, follow these steps:

1. Deploy the contract to the Ethereum network using your preferred development environment.
2. Make sure to have sufficient Ether to cover the deployment costs.
3. After deployment, the contract owner will have the ability to mint new tokens using the `mint` function.

## Smart Contract Details
The **DegenToken** contract inherits from the following contracts:
- `ERC20`: This contract implements the ERC-20 standard functions and provides basic token functionalities.
- `Ownable`: This contract provides an owner-based access control mechanism.
- `ERC20Burnable`: This contract extends the ERC-20 token by adding the ability to burn tokens.

### Contract Functions
1. `constructor()`: The constructor initializes the token with the name "Degen" and the symbol "DGN".

2. `mint(address to, uint256 amount) public onlyOwner`: Allows the contract owner to mint new tokens and assign them to the specified address.

3. `transferTokens(address _receiver, uint256 amount) external`: Allows users to transfer tokens to another address. The sender must have sufficient tokens and approve the contract to spend the tokens on their behalf.

4. `checkBalance() external view returns(uint)`: Allows users to check their token balance.

5. `burnTokens(uint256 amount) external`: Allows users to burn a specific amount of their own tokens, effectively reducing the total supply.

## License
This smart contract is licensed under the MIT License. For more details, see the `LICENSE` file.

