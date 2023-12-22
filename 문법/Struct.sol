//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//레퍼런스 타
contract Struct{

    struct Product{
        string name;
        uint price;
    }

    Product public mainProduct;
    uint public maxProductCount;
    //constructor: 컨트랙트를 처음 네트워크에 배포할 때 초기 값 설정하는 함수. 
    //초기 배포할 때만 실행 => 처음 세팅하고 바뀔 수 없는 값들 설정할 때 사용 
    constructor(){
        maxProductCount=1000; 
    }

    //struct에 데이터 넣고 싶을 때
    function initProduct() public {
        Product memory firstProduct;
        firstProduct = Product("toy1",10); 
    }

    //struct 변수에 직접 세팅하고 싶으면
    function setMainProduct(string memory _name, uint _price) public {
        mainProduct.name = _name;
        mainProduct.price = _price;
    }

    function getMainProductPrice() public view returns(uint){
        return mainProduct.price; 
    }
}