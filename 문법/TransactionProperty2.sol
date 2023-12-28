//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract transactionProperty2{

    mapping(address => uint) private orderList;
    function newOrderList() external payable{
        orderList[msg.sender]=msg.value;
    }

    bytes4 private checkFunction;
    function newCheckFunction(address sender, uint price) external payable returns(bool){
        bytes4 selector = bytes4(keccak256("newOrdereList()"));

        if(selector == msg.sig){
            return true;
        }
    }
}