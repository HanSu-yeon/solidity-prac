//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//value 자료형 가지고 연산수행
contract Operation{
    uint public intData =0;
    string public stringData;

    function math() public{
        intData = intData + 1;
        intData += 1;
        intData++;

        intData = intData -1;
        intData = intData *1;
        intData = intData /1;
    }

    //화폐데이터 처리
    //이더리움에서 가장 작은 화폐단위: wei 
    function weiToEth() public {
        uint wei_data = 1 wei;

        uint eth_data = wei_data * (10**18); //1000000000000000000
        //**eth를 전송하고 싶으면 1000000000000000000 또는 1 ether라 적어야 함
        //보통 전자의 방법으로 적고 전송 받은 프론트엔드 개발자가 이 전송받은 값을  다시 10**18로 나누고 화면상에 1ETH로 표현한다 
        //ex) 1000000000000000000 / (10**18) = 1ETH
        uint gwei_data = wei_data * (10**9);
    
    }

    function logical() public{
        bool true_data = true;
        bool false_data = false;

        if(true_data){
            ~~
        }else{
            ~~
        }

        if (true_data && false_data) //false
        if (true_data || false_data) //true
        if (true_data == false_data) //false
    }

    function logical2() public{
        uint big_data = 100;
        uint small_data = 1;

        if (big_data == small_data) //false
        if (big_data > small_data) //true
        if (big_data != small_data) //true
    } 

}