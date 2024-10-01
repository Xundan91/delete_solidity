// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierAccess{

    address public owner;
     constructor(){
        owner = msg.sender;
     }
     //automatically return the address of owner 

///a way to add extra behavior to functions, such as enforcing access control,
// validating inputs, or performing other checks before a function executes
    modifier onlyAdd(){
        require(msg.sender==owner, "Not owner"); ///it check whether the owner is correct or not
        _;
    }
    function setowner(address _owner) public onlyAdd {
        //Validating user input= require function
        require(msg.sender!=address(0), "invalid address");
        // if the above code is correct then this can change the address
        owner = _owner;
    }
    

}