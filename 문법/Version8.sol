//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract FunctionV8{

    uint8 private data = 255;

    //8에서는 컴파일러가 overflow에 대해서 자동적으로 체크해줘서 버전4와 다르게 에러를 발생시킨다 -> 보안성 높이는 기능들이 추가되었음 
    function setData() public {
        data += 1;
    }
    
    function getData() public view returns(uint8){
        return data;
    }


}