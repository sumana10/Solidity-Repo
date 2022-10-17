//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract eventSolidity{

    string public str;

    event register(address manager, string char);
    
    //manager deploying the contract
    //manager hold the address

    function setter(string memory _str) public{

        str = _str;
        emit register(msg.sender, str);
    }

    //event is emitted when someone called the setter function
}