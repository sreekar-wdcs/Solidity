// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract hashIt {

function hash(string memory _text, uint _num) public pure returns(bytes32) {
    return keccak256(abi.encode(_text, _num));
}

}
