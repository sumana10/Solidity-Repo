// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract Parent{


    function setter(uint a, uint b)public pure returns(uint){

        uint sum = 0;

        sum =  a + b;

        return sum;
    }

    function setter(uint a, uint b, uint  c)public pure returns(uint){

        uint sum = 0;

        sum =  a + b + c;

        return sum;
    }

    function setter(string memory a, string memory b)public pure returns(string memory){

        b = "";

        return a;
    }

}

//function with same name with different signature