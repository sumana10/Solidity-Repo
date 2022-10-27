//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Fibonacci{

    function fib(uint n) external pure returns(uint){

        if(n == 0 || n == 1)
        return n;

        uint first = 0;
        uint second = 1;
        uint nth = 1;

        for(uint i = 2; i<=n; i++){

            nth = first + second;
            first = second;
            second = nth;
        }

        return nth;


    }
}