// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//dataType are of two type ---> Value and references

//Value -> uint , int , bool , string , address ,  address payable, enum ,byte, function

//referenceType =>> array , maps , struct , tuple
contract dataType{
   //by remove public it will not show buttons in deployed 
 uint public a =10 ;
 int32 public b=-11;
 bool public c=true;
 address public d= msg.sender;
 string public e = "kundan";
 bytes32 public f=bytes32(uint256(uint160(msg.sender)));

 function A()public view returns(uint){
    return a;
 }
 function B()public view returns(int){
    return b;
 }
 function C()public view returns(bool){
    return c;
 }
 function D()public view returns(address ){
    return d;
 }
  function E()public view returns(string memory){
    return e;
 }
 function F()public view returns(bytes32){
    return f;
 }


}