//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Assert{
    
    mapping(address => uint) public orderList;

    function order() external payable {
        assert(msg.value != 0); 
        orderList[msg.sender] =msg.value;
        
    }
}