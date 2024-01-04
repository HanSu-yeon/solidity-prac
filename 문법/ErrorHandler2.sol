// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract errorHandler1{
    //0.7.x : call to errorHandler1.assertNow errored: Error occured: invalid opcode.
    //0.8.x: call to errorHandler1.assertNow errored: Error occured: revert. 즉, 가스 환불 받는다
    function assertNow() public pure{
        assert(false);
    }
    
    function revertNow() public pure{
        revert("error");
    }

    function requireNow() public pure{
        require(false, "error");
    }


}