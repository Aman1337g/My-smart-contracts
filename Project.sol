pragma solidity ^0.6.0;

contract wallet() {    // Created a Contract named wallet
    address public owner;    // created a variable owner to store owner's address
    bool public pause;
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

    modifier onlyOwner() {   // Creating pause button - only can be accessible by the owner
        require(msg.sender == owner);
        _;
    }
    modifier whilenotpaused() {
        require(pause == false, "Smart Contract is paused");
        _;
    }
    function change(bool ch)public onlyOwner {
        pause = ch;
    }

    // SEND FUNCTION (function which sends money)
    function sendmoney()public payable whilenotpaused {  // As this function will be getting some money it should be payable
        Balance_record[msg.sender].totbal += msg.value;
        Balance_record[msg.sender].numpay += 1;
        Payment memory pay = Payment(msg.value, now);  // now is a keyword to get the timestamp
        Balance_record[msg.sender].payments[Balance_record[msg.sender].numpay] = pay
    }
    function getbal()public view whilenotpaused returns(uint) {    // view will only read the data
        // returns is used in the function header and return is used in the function body
        retrun Balance_record[msg.sender].totbal;
    }     
    function convert(uint amtinwei)public pure returns(uint) { 
    // function to convert input amount in wei to ether
    // as we are not going inside the contract just returning value we are using pure function
    // we cannot use whilenotpaused modifier in pure function as pure functions are out of the smart contract
    retrun amtinwei/1 ether;   //here 1 ether = 10^18 wei
    }
    function withdraw(uint _amt)public whilenotpaused {
        require(Balance_record[msg.sender].totbal >= _amt, "not enought funds");
        Balance_record[msg.sender].totbal -= _amt;
        msg.sender.transfer(_amt);
    }
}                                   
             