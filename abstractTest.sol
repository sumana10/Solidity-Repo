//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

abstract contract Calculator {

function sum(int a, int b) public view virtual returns(int) ;
  
}

contract Test is Calculator{

function sum(int a, int b)public pure override returns(int) {

return a + b;

}
  

}
//Create Test contract
