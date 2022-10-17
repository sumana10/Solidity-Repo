// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract amazon{

    struct Product{

        string title;
        string desc;
        address payable seller;
        uint productId;z
        address buyer;
        uint price;
        bool delivered;

    }

    Product[] public products;
    uint counter = 1;
    address payable public manager;
    bool destroyed = false;

    modifier isNotDestroyed{
        require(!destroyed, "Contract does not exist");
        _;

    }

    constructor(){

        manager = payable(msg.sender);
        //the person/address who deploy the contract
    }
    event registered(string title, uint productId, address seller);
    event bought(uint productId, address buyer);
    event delivered(uint productId);


    function registerProduct(string memory _title, string memory _desc, uint _price) public isNotDestroyed{

        require(_price > 0, "Price should be greater than zero");
        Product memory tempProduct;

        tempProduct.title = _title;
        tempProduct.desc = _desc;
        tempProduct.price = _price * 10**18;
        tempProduct.seller = payable(msg.sender);
        tempProduct.productId = counter;

        products.push(tempProduct);
        counter++;

        emit registered(_title, tempProduct.productId, msg.sender);

    }

    function buy(uint _productId) payable public isNotDestroyed{

        require(products[_productId - 1].price == msg.value, "Enter the correct price");
        require(products[_productId - 1].seller != msg.sender, "Seller canot be buyer");
        products[_productId - 1].buyer = msg.sender;

        emit bought(_productId, msg.sender);
    }

    function delivery(uint _productId) public isNotDestroyed{

        require(products[_productId - 1].buyer == msg.sender, "Only buyer can confirm this");
        products[_productId - 1].delivered =  true;
        products[_productId - 1].seller.transfer(products[_productId - 1].price);
        emit delivered(_productId);
    }

    // function destroy() public{

    //     require(msg.sender == manager, "Only manager can call this");
    //     selfdestruct(manager);
    //     //manager can call the function to destroy the smart contract and get all the ether of smart contract
    // }

    function destroy() public isNotDestroyed{

        require(msg.sender == manager, "Only manager can call this");
        manager.transfer(address(this).balance);
        destroyed = true;
        //manager can call the function to destroy the smart contract and get all the ether of smart contract
    }
    // if none of the function works then contract call this function and revert back the payment
    fallback() payable external{

        payable(msg.sender).transfer(msg.value);

    }

}