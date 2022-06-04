// SPDX-License-Identifier: MIT
pragma solidity >0.7.5;

contract matching {
    address private owner;

    modifier onlyowner()
	{
		require(msg.sender == owner, "you are not the owner" );
		_;
	}
	constructor()
	{
		owner=msg.sender;
	}

    struct  player
    {
        string name;
        uint id;
        address playeraddr;
    }
    bool public create;
    uint public playerscount; 
    event playrsevent (string name, uint id, address playeraddr);   
    mapping (uint=> player) public addPlayer;
    mapping (address => bool) public allowtoadd;
    
    function allowToMatch(bool _create) public
    {
            create=_create;
    }
    function addPlayers(string memory _name, uint _id) external
    {
    require(create == true,"first allow to match");
    require(allowtoadd [msg.sender] == true,"You Can not Add players ");
        playerscount++;
        addPlayer[playerscount]=player(_name,_id,msg.sender);
    emit playrsevent(_name, _id, msg.sender);
    }
    
    function allowToAddPlayer (address _addrl, bool _allow) public onlyowner 
    {
        allowtoadd[_addrl]=_allow;
    }

    function updatePlayer(uint _id, string memory _name) external 
    {
    require(create == true,"first allow to match");
    require(allowtoadd [msg.sender] == true,"You Can not update players ");
        addPlayer[playerscount].id=_id;
        addPlayer[playerscount].name=_name;
    }
 
    function getPlayer(uint _id) public view returns (uint,string memory, address)
    {
        return(addPlayer[_id].id, addPlayer[_id].name, addPlayer[_id].playeraddr);
    }
}
