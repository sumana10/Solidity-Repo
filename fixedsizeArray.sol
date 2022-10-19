// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract fixedsizeArray{

    // uint[3] public arr;
    uint[3] public arr = [10, 20, 30];

    function insert(uint index, uint element) public{

        arr[index] = element;
    }

    function len() public view returns(uint){
        return arr.length;
    }

//   function reverseArray(uint[] memory arr, uint length) public pure returns(uint[] memory){

//       uint temp;
//       for(uint i = 0; i<length/2; i++){

//           temp = arr[i];
//           arr[i] = arr[length - i - 1];
//           arr[length - i - 1] = temp;
//       }
//       return arr;
//   }

}