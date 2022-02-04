// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Coin {
    address public minter;
     event sent(address to, address from, uint amount);

    mapping(address => uint) public balances;

    constructor() {
        minter = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == minter);
        balances[to] += amount;
    }

    function send(address to, address from, uint amount) external {
        require(balances[from] >= amount, "Insufficient Funds");
        balances[to] += amount;
        balances[from] -= amount;
         emit sent( to, from,  amount);
    }
}
