pragma solidity ^0.5.0;

contract addr {
    address public myAdd; // Two important functions of address variable - 1.For sending funds 2.For conferences
    ufixed128x18 public myfix; //for fix point numbers
    constructor() public {
        myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //for initializing myAdd(account) otherwise initialised with 0x0000000000000000000000000000000000000000
    }
    function getbal()public view returns(uint)
    {
        return myAdd.balance;  // balance function is predefined in solidity, there is also a transfer function in solidity
        //gives balance in wei 1 ether = 10^18 wei
    }
}
