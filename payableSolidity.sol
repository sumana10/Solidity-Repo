//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;


contract payEther{


    address payable user = payable(0x7B8b934ed64B4De95625d7073A276C524a3b83fA);
    function pay() public payable{

    }

    function check_balance() public view returns(uint){
        return address(this).balance;
    }

    function payEtherTo() public{

        user.transfer(10 ether);
    }
}