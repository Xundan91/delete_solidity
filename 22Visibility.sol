// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Visibility{
    struct power{
        string name;
        uint uid;
        uint seats;
    }
    mapping(string=>power) public Bjp;
    function valuesAdd(string memory _head ,string memory _name, uint _uid ,uint _seats) public  {
        // Bjp['adani'] = power('kundan',289,300);
        Bjp[_head] = power(_name,_uid,_seats);
    }
     function viewMAppingBJP(string memory _head)public view returns(string memory , uint  ,uint ){
        power memory p = Bjp[_head];
        return( p.name ,p.uid , p.seats);
    }
   

}