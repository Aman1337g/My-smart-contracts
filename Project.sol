pragma solidity ^0.6.0;

contract wallet() {    // Created a Contract named wallet
    address public owner;    // created a variable owner to store owner's address
    constructor ()public { 
        owner = msg.sender; 
    }
    struct Payment {
        uint amt;
        uint timestamp;
    }
    struct Balance {
        uint totbal;
        uint numpay;    // Storing number of payments
        mapping(uint => Payment) payments; // mapping from numpay to Payment structure
        mapping(address => Balance) Balance_record
    }

    // SEND FUNCTION (function which sends money)
    function sendmoney()public payable {  // As this function will be getting some money it should be payable
        Balance_record[msg.sender].totbal += msg.value;
        Balance_record[msg.sender].numpay += 1;
        Payment memory pay = Payment(msg.value, now);  // now is a keyword to get the timestamp
        Balance_record[msg.sender].payments[Balance_record[msg.sender].numpay] = pay
    }
    function getbal()public view returns(uint) {    // view will only read the data
        // returns is used in the function header and return is used in the function body
        retrun Balance_record[msg.sender].totbal;
    }     
}