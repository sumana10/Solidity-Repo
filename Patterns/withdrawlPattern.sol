// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract withdrawlPattern{


    address payable richest;
    mapping(address => uint)investors;

    uint max;

    constructor() payable{

        richest = payable(msg.sender);
        max = msg.value;
        richest.transfer(msg.value);

    }

    function sendEther() payable public{

        require(msg.value>max, "You are not the richest");
        richest = payable(msg.sender);
        max = msg.value;
        // richest.transfer(msg.value);

        investors[msg.sender] = msg.value;
    }

    function withdraw() public{

        uint amount = investors[msg.sender];
        investors[msg.sender] = 0;
        msg.sender.transfer(amount);

    }


}
//separate function for withdraw and send whenever there is more than one contract
contract demo{

    function A() public pure{
        uint a = 5;
    }

    sendEther();
    withdraw();

    fallback() payable external{
        revert();
    }


}