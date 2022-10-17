// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract ifelseSolidity{

    function checkEvenOdd(int num) public pure returns(string memory){
    
        string memory str;

        if(num < 0){
        
           str = "Please enter a positive number";

        }else if( num > 0 && num % 2 == 0){
        
            str = "Number is even";

        
        }else if( num > 0 && num % 2 != 0){
        
           str = "Number is odd";
        
        }else{

            str = "Number is zero";
        }

        return str;
    
    }

}