// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//if else and loops are function level not contract level
contract Loops{

function Forloops()public pure returns(uint) {
    uint i;
    uint  sum=0;
    for (i = 0; i < 5; i++){
    
    if(i==3){
        continue;
    }
    sum=sum+i;
    }
    return sum;
    }
function whileloop()public  pure returns(uint){
    uint i=0;
    uint sum=0;
    while (i < 5) 
    {
        sum += i;
        i++;
        if(i==3){
            break;
        }
    }
    return sum;
    
}

function DOwhileloop()public pure returns(uint){
    uint i =0;
    uint sum =0;
    do {
        
        sum+=i;
        i++;
        
    } 
    while (i<5);
    return sum;
}
   
}
