// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract requireSolidity{

    address public owner;

    constructor(){

        owner = msg.sender;
    }

    modifier onlyOwner(){

        require(owner == msg.sender, "You are not owner");
        _; //replace by the body of the function that we are calling in this case return statement
    }

    function get10() public view onlyOwner  returns(uint){

        // require(owner == msg.sender, "You are not owner");
        return 10;
    }
     function get20() public view onlyOwner returns(uint){

        // require(owner == msg.sender, "You are not owner");
        return 20;
    }
     function get30() public view onlyOwner returns(uint){

        // require(owner == msg.sender, "You are not owner");
        return 30;
    }
}

//modifier closely related to rquire statement
//when we have multiple require statement in our code we can replace it buy modifier