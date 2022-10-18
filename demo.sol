// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract demo{

    // string public sentence="helloooooo world";
    uint public age = 10; // is a state variable//declared contract level
    string public name;
     uint256 public e = 5;

    constructor(){

        age = 100;
    }
    function increment() public{
        age=age+1;
    }
    function setter() public{

        age = 20;

    }

   function variableE() public returns (uint256) {
        e = e + 1;
        return e;
    }

}