// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract stringMan{
    string public str;
    //string directly store in memory of evm , ram
    function strin(string memory _str) public  returns (string memory){
        str = _str;
        return str;
    }
}