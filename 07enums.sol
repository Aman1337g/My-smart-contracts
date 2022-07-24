//It's basically the same as array only, but it has a limited set of values. Mostly used for state changes.
pragma solidity 0.6.0;

contract userenums {
    enum ActionChoices{Left,right,up,down}
    ActionChoices public choice;

    function stchange1()public {
        choice = ActionChoices.Left;
    }
    function stchange2()public {
        choice = ActionChoices.right;
    }
    function stchange3()public {
        choice = ActionChoices.up;
    }
    function stchange4()public {
        choice = ActionChoices.down;
    }
}