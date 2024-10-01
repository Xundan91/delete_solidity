// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariable{
    
    uint public number0 ;
    bool public number1 ;
    string public number2 ;
    address public number3 ;

    function mathInputs(uint _a , bool _b , string memory _c)public  returns(uint , bool , string memory) {
        number0= _a;
        number1= _b;
        number2 =_c;
        number3 = msg.sender;   
        return (_a , _b ,_c );
        
    }
}