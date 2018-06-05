pragma solidity ^0.4.21;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract HoseaCoin is StandardToken {

  string public name = "HoseaCoin";

  string public symbol = "HSC";
  // 小数点后18个0
  uint public decimals = 18;
  // 100万
  uint public INITIAL_SUPPLY = 1000000 * (10 ** decimals);

  function HamburgerCoin() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
