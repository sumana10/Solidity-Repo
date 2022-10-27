//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Escrow {

    address public payer;
    address payable public payee;
    address public thirdParty;
    uint256 public amount;

    constructor(address _payer, address payable _payee, uint256 _amount){

        payer = _payer;
        payee = _payee;
        amount = _amount;
        thirdParty = msg.sender;

    }

    function deposit() public payable{
        require(msg.sender == payer, "Sender must be a prayer");
        require(address(this).balance <= amount, "Can't send more than escrow amount");
    }

    function release() public{

        require(
            address(this).balance == amount,
            "cannot release funds before full amount is sent"
        );
        require(msg.sender == thirdParty, "only thirdParty can release funds");
         payee.transfer(amount);

    }

     function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }


}
//Contract is one address pay another address certain amount