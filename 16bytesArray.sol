// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract byteArray{
    bytes public  a;
    function Array() public  returns(bytes memory){
        a ="kundan";
        return a;
    }

    function pushs()public {
        a.pop();
    }

    function pops()public {    
        a.push("h");
    }


}