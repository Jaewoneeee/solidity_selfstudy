// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

contract lec7{
    /*
    storage : 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이되어 가스 비용이 비쌉니다.
              (함수밖의 변수들과 함수 그 자체가 저장이됨)
    memory : 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장이 됩니다.
             그러나, storage 처럼 영속이지 않고, 함수내에서만 유효하기에 storage보다 가스 비용이 쌉니다.
    calldata : 주로 external function의 파라메터에서 사용 됩니다. 
               예를 들어 함수를 실행할 때 파라메터의 값 자체를 calldata로 받을 수 있습니다. calldata로 받게 된다면, 값은 변경할 수 없고 읽기만 가능합니다. 
    stack : EVM(Ethereum Virtual Machine)에서 stack data를 관리할때 쓰는 영역인데 1024Mb 제한적입니다.
    */

    // function -string
    // 스트링은 기본 데이터타입이 아님. 그래서 파라미터, 리턴값, 래퍼런스에 메모리를 지정해줘야함 
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }

    // uint는 기본데이터타입 이기 때문에 default값으로 memory가 들어가있음
    function get_uint(uint256 _ui) public pure returns(uint256){
        return _ui;
    }
}