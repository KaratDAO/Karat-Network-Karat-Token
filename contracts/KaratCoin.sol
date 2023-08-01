// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KaratCoin is ERC20, ERC20Burnable, Ownable {

    uint256 public MAX_SUPPLY = 2_000_000_000e18; // 2B KaratCoin


    constructor(address account, uint256 initialSupply) ERC20("Karat Coin", "KAT") {
        mint(account, initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner {    
        require(amount + totalSupply() <= MAX_SUPPLY, "Karat Coin: Over Supply Limit");
        _mint(to, amount);
    }
}