# hosea-coin-ethereum
```
npm install -g truffle

mkdir hosea-coin; cd hosea-coin;

truffle init
# 跳过询问阶段 直接创建json
npm init -y

npm install -E openzeppelin-solidity

truffle create contract HoseaCoin


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



// ------------------------------------------
var hsc = artifacts.require("./HoseaCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(hsc);
};

// ------------------------------------------

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    }
  }
};




or

# 模拟测试网络
truffle develop
# 编译
truffle compile
# 部署 migrate 别名 deploy
truffle deploy

```
