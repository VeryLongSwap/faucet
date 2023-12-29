// SPDX-License-Identifier: MIT 
pragma solidity >= 0.8.20;

import "./ERC20Faucet.sol";

contract USDC is ERC20Faucet {
    constructor() ERC20Faucet("USDC faucet token", "USDC") {
    }
}