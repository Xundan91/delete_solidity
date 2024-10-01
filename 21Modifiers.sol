// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mmodifier{
    address owner;

    constructor(){
        owner= msg.sender;
    }

    modifier onlyOwner(){
        require(owner ==msg.sender,"HE is not the owner");
        _;
    }

    function changeOwner(address _owner) public onlyOwner{
        owner=_owner;
    }
    
    function NewOwner()public view returns(address){
        return owner;
    }

}