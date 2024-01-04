// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract MobileBanking{
    address owner;
    //스마트컨트랙트가 배포될 때 이더를 받을 수 있게 초기화 
    constructor() payable {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "Only Owner!");
        _;
    }
    event SendInfo(address _msgSender, uint256 _currentValue);
    event MyCurrentValue(address _msgSender, uint256 _value);
    event CurrentValueOfSomeone(address _msgSender, address _to, uint256 _value);

    function sendEther(address payable _to) public onlyOwner payable{
    //    require(msg.sender == owner, "Only Owner!");
       require(msg.sender.balance>=msg.value, "Your balance is not enough");
       _to.transfer(msg.value);
       emit SendInfo(msg.sender, (msg.sender).balance);
    }

    function checkValueNow() public onlyOwner{
        emit MyCurrentValue(msg.sender, msg.sender.balance);
    }

    function checkUserMoney(address _to) public onlyOwner{
        emit CurrentValueOfSomeone(msg.sender, _to, _to.balance);
    } 

}