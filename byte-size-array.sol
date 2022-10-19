
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract ByteSizeArray {

bytes1 public b1 = "a";

function setBytesArray (bytes1 b2) public {

    b1 = b2;

}

function getByteValue() public view returns(bytes1){

    return b1;

}
}