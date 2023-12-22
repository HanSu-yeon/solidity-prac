//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Mapping{

    //ERC20에서 잔액관리할 때 많이 사용
    //잔액관리할 때 내 주소의 ERC20 잔액이 내 account의 state값으로 관리되는게 아니라 이 컨트랙트(ca) 값의 매핑 값으로 잔액이 관리된다 
    //혹시라도 Self Destruct을 통해 컨트랙트가 사라지는 경우가 있는데 지갑에 들어가서 보면 잔액이 안보일 수 있는 문제점이 생길 수 있다 그래서 ca에서 관리됨
    mapping(address => int) public balance;
    //key는 중복을 허용하지 않음=> 토큰 아이디, 어드레스 같이 유일한 값만 key로 사용한다

    


    

}