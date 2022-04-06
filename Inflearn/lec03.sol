// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// ether의 단위와 gas
contract lec3 {
    
    // 1 ether = 10^9 gwei = 10^18wei
    // 0.000000000000000001 = 1^-18 =1wei
    // 0.01 ether = 10^16 gwei

    // gwei 가스에 사용되는 wei

    uint256 public value = 1 ether;
    uint256 public value2 = 1 wei;
    uint256 public value3 = 1 gwei;
}