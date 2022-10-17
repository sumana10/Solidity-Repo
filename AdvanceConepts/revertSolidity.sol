// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Revert{


    uint balance = 10;

    function callMe(uint _amount) public view returns(uint){

        // require(balance>_amount,"Blance is less than the amount");

        // return balance;

        if(balance>_amount){

            return balance;

        }else{

            revert("Blance is less than the amount");
        }
    }

}