// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//0.4.22 ~ 0.7.x
contract errorHandler1{
    //2978936 gas
    function assertNow() public pure{
        assert(false);
    }
    //258 gas
    function revertNow() public pure{
        revert("error");
    }

    function requireNow() public pure{
        require(false, "error");
    }

    function onlyAdults(uint256 _age) public pure returns(string memory){
        if(_age <= 19){//조건이 true일
            revert("no");
        }
        return "success";
    }

 function onlyAdults2(uint256 _age) public pure returns(string memory){
        require(_age>19, "no"); //조건이 false일 때 에러 발생
        return "success";
    }
       
}