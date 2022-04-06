// SPDX-License-Identifier: GPL-3.0-or-later

// solidity를 통해 smartcontract를 해보자!
// license를 맨 윗줄에 명시해 줘야 에러가 나지 않는다

pragma solidity >= 0.7.0 < 0.9.0;
// 솔리디티 버전 0.7 이상 0.9 전까지 사용하겠다

contract Hello {
    string public hi = "Hello solidity";
}