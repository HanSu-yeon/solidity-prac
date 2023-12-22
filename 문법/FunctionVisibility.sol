//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

/*
변수 공개범위 설정
- public: 누구에게나 공개
- private: 이 컨트랙트 내에서만 조회할 수 있음(외부에서 x)

함수 공개범위 설정
- private: 외부공개x, 상속된 컨트랙트(ca?)에서도 x, 내부에서는 조회 가능
- internal: 외부공개x, 상속된 ca o, 내부에서 o 
- public:  외부공개o, 상속된 ca o, 내부에서 o
- external: 외부공개o, 상속된ca x, 내부에서 x

*/

contract FunctionVisibility{
    
    uint8 private data = 255;
    uint8 public data = 255;

    function setData(uint8 _data) private{
        data = _data;
    }
    function setData(uint8 _data) internal{
        data = _data;
    }
    function setData(uint8 _data) public{
        data = _data;
    }
    function setData(uint8 _data) external{
        data = _data;
    }
}