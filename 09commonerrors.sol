pragma solidity 0.6.0;

contract errorHandling {
    uint public balance;

    function getmoney() public payable { // payable is a keyword
        balance = balance+msg.value;
    }
    function withdraw(address payable to, uint amt)public {
        balance -= amt;
        to.transfer(amt);
    }
}