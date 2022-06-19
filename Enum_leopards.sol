//SPDX-License-Identifier: MIT
pragma solidity >0.7.5;
contract enums{
    enum status
    {
        From,
        To,
        Panding,
        Transfer_for_deleviry,
        //adress_not_found, // if you want the condtion in order!
        recived
    }
    status public order;
    // order sender send to destination (1)
    function from() public 
    {
    require (order == status.From);
    order = status.To;
    }
    
    // order is going on Destination place (2)
    function To() public
    {
    require (order == status.To);
    order = status.Panding;
    }
    
    // order w8 for Rider for dilver (3) 
    function Panding() public 
    {
    require (order == status.Panding);
    order = status.Transfer_for_deleviry;
    }

    function Transfer_for_deleviry() public
    {
    require (order==status.Transfer_for_deleviry);
    order = status.recived;
    }

/*
// if rider adress found then order go to (5) if adress not found the value gives(4)
function required() public{
    if (order != status.Transfer_for_deleviry){

        order = status.adress_not_found;
    }
else {

    order = status.recived;
}
}*/


}
