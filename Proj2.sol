// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables of the token
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // Mapping from address to balance
    mapping(address => uint256) public balanceOf;

    // Constructor to initialize the token details
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply; // Initial supply assigned to contract deployer
    }

    // Mint function to create new tokens
    function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;
        balanceOf[_to] += _amount;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint256 _amount) public {
        require(balanceOf[_from] >= _amount, "Insufficient balance to burn");

        totalSupply -= _amount;
        balanceOf[_from] -= _amount;
    }
}
