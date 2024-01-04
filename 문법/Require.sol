//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Require{

    mapping(address => uint) public orderList;

    function order() external payable {
        require(msg.value != 0,"Msg.value must not be zero");
        orderList[msg.sender] =msg.value;
    }
}