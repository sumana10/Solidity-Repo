//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract fallbackSolidity{

    function payEther() public payable{

    }

    function check_balance() view public returns(uint){

        return address(this).balance;
    }
    //can't called inside contract
    fallback() external payable{
        payable(msg.sender).transfer(msg.value);
    }
    //make sure it'll transfer to this contract address
}