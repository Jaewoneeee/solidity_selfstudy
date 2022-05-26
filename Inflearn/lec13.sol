// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [13강. event 1 - 정의]

contract lec13 {

    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("Jawook", 1000);
        // 이 값들이 호출이 되면 블록에 저장이 되겠지 
        // 블록에 저장되면 불변하기 때문에 언제든지 꺼내 쓸 수 있다 
    }
}