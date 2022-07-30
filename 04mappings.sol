//key-value pairs or associative array. Key can be uint or int and will be mapped to any datatypes like boolean, string or address.
//The keys should always be of elementary data types.
//Values canbe of any data type.
//accessed by name[key] = value
pragma solidity ^0.5.0;

contract uservar {
    mapping(uint => address) public mymap;  //mapping from uint to address

    function init() public {
        mymap[0] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
    function inituser(uint k, address add)public {   //giving input
        mymap[k] = add;
    }
}
