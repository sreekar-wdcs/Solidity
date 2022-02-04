// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Storage {

    uint public data;

    function set(uint value) public  {
        data = value;
    }

    function get() public view returns(uint) {
        return data;
    }
}

//Notes for me

//To modify(set) data first declare a variable then create a function that will allow us to set value.
//In function, create an argument that coordinates with the declared variable.
//when we write 'view' it will not let anyone change the data. It can be written while querying(get) the data.
