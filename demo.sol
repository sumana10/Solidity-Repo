// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract demo{

    // string public sentence="helloooooo world";
    uint public age = 10; // is a state variable//declared contract level
    string public name;
    constructor(){

        age = 100;
    }

    function setter() public{

        age = 20;

    }


}