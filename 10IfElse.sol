// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IfElse1{
    uint age;

    function agechange(uint _age) public {
        age = _age;
    }

    function conditions() public view returns(bool) {
        if (age>10){
            bool a = true;
            return a;
            
        } else {
            bool b = false;
            return b;
            
        }

    }
}