// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariable{

    address public deployed_address = msg.sender;
    uint public time = block.timestamp;
    uint public gas = tx.gasprice;
    address public coin = block.coinbase;  
}