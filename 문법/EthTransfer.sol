//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract EthTransfer{
      function isContract(address _addr) private returns (bool isContract){

        uint32 size;
        assembly{
            size := extcodesize(_addr)
        }
        return(size > 0);
    }

    function sendTransfer(address payable to) public payable {
        to.transfer(msg.value);
    }

    function sendSend(address payable to) public payable {
        bool result = to.send(msg.value);

        if(result == true){
            revert();
        }else{
            revert();//전체 tx을 revert 
        }
    }

    function call(address payable to) public payable{
        (bool result, bytes memory data ) = to.call()
    }

    
}