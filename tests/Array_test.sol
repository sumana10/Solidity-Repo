// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 
import "remix_tests.sol"; 
// this import is automatically injected by Remix. 
import "4_Array.sol";

contract TestArray {

Array public array;

// Run before every test function
function beforeEach() public {
    array = new Array();
}

// Test that it stores a value correctly
function testItStoresAValue() public {
    uint value = 5;
    array.storeValue(value);
    uint result = array.getValue(0);
    Assert.equal(result, value, "It should store the correct value");
}

// Test that it gets the correct number of values
function testItGetsCorrectNumberOfValues() public {
    array.storeValue(99);
    uint newSize = array.getNumberOfValues();
    Assert.equal(newSize, 1, "It should increase the size");
}

// Test that it stores multiple values correctly
function testItStoresMultipleValues() public {
    for (uint8 i = 0; i < 10; i++) {
        uint value = i;
        array.storeValue(value);
        uint result = array.getValue(i);
        Assert.equal(result, value, "It should store the correct value for multiple values");
    }
}
}