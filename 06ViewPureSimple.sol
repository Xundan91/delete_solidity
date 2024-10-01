//view->> read only 
//pure ->> no read no write .
//simple ->> change function

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewPureSimple{
    uint public age =10;

    function FunView() public view returns(uint) {
        return age;
    }

    function FunPure(uint _age) public pure returns(uint){
        return _age;
    }

    function FunSimple() public{
        age+=10;
        

    }

}