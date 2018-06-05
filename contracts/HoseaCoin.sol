pragma solidity ^0.4.21;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract HoseaCoin is StandardToken {

    string public name = "HoseaCoin";

    string public symbol = "HSC";
    // 小数点后18个0
    uint public decimals = 18;

    constructor() public {
        // 100万
        totalSupply_ = 1000000 * (10 ** decimals);
        balances[msg.sender] = totalSupply_;
    }
}
