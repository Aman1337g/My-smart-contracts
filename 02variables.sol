pragma solidity ^0.5.0; //pre-compiler line

//Basic datatypes = string, int, bool, address
//User defined datatypes = struct, enums, mapping(like an associative array), arrays

contract variables {
    uint8 public myuint = 2;  
    bool public mybool;
    string public mystr; //non-indexable unlike C, C++    

    //uint = unsigned integer, uint8 contains 2^8 = 256 characters (0 to 255) 
    //int = integer , int8 = 256 charactors (-128 to +127)
    //uint8 is more preferable than uint88 act it will use less gas
    //all integer are initialised with 0 and string with null and boolean type with false

    //wrap-around
    function increment() public {
        myuint++;
    }
    function decrement() public {
        myuint--;
    }

    function changeVal() public {
        mybool = true;
    }

    function changeStr() public{
        mystr = "Hello, my name is Aman Kumar Gupta";
    }
}