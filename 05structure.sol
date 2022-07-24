pragma solidity ^0.5.0;

contract uservaar {
    struct customer {
        address add; 
        uint amt;
    } 
    customer public fund;  //initaially both fund.add and fund.amt are initialised to 0

    function change()public {
        fund.add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        fund.amt = 100;
    }
}