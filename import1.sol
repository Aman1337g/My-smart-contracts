pragma solidity ^0.5.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/ownership/Ownable.sol"; // importing from github

// contract owned {      // PARENT CONTRACT
//     address public owner;
//     constructor()public {
//         owner = msg.sender;
//     }
//     modifier onlyOwner() {
//         require(owner == msg.sender, "U are not the owner");
//         _;
//     }
// }
// import "./owned1.sol";     // "./" is used for this directory only [IMPORTING FROM FILE(owned1.sol IN THE DIRECTORY]

// contract errorhandling is owned{      // CHILD CONTRACT
contract errorhandling is Ownable{
    uint public balance;              // INHERITENCE owned is inherited in errorhandling contract
    function getmoney()public payable onlyOwner{  // WE SHOULD DEPLOY THE CHILD CONTRACT
        // if(owner != msg.sender) {
        //     revert("Not owner");
        // }
        balance = balance+msg.value;
    }
    function withdraw(uint amt)public onlyOwner {
        assert(balance >= amt);
        balance -= amt;
    }
}