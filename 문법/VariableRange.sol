//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//스토리지에 저장될 데이터(전역)와 메모리에 저장될 데이터들(지역)이 있는데 중복 발생하는 경우도 있다
//이때 어떻게 처리되는지: 변수명이 중복될 때는 메모리 데이터를 함수에서는 return해준다 

contract VariableRange{

    uint private data = 10;

    //스토리지에 저장된 데이터
    function getData() public view returns(uint){
        return data;
    }


    function getData2() public pure returns(uint){
        uint data = 5;
        return data;
    }
}