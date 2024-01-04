//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Revert{

    mapping(address => uint) public orderList;

    function order() external payable{
        revert("Msg.value must not be zero"); //무조건 error 발생, state롤백
        orderList[msg.sender] =msg.value;

    }
}