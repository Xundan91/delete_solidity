// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payable1{
    

    
    function pay() payable  public{

    } 
    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}
contract Payable2 {
    address payable public pay2;

    // Constructor to set the payable address to the address that deploys the contract
    constructor() {
        pay2 = payable(msg.sender);
    }

    // Function to check the balance of the contract
    function balancevar() public view returns (uint) {
        return address(this).balance;
    }

    // Function to transfer Ether from the contract to the 'pay2' address
    function transferToPay2() public {
        require(address(this).balance > 0, "Contract balance is zero");
        pay2.transfer(address(this).balance);
    }

    // Payable function to receive Ether
    function deposit() public payable {
        // Function body can be empty as it's just for receiving Ether
    }

    // Fallback function to receive Ether
    receive() external payable {}
}