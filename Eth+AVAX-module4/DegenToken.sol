// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferTokens(address _receiver, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        approve(msg.sender, amount);
        transferFrom(msg.sender, _receiver, amount);
    }

    function checkBalance() external view returns (uint) {
        return balanceOf(msg.sender);
    }

    function burnTokens(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

   
    function redeemPrize(uint256 prizeCost) external {
        require(balanceOf(msg.sender) >= prizeCost, "Insufficient balance for prize");
        
        
        _burn(msg.sender, prizeCost);
        
        
        emit PrizeRedeemed(msg.sender, prizeCost);
        
        console.log("Prize redeemed by address:", msg.sender, "Prize cost:", prizeCost);
    }

   
    event PrizeRedeemed(address indexed user, uint256 prizeCost);
}

