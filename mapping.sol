pragma solidity ^0.8.0;

//Sample contract 
contract SampleContract {
    
    //state variable
    //added a map that takes an address "key" and a number "value"
    //the name of the map is called myMap  
    mapping (address => uint) public myMap;

    mapping(address => mapping (address => uint)) public allowances;

    
    //this function sets a value to a specific address
    //the data is saved to myMap on the block chain 
    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    function allow(address owner, address spender, uint amount) public {
        allowances[owner][spender] = amount;
    }

    
    //this function gets a value from a specific address in the map
    //If a value was not set the function will return the default value of 0.
    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

}
