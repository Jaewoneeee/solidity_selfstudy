// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [19강. Mapping과 Array 주의할점]

// mapping과 array는 값을 받아 변경이 되어도 변경된값을 업데이트를 해줘야한다.

contract lec19 {
    uint256 num = 89;
    mapping(uint256 => uint256) numMap;
    uint256[] numArray;

    function changeNum(uint256 _num) public {
        num = _num;
    }

    function showNum() public view returns(uint256) {
        return num;
    }

    function numMapAdd() public {
        numMap[0] = num;
    }

    function showNumMap() public view returns(uint256) {
        return numMap[0];
    }

    function numArrayAdd() public {
        numArray.push(num);
    }

    function showNumArray() public view returns(uint256) {
        return numArray[0];
    }
}