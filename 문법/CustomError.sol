//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;
//require문이나 revert를 많이 쓰다보면 중복적으로 작성을 해 불편한 면이 있다
//커스텀 에러를 통해 중복되는 것들을 간단하게 쓸 수 있는 방법이 있다
// error CustomError(); -> 컨트랙트 안과밖 아무곳이나 작성 가능 

error Unauthorized();

contract VendingMachine {
    address payable owner = payable(msg.sender);

    function withdraw() public {
        if(msg.sender != owner)
            revert Unauthorized();

        owner.transfer(address(this).balance);
        
    }

}