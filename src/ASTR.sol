// SPDX-License-Identifier: MIT 
pragma solidity >= 0.8.20;

import "./ERC20Faucet.sol";

contract ASTR is ERC20Faucet {
    constructor() ERC20Faucet("ASTR Faucet Token", "ASTR") {
    }
}