pragma solidity ^0.5.0;

contract owned { // parent contract
    address public owner;
    constructor()public {   // deployed at compile time
        owner = msg.sender;  //msg.sender will give us the address who has started the transaction
    }
    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        _;  //Placeholder
    }
}