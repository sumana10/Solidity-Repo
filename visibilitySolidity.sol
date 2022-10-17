// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract Parent{

    function f1()public pure returns(uint){
        
        return 1;
    }
    function f2()private pure returns(uint){
        return 2;
    }
    function f3()external pure returns(uint){
        return 3;
    }
    function f4()internal pure returns(uint){
        return 4;
    }

}

contract Child is Parent{ //Derived Contract

uint public x1 = f1();


}

contract demo{
    Parent parent = new Parent();
    uint public y = parent.f1();
}

//function with same name with different signature