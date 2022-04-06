// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// data type
contract lec2 {

    // 1. data type
    //  boolean, bytes, address, uint

    // 2. reference type
    //  string, arrays, struct

    // 3. mapping type

    // ======================================

    // (1) boolean : true / false
    bool public b = false; 

    // ! ||  == &&
    bool public b1 = !false; // true 논리식의 결과가 참이면 거짓을, 거짓이면 참을 반환함. (논리 NOT 연산)
    bool public b2 = false || true; // true 논리식 중에서 하나라도 참이면 참을 반환함. (논리 OR 연산)
    bool public b3 = false == true; // false 왼쪽 피연산자와 오른쪽 피연산자의 값이 같으면 참을 반환함.
    bool public b4 = false && true; // false 논리식이 모두 참이면 참을 반환함. (논리 AND 연산)

    // (2) bytes 1 ~ 32
    bytes4 public bt = 0x12345678;
    bytes public bt2 = "STRING";

    // (3) address 
    //  고유의 은행계좌와 마찬가지. 이더를 송수신 할때 이 address를 통해 주고받고 함. 
    //  smatrtcontract를 deploy할때 발포됨 
    address public addr = 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47;

    // (4) int vs uint
    int8 public it = 4;
    uint256 public uit = 123212;
}