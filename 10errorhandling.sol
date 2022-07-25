pragma solidity 0.6.0;

// contract errorHandling {
//     uint public balance;
//     address public owner;
//     constructor()public {   // deployed at compile time
//         owner = msg.sender;  //msg.sender will give us the address who has started the transaction
//     }

//     function getmoney() public payable { // payable is a keyword
//                                          //revert is an if ,else kind of statement only 
//         if(owner != msg.sender) {
//             revert("Not owner");
//         }                               
//         balance = balance+msg.value;
//     }
//     function withdraw(address payable to, uint amt)public {
//         require(owner == msg.sender, "You are not the owner");
//         balance -= amt;
//         to.transfer(amt);    
//     }
// }


//USING ASSERT
// contract errorHandling {
//     uint public balance;
//     address public owner;
//     constructor()public {   // deployed at compile time
//         owner = msg.sender;  //msg.sender will give us the address who has started the transaction
//     }

//     function getmoney() public payable { // payable is a keyword
//                                          //revert is an if ,else kind of statement only 
//         if(owner != msg.sender) {
//             revert("Not owner");
//         }                               
//         balance = balance+msg.value;
//     }
//     function withdraw(uint amt)public {          //now withdraw function will only reduce the amount and not give it to anyone
//         require(owner == msg.sender, "You are not the owner");    //wihtout assert wraparound happens
//         assert(balance >= amt); //it doesn't give out any string like require or revert, it will just take up all the gas and throw an error.//assert is used to check that nothing from the compiler side is wrong (variable invariance) 
//         balance -= amt;    
//     }
// }



//USING MODIFIER
contract errorHandling {
    uint public balance;
    address public owner;
    modifier onlyOwner() {
        require(owner == msg.sender, "You are not the owner");
        _;  //Placeholder
    }

    constructor()public {   // deployed at compile time
        owner = msg.sender;  //msg.sender will give us the address who has started the transaction
    }

    function getmoney() public payable { // payable is a keyword
                                         //revert is an if ,else kind of statement only 
        if(owner != msg.sender) {
            revert("Not owner");
        }                               
        balance = balance+msg.value;
    }
    function withdraw(uint amt)public onlyOwner {
        balance -= amt;  
    }
}