// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract functioninsolidity{

    uint public age = 10;


    // function getter() public view returns(uint){


    //     return age;
    // }

    function increment() public {
        age =  age + 1;
    }
    function setter(uint newage) public{

        age = newage;
    }

}