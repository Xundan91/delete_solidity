// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract constructor1{
    uint public age;
    address public owner;

    constructor(uint _age , address _owner){
        age =_age;
        owner = _owner;
        _owner = msg.sender;
        

    }
}