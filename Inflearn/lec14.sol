// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [14강. event 2 - indexed]
// indexed - 이벤트의 키워드. 특정한 이벤트의 값들을 들고올때 사용된다

contract lec14 {

    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    uint256 num = 0;

    function PushEvent(string memory _str) public {
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num ++;
    }

    // 그냥 출력만 한 상태이기때문에 어떻게 차이가 나는지 알기 힘듬
}