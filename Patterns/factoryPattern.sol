// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ComputerCompany{

    Desktop[] public desktop;

    
    //Whenever there is an abject, there is an dynamic array associated with it to store the instances
    //keeping track every object
    
    function create() public{

        desktop.push(new Desktop());

    }
}

contract Desktop{

}