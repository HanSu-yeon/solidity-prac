// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract event1 {

    //console.log, print랑 비슷한 용도
    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("Mei", 1000); //누가 보냈는지에 대한 기록을 출력
        //값들이 출력되면 블록체인 안에 있는 블록에 저장된다 -> 불변함-> 언제든지 가져와 쓸 수 있
    }

}