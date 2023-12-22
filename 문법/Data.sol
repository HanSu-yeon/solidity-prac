//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract DataType{
    
    bool public data1 = true; //flag 세울때, 조건문에서 데이터 값 처리할 때 사용 true/false

    int public data2 = 0; //양수, 음수, 0 포함
    uint public data3 = 10; //양수만

    //uint256==uint 
    //uint256은 매우 큰 숫자를 쓸 때 사용
    uint256 public data4 = 1000000000000000000; //0~2^256 -1
    int256 public data5 = -1000000000000000000; //-2^255 ~ 2^255 -1 
    
    uint8 public data6 = 100; //작은 데이터 쓸 때 0 ~ 2^8 -1 = 255
    int8 public data7 = -100; //-2^7 ~ 2^7 -1 = -128 ~ 127

    //int8과 int256 구분하는 이유: sc사용할 때 가스값이 드는데 비용 낭비를 줄이기 위해 -> 효율적인 컨트랙트가 됨 
    //uint8과 int256 차이: 값의 범위가 다름 

    string public data8 = "fastcampus"; // string으로 저장되지 않고 바이트 값으로 변환되어 저장됨 
    bytes public data9 = "fastcampus"; //이와같은 형태로 string을 나타낼 수 있음 
    //bytes는 데이터가 들어오는 범위가 얼마인지 몰라 가변적으로 메모리를 사용하는 형태일 때
    //bytes가 고정이면 숫자 써줌
    bytes20 public data10 = hex"cDBE122F1fd9EF996C843Dc945A3A36a67c2A115";  //주소값 쓸 때 많이 사용
    bytes32 public data11 = hex"4d4edd69c2c7e422d3c7f9e47c9c0006d5df085e66f7db42a7f9329b68c0994d";//tx해시값

    //float 타입 없음. 실수를 사용하고 싶으면 외부에서 처리
    
    //주소를 그대로 쓸 수 있다
    address public data12 = 0xcDBE122F1fd9EF996C843Dc945A3A36a67c2A115;
}