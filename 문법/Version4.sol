//SPDX-License-Identifier : MIT
pragma solidity >=0.4.0 <0.5.0;

contract FunctionV4{

    uint8 private data = 255; //uint8의 0~255(사용 가능 범위)
   
     //255+1하면 컴파일러 사용할 수 있는 범위를 벗어나 최초의 값으로 바꿔버림 -> overflow 이용한 공격이 가능해짐 
     //ex) 버전4에서는 사용자 잔액이 0인데 -1을하면 255라는 값이 전송되는 형태의 공격이 가능했음
    function setData() public {
        data += 1;
    }
    
    function getData() public returns(uint8){
        return data;
    }


}