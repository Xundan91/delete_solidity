// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct info_list{
    string name;
    string adders;
    uint amount;
    string gender;
}

contract AdvanceMapping{
    address owner ;
// info_list public first;
    mapping(address =>info_list) public ngo;

    function setinfo(string memory _name,string memory _adders, uint _amount,string memory _gender)public {
        ngo[msg.sender] = info_list(_name , _adders, ngo[msg.sender].amount+_amount , _gender); 
        // uint amount = ngo[msg.sender].amount+_amount;
    }

    constructor(){
        owner = msg.sender;
    }


    modifier onlyadd(){
        require(msg.sender == owner, "you can delete value");
        _;
    }

function DeleteValue(address _address) public onlyadd {
        delete ngo[_address];
    }



}