//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Modifier {

address public owner;

constructor(){

owner = msg.sender;

}

modifier onlyOwner(){
 require(owner == msg.sender, "You are not owner");
 _;
}

modifier onlyEven(uint256 val){
 require(val%2 == 0, "Value is odd");
 _;
}

 function check(uint256 val) public view onlyOwner onlyEven(val) returns(uint256){
 
    return val;
 }


}
