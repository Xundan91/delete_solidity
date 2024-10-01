// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnStruct{

    struct Universe{
        string Name;
        uint Uid;
        string college_name;
        string department;
        bool feesPaid;
    }

    Universe public earth;
    Universe public venus;
    Universe public mars;
    Universe[] public BlackHole;

    function setEarth() public {
        earth.Name = "alpha";
        earth.Uid = 123;
        earth.college_name = "Uniox";
        earth.department = "Cse";
        earth.feesPaid = true;
    }
    
    function setVenus() public {
        venus = Universe("beta",124 , "uinibox", "late", false);
    }
    function setMars() public {
        mars = Universe({Name:"beta",Uid:124 , college_name:"uinibox", department:"late", feesPaid:false});
    }
    function SetBlackHole() public {
        BlackHole.push(earth);
        BlackHole.push(mars);
        BlackHole.push(venus);
    }

}
///storage keyword use to Map the address of Value(reference type)
///Memory keyword use to Map the Value(Value type type)

