// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mappingLearn{

mapping (uint => string) public emp;

function setvalue() public {
    emp[1] = "kundan";
    emp[10] = "kundan1";
    emp[11] = "kundan2";
    emp[13] = "kundan3";
}

}