// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;
/*
Call vs Delegate call
Delegate call: 
1. msg.sender 가 본래의 스마트컨트랙 사용자를 나타낸다 
2. delegate call이 정의된  스마트 컨트랙(즉caller)이 외부 컨트랙의 함수들들 마치 자신의 것 처럼 사용(실질적인 값도 caller에 저장) 
조건 
외부 스마트컨트랙과 caller 스마트컨트랙은 같은 변수를 갖고 있어야 한다.   

why?
upgradable smart contract 용도 
*/




contract add{
    uint256 public num = 0;
    event Info(address _addr,uint256 _num);
    
    function plusOne() public {
        num = num + 1;
        emit Info(msg.sender,num);
    }
    

    
}

contract caller{
    uint256 public num = 0;
    function callNow(address _contractAddr) public payable{
        (bool success,) = _contractAddr.call(abi.encodeWithSignature("plusOne()"));
        require(success,"failed to transfer ether");
    }

    // 이 함수로 add를 호출해서 caller의 num을 바꾼다. (add의 로직이 바뀌어도 num에 적용할 수 있다)
    function delcateCallNow(address _contractAddr) public payable{
        (bool success,) = _contractAddr.delegatecall(abi.encodeWithSignature("plusOne()"));
        require(success,"failed to transfer ether");
    }
}
 