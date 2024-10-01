
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DecFunction{
    uint age = 20;
    //when pure function have some computation like addition or subtraction
    function addage(uint _a , uint _b) public pure returns(uint){
        return _a+_b;

    }
    //public function without return just do don't return
    function addpublic() public{
        age+=1;
    }
    //view with return can only view the return type
    function addPublicView()public view returns(uint) {
        return  age;
        
    }
}