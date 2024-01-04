//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract CheckContract {
    //받은 주소가 컨트랙트인지 EOA인지 확인
    function isContract(address _addr) private returns (bool isContract){

        uint32 size;
        //assembly에 extcodesize라고 하는 opcode 명령어를 쓰게 되면 해당 주소에 code state정보의
        //사이즈 정보를 가지고 올 수 있음 
        assembly{
            size := extcodesize(_addr)
        }
        return(size > 0);
        //이 코드를 통해 해당 주소의 코드 사이즈를 가져와 그 사이즈가 0보다 큰 경우에는 스마트컨트랙트,
        //0보다 작은 경우에는 일반 EOA 주소가 된다 
    }
}