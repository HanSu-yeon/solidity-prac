//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Modifier{

    //modifier를 사용해 반복되는 코드를 제거할 수 있음
    modifier checkMinPrice(){
        require(msg.value > minPrice);
        _;
    }
    uint public minPrice = 10000;
    mapping(address => uint) public orderList;

    function test1() public payable checkMinPrice{
        orderList[msg.sender] = msg.value; //msg.value: 사용자가 보낸 value
    }

    function test2() public payable checkMinPrice{
        orderList[msg.sender] = msg.value;
    }
}