// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;

contract functionArgument{

uint age = 10; //state variable



function get() public pure returns(uint){//no modification for view//pure for modification

uint age = 15;
return age;

}


}