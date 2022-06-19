//SPDX-License-Identifier: MIT
pragma solidity >0.7.5;

library Calculator{

    function addition(uint _x, uint _y) internal pure returns(uint)
    {

        return _x + _y;
    }

     function subtraction(uint _x, uint _y) internal pure returns(uint)
    {

        return _x - _y;
    }

     function Multiplaction(uint _x, uint _y) internal pure returns(uint)
    {

        return _x * _y;
    }

     function Division(uint _x, uint _y) internal pure returns(uint)
    {

        return _x / _y;
    }

     function GratherThan(uint _x, uint _y) internal pure returns(uint)
    {

        return _x >=_y ? _x : _y;
    }
}


contract allCalculation{

    function AllTypeCalculation(uint _x, uint _y) external pure returns
    (uint,
    uint,string memory,
    uint,string memory,
    uint,string memory,
    uint,string memory
    )
   
    {

    return (Calculator.addition(_x,_y),
            Calculator.subtraction(_x, _y),"This is Subtraction Result",
            Calculator.Multiplaction(_x, _y),"This is Multiplaction Result",
            Calculator.Division (_x , _y),"This is Division Result",
            Calculator.GratherThan( _x , _y),"This Is Addition Result"
            );
    }


}
