// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract salesale{
 
  mapping (uint=>saleitems) public items;
  struct saleitems
  {   
    uint itemId;
		string ItemName;
		uint itemPrice;
    address payable itemOwner;
	}

  function Additems
  (
    uint _itemId,
    string memory _ItemName,
    uint _itemPrice    
  ) public
	{   
    items[_itemId]= saleitems(
    _itemId,
    _ItemName,
    _itemPrice,
    payable (msg.sender));
  }
  }

contract Auction is salesale {
  uint public immutable startAt;
  uint public immutable expiresAt;
  uint public immutable discountRate;

constructor
  (
    uint _discountRate,
    uint _DURATION
  )
  {
    startAt = block.timestamp;
    expiresAt = block.timestamp + _DURATION;
    discountRate = _discountRate;
  }
   
  function getPrice(uint _itemId) public view returns (uint)
    {
        return items[_itemId].itemPrice - discountRate;
    }
  
  function buyitem(uint _itemId) payable external
  {
  require(msg.value ==items[_itemId].itemPrice-discountRate,
    "you enter wrong amount plz cheek price");
    
    items[_itemId].itemOwner.transfer(msg.value);
    items[_itemId].itemOwner=payable(msg.sender);
    delete items[_itemId];
  }
  //Work Done By Mohsin ALi
  }
      
     
    
    







