// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

    //overflow방지하는 라이브러리
library SafeMath{
    function add(uint8 a, uint8 b) internal pure returns(uint8){
        require(a+b >= a, "SafeMath: addition overflow");
        return a+b;
    }
}

contract overflowTest{
    using SafeMath for uint8;
    uint public a;
 