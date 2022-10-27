// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract dynamicByteArray{

    bytes public str = "abc";

    function pushElements() public {
        
        str.push('d');
    }

    function getElements(uint index) public view returns(bytes1){

        return str[index];
    }

    function getLength() public view returns(uint){

        return str.length;
    }
}