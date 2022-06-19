//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.5;
contract MarksManagmtSys
	{
	struct Student
	{
		int ID;
		string fName;
		string lName;
		int marks;
	}
	address owner;
	int public stdCount;
	mapping(int => Student) public stdRecords;
	
	modifier onlyOwner
	{
		require(owner == msg.sender);
		_;
	}
	constructor()
	{
		owner=msg.sender;
	}

	function addNewRecords(int _ID,
		string memory _fName,
		string memory _lName, int _marks) public 
	{
	stdCount ++;
	stdRecords[stdCount] = Student
	(_ID, _fName, _lName, _marks);
	}
	}
