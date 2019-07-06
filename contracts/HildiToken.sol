pragma solidity ^0.5.8;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract HildiToken is ERC20 {
    string public name = "HildiToken";
    string public symbol = "HT";
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 100000;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
