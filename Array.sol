// SPDX-License-Identifier: MIT
pragma solidity >0.7.5;
contract Record{
address private owner;
    constructor()
    {
    owner=msg.sender;
    }
    modifier onlyme()
    {
    require (msg.sender == owner, "you are not the onwer");
    _;
    }   
    string[] public studentrecord;

    function setstudentnewrecord
    (string memory _Name , string memory _address, string memory phone_num, 
    string memory roll_num, string memory DOB, string memory Sem, string memory CGPA, 
    string memory Uni_name)
    public {
        studentrecord.push(_Name);
        studentrecord.push(_address);
        studentrecord.push(phone_num);
        studentrecord.push(roll_num);
        studentrecord.push(DOB);
        studentrecord.push(Sem);
        studentrecord.push(CGPA);
        studentrecord.push(Uni_name);
    }

    function getstudentrecord()public onlyme view returns(string [] memory){
        return studentrecord;
    }

    function delet() public
    {
        studentrecord.pop();
    }
    }
