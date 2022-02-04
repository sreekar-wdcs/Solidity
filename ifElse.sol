//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IfElse {
    uint public KohliScore = 0;
    bool public KohliHitsHundred = false;

    function updateScore() public {
           KohliScore++;
    }

    function Hundred() public {
       if(KohliScore >= 100) {
            KohliHitsHundred = true;
       }
    }
}
