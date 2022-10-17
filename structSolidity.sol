// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

struct student{
    uint roll;
    string name;
}
//if it's outside accessible by other contract as well
contract structSolidity{

student public s1;

uint public age;


constructor(uint _roll, string memory _name){

    s1.roll = _roll;
    s1.name = _name;

}

function change(uint _roll, string memory _name) public{
    student memory newStudent = student({
        roll: _roll,
        name: _name
    });

    s1 = newStudent;
}

}