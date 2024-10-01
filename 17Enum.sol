// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ENUMS{

    enum States{
        shipped,
        deployed,
        pending,
        canceled

    }
    States public variablee;

   function getstatus() public view returns(States){
    return variablee;
   }
   function Setstatus(States _status) public{
    variablee = _status;
   }
   
}