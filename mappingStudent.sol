// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract mappingStudent{ 

    mapping(uint=>string) public student;

    function input(uint roll, string memory name) public{
        student[roll] = name;
    }

}