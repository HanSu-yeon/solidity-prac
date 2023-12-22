//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//함수 조회할 때 추가적으로 설정하는 값- view/pure
/*
- view: 전역변수에 선언되어 있는 메모리 state값을 조회하는 경우 -스토리지에 저장된 값 조회할 때 
- pure: 펑션 생성 했는데 state값을 가져오지 않고 그냥 임시로 생성한 메모리 데이터 값 쓰는 경우(state를 사용하지 않고 순수한 값 사용할 때)   - 메모리에 저장된 값 조회

*참고- storage, memory
- storage: 영구적으로 저장되는 값 (ex. 전역변수)
- memory: 잠깐 생겼다가 증발해버리는 데이터 (일시적으로 생성) 
            EVM이 동작할 때만 일시적으로 생성되었다 사라지는 값들 
            ex. 파라미터값, 메모리 리턴값, 지역변수(함수내에서 사용)

*/
contract PureView{

    uint8 storage private data = 255;

    //state값을 조회하는 경우(블록체인에 실제 저장되어 있는 값 조회할 때)
    function getData() public view returns(uint8){
        return data;
    }

    //state값을 조회 하지 않은 경우
    function getPureData(string memory _data) public pure returns(uint8 memory){
        uint8 memory temp_data = 9;
        return temp_data;
    }
}