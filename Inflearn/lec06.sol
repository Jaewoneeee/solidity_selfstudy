// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

contract lec6{
    /*
    function 이름() public { // (public,private,internal,external) 변경가능 (접근제한자)
        // 내용
    }
    */

    /*
    view : function 밖의 변수들을 읽을 수 있으나 변경 불가능 / storage state 를 읽을 수 있지만, 그 state 값을 변경할 수 없다.
    pure : function 밖의 변수들을 읽지 못하고, 변경도 불가능 / torage state 를 읽으면 안되고, 그 state값을 변경할 수 도 없다.
    view 와 pure 둘다 명시 안할때 : function 밖의 변수들을 읽어서, 변경을 해야함
    */

    // 1. view
    uint256 public a = 1; // storage 영역

    function read_a() public view returns(uint256){
        return a+2;
    }   

    // 2. pure
    function read_a2() public pure returns(uint256){
        uint256 b = 1; // 함수 내애 로컬 영역
        return 4+2+b;
    }

    // 3. pure, view X
    function read_a3() public returns(uint256){
        a = 13;
        return a;
    }
}