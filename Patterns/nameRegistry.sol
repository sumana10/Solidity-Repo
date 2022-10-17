// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//contol other contract
contract Company{

    mapping(string => address) public register;

    function contractCall() public{

        register["CEO"] = address(new CEO());
        register["HR"] = address(new HR());
        register["Manager"] = address(new Manager());

        register["CEO"].A();
        
    }

}

contract CEO{

    A();

}

contract HR{


}

contract Manager{


}