pragma solidity 0.6.0;

contract uservar {
    uint[] public arr; // dynamic array
    // uint[3] public arr; //static array(having fixed size)
    // in solidity there are two functions in array - 1.push function 2.pop function

    function changearr()public {  //for dynamic sized array
        arr.push(38);
    }

    // function changearr(uint y)public { //taking user input for dynamic sized array
    //     arr.push(y);
    // }

    // function changearr(uint x,uint y,uint z)public { //taking user input for static sized array of size 3
    //     arr[0] = x;
    //     arr[1] = y;
    //     arr[2] = z;
    // }
}