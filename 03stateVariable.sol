// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract stateVar{

//3 type to initialize state variable

//one is by initializing year
 uint public year ;

//second by constructor
 constructor(){
    year = 2003;
 }
 
//3rd by function
 function iniVaR() public{
    year = 2008;
 }
}