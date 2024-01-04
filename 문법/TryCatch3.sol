// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//외부 스마트 컨트랙트를 생성할 때
contract charactor{
    string private name;
    uint256 private power;

    constructor(string memory _name, uint256 _power){
        //revert("error");
        name = _name;
        power = _power;
    }
}

contract runner{

    event catchOnly(string _name, string _err);
    
    function playTryCatch(string memory _name, uint256 _power) public returns(bool){
        try new charactor(_name, _power) {
            //revert("errors in the try/catch block"); -> try/catch안에서 revert, require, assert 에러 넣어주면 프로그램 바로 종료함
            return(true);
        }
        catch{
            emit catchOnly("catch", "ErrorS!!");
            return(false);
        }
    }
}

contract runner2{
    function simple() public returns(uint256){
        return 4;
    }
    event catchOnly(string _name, string _err);
    function playTryCatch() public returns(uint256, bool){
        
        try this.simple() returns(uint256 _value){
            return(_value, true);
        }
        catch{
            emit catchOnly("catch", "ErrorS!!");
            return(0,false);
        }
    }
}