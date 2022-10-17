// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract globalVarSolidity{


    function get() public view returns(uint gasLimit, uint blockNumber, uint blockTimeStamp, address called){

        return(block.gaslimit, block.number, block.timestamp, msg.sender);
    }


}