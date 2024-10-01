// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract events{
    event balance(address location , string name, uint balance);

    function setValue(uint _balance) public{
        emit balance(msg.sender, "balance of addresss by using events ", _balance);
    }
}
contract chatapp{
    event message(address sender , address reciver , string message);

    function sendMessage(address _reciver , string memory _message)public{
        emit message(msg.sender, _reciver, _message);
    }
}