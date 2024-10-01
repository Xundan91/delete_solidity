// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray{
    uint[] public arr = [1,2,4,5,7];

    function ChangeArray()public  {

        //get array
        uint temp = arr[1];
        //modify array
        arr[2] = 9;
        //delete array
        delete arr[4];

    }
    function returnArray()public view returns(uint[] memory) {
        return arr;
    }
        


}