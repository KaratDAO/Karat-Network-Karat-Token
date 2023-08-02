// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KaratCoin is ERC20, ERC20Burnable, Ownable {

    uint256 public TOTAL_SUPPLY = 2_000_000_000e18; // Two Billion Karat Coin


    constructor(address to) ERC20("Karat Coin", "KAT") {
        mint(to, TOTAL_SUPPLY);
    }

    function mint(address to, uint256 amount) public onlyOwner {    
        _mint(to, amount);
    }
}
