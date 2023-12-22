//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

//같은 주소인데 대소문자 구분이 안되어 있으면 에러남
//=> 솔리디티에 쓰는 데이터는 체크썸이 완료돼서 대소문자가 그 규칙에 맞게 정상적으로 변형된 데이터만 실제로 사용할 수 있음(이더리움 어카운트 파트 참고)
contract Address{
    address public user = 0xcDBE122F1fd9EF996C843Dc945A3A36a67c2A115;
    // address public failUser = 0xcdbe122f1fd9ef996c843dc945a3a36a67c2a115;

    //payable 키워드
    //왜씀? 이더리움을 주고 받는 컨트랙트 주소나 EOA 같은 경우에는 컨트랙트 상에서 payable을 명시해줘야지만 돈의 이동이 가능하게 처리가 된다  
    address payable public payable_user = payable(user);
    //ex. 컨트랙트에서 받은 돈을 다른 사용자에게 전달하는 경우
    function sendEth() public payable{
        //user.transfer(1000000000000000000); //일반적인 address에 전송하는 경우-> 에
        payable_user.transfer(1000000000000000000); //일반적인 address에 전송하는 경우-> 에

    }

    function getBalance() public view returns(uint){
        return user.balance;
    }
}