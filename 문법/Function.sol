//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Function{

    uint8 private data = 255;

    function setData(uint8 _data) public {
        data = _data;
    }
    
    //get은 메타메스크의 tx이 뜨지않음 
    //*state값을 바꾸지 않는 함수 호출할 때(단순 조회)는 실제로 tx를 발생시키지 않고 
    //->내가 요청하는 get노드에 저장되어 있는 state값만 단순히 꺼내와서 사용자에게 보여주면 됨
    //state값 바꾸는 함수 호출할 때는 tx를 실행시킨다 
    //-> 왜? 모든 노드가 실행해서 검증을 해야 되기 때문에 
 
    function getData() public view returns(uint8){
        return data;
    }


}