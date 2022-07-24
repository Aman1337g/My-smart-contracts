pragma solidity 0.6.0;

contract fun {
    string public mystr;

    function setStr(string memory to)public returns(string memory) { 
        //memory is a keyword, to is an identifier , returns(string memory) = returns the string set in the memory
        mystr = to;
        return(mystr); //for returning a value always put in inside bracket "(" and ")"
    }
}