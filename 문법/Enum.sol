//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//언제씀? 일반적으로 어떤 컨트랙트의 진행 상태 값을 보거나 보고싶을 때 이 enum값을 사용자들이나 개발자들이 명확하게 이해할 수 있도록 enum값을 사용한다
//구조체와 동일하게 기본 템플릿 만들어 놓고 쓰는 형태. 차이점: 변수가 들어가는 것이 아닌 실제로 사용될 string 데이터 값이 들어감
contract Enum{

    enum Status{
        Not_Sale,
        Auction,
        Sales,
        Bid,
        Sold
    } 

    Status public auctionStatus;

    function auctionStart() public{
        auctionStatus = Status.Auction;
    }

    
    function bid() public{
        auctionStatus = Status.Bid;
    }

    function sold() public{
        auctionStatus = Status.Sold;
    }
}