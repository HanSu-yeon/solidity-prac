//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Match{
    
    function plusData(uint a, uint b) external returns(uint){
        return a+b;
    }
}
contract TryCatch{
    Math math = new Math();
    address payable temp_address = msg.sender;
    
    function callOtherContract(address to) external {
        try math.plusData(6,4) returns(uint result){
            (temp_address).transfer(result);
        }catch{
            revert();
        }
    }
}