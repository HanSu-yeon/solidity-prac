//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract transactionProperty{

    uint public msg1 =gasleft(); // 남은 가스양
    bytes public msg2 = msg.data; // data 값은 etherscan > tx > input Data에 들어가는 값
    address public msg3 = msg.sender; //트랜잭션 요청한 사람 정보
    bytes4 public msg4 = msg.sig; //함수 호출한 값을 byte 코드로 바꾼 값
    uint public msg5 = msg.value; //전송 가격

    function checkValue() external payable {
        uint value = msg.value;
    }

}