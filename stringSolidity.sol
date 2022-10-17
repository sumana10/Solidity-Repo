// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract stringSolidity{


    string public message="Yes solidity is fun";

    function returnStateVariable() public view returns(string memory){

        return message;

    }
    function returnLocalVariable() public pure returns(string memory){

    string memory newMsg = "Yes solidity is exciting";
    return newMsg;

}


}