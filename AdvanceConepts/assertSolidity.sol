// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Assert{


    uint balance;

    function deposit(uint _amount) public{

        balance+=_amount;
        assert(balance<=100);
    }

    //require used in the top of the function that way we are saving our gas
    //require much better option than assert

}