pragma solidity >= 0.8.20;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract ERC20Faucet is ERC20, ERC20Burnable {

    constructor (string memory _name, string memory _symbol) ERC20(_name, _symbol) {
    }

    function mint(address to, uint256 value) public returns (bool) {
        require(value <= 100 ether, "dont be greedy");
        _mint(to, value);
        return true;
    }

}