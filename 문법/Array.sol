//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Array{

   // int[] public intList = [1,2,3]; //가변적으로 변할때
   // int[3] public int3List = [1,2,3];

   //delete intList[1]; //[1,0,3] 해당 위치의 값을 초기화 시킴 

    struct Product{
        string name;
        uint price;
    }

    Product[] public productList;
    productList.push(mainProduct);
}