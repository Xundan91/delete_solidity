// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ternaryOperator{
     function check(uint _number ) public pure returns(string memory){
         string memory str = _number>100 ? "greateter is greater than 100 " : "less than 100";
         return str;

     }
}