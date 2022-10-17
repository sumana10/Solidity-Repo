// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

interface Parent{


    function setter(string memory _str) external;

}
contract Child is Parent{

    uint public x;
    function setter(string memory _str) public override{

    }

}

//restricted form of abstract contract