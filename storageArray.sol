// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract storageArray{


    string[] public vehicles=["car", "bus", "train"];

    function mem() public view{

        string[] memory v1 = vehicles;
        v1[0] = "ship";
    }
    function sto() public{

        string[] storage v1 = vehicles;
        v1[0] = "ship";
    }

}