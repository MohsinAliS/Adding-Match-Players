// SPDX-License-Identifier: MIT
pragma solidity >0.5.0;
contract maap{
    //ONE
    mapping (uint => address) public RegisterSeller;
        uint key;
    function regseller( address _addr) public 
    {
        key++;
        RegisterSeller[key] = _addr;
    }

    //TWO
    mapping (uint => address) public Register;
    function regseler(uint _key, address _addr) public 
    {    
        RegisterSeller[_key] = _addr;
    } 

//Three unique
    mapping (uint => address) public Registeryou;
        uint orgkey;
    function regsel(uint _key, address _addr) public 
    {    
            
        orgkey=_key;
        RegisterSeller[orgkey] = _addr;
    } 


    mapping (address => bool) public isvalid;
    function verifyseller (address _addr) public
    {
    //yhn p main cha rha hn k jo addr wo rha hai wo registerseller main hai to asko lo wrna
    //msg jai k ap phle register kro
    require (_addr == RegisterSeller[key],"first register your self");
        isvalid[_addr]=true;
    }

    function falseseller (address _addr) public  
    {
        isvalid[_addr]=false;
    }

    function isverifyseller (address _addr) public view returns (bool) 
    {
        return isvalid[_addr];
    }
    }
