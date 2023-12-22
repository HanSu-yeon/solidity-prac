//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//이 컨트랙트를 지칭
//언제사용? 컨트랙트내의 함수 호출, 잔액 조회, 내 자신에게 다시 이더리움 전송하거나 할 때 사용
 //address(this).transfer(); // 내 자신에게 다시 이더리움 전송
contract This{
    uint public data = 10;
    //1. 컨트랙트의 잔액조회
    function getBalance() public view returns(uint){
       
        return address(this).balance;
    }

    //2. 외부에서만 호출 가능
    function externalFunc() external{
        data = 15;
    }

    function internalFunc() internal{
       // externalFunc(); ->에러남
       this.externalFunc();//external함수를 내부에서 호출 가능
    }
}