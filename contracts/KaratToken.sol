// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract KaratToken is ERC20, ERC20Burnable {

    uint256 public TOTAL_SUPPLY = 2_000_000_000e18; // Two Billion Karat Token

    constructor(address to) ERC20("Karat Token", "KAT") {
        _mint(to, TOTAL_SUPPLY);
    }
}
