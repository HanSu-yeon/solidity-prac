//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract IfElse{

    uint public minialPrice = 1000;
    uint public maxPrice = 1000000;
    mapping (int => address) public owner; //제품 번호-> 사용자

    function conditional(uint ask_price ) public{
        //구매 요청 가격이 최소 가격보다 높은지 확인
        if(ask_price > minialPrice){
            //물건의 소유권 변경
            if(ask_price > minialPrice){
                owner[1] = msg.sender;
            }
        }else{
            
            //fail;
            revert(); //실패했다는것을 명시
        }
        
    }

    function conditional2(uint ask_price) public {
        if(ask_price > minialPrice){
            owner[1] = msg.sender;

        }else if(ask_price > maxPrice){
            revert();
        }else{
            
            //fail;
            revert(); //실패했다는것을 명시
        }
        

    }
}