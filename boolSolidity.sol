// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract boolSolidity{

    bool public num;

    function set(bool newnum) public{
    
     num = newnum;
    
    }

    function get() public view returns(bool){
    
    return num;
    
    }

}