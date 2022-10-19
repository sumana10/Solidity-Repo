// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;


contract dynamicsizeArray{

    uint[] public arr;

    function pushElement(uint item) public{

        arr.push(item);//add element in last
    }

    function popElement() public{

        arr.pop();//removing last element
    }

    function len() public view returns(uint){

        return arr.length;//length of the array
    }

//     uint256[] public id;

//     function Insert(uint256 num) public {
//         id.push(num);
//     }

//     function get(uint256 num) public view returns (uint256) {
//         for (uint i = 0; i < id.length; i++) {
//         if (num == id[i]) {
//                 return i;
//             }
//         }
//     }

//     function getAll() public view returns (uint256[] memory) {
//         return id;
//     }

//     function length() public view returns (uint256) {
//         return id.length;
// }

}