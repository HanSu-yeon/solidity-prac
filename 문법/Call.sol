// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract add{
    event JustFallback(string _str);
    event JustReceive(string _str);

    function addNumber(uint256 _num1, uint256 _num2) public pure returns (uint256){
        return _num1 + _num2;
    }

    fallback() external {
        emit JustFallback("JustFallback is called");
    }

    receive() external payable {
        emit JustReceive("JustReceive is called");
     }

}

contract caller{
    event calledFunction(bool _success, bytes _output);
 
//     //1. 송금하기
//     //_to: eth 송금 받을 사람 -> payable
//     //함수가 eth보내는 형식 -> payable키워드
//     // function transferEther(address payable _to) public payable {
//     //     (bool success,) = _to.call{value:msg.value}("");
//     //     require(success,"failed to transfer ether");
//     // }

    //2. 외부 스마트 컨트랙 함수 부르기
    //_contractAddr: add 컨트랙트 주소
    function callMethod(address _contractAddr, uint256 _num1, uint256 _num2) public {
        //원래형태: contractAddr.call{value:msg.value}("")인데 eth를 보내지 않기 때문에value필요없음
        //()에서는 함수를 부름. 함수 호출할    때는 encodeWithSignature를 사용 
        (bool success, bytes memory outputFromCalledFunction) = _contractAddr.call(
            abi.encodeWithSignature("addNumber(uint256, uint256)", _num1, _num2)
        );
        require(success, "failed to call outer function");
        emit calledFunction(success, outputFromCalledFunction);
    }
}


