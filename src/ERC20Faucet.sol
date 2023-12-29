pragma solidity >= 0.8.20;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";

contract ERC20Faucet is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(DECIMALS));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor (string memory _name, string memory _symbol) public ERC20Detailed(_name, _symbol, DECIMALS) {
    }

    function mint(address to, uint256 value) public returns (bool) {
        require(value <= 100 ether, "dont be greedy");
        _mint(to, value);
        return true;
    }

}