// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [18강. Array 배열]

// array의 장점은 값들을 순환하는건데, 이는 디도스 공격에 취약할 수 있음
// mapping을 일반적으로 더 선호함 

contract lec18 {

    uint256[] public ageArray;
    // 사이즈 정의하기
    uint256[10] public ageFixedSizeArray;
    // 배열값 미리 정의하기
    string[] public nameArray = ["Kai", "Jhon", "Kerri"];

    function AgeLength() public view returns(uint256) {
        return ageArray.length;
    }

    function AgePush(uint256 _age) public {
        ageArray.push(_age);
    }

    function AgeGet(uint256 _index) public view returns(uint256) {
        return ageArray[_index];
    }

    // 가장 최신의 값을 삭제. length 제일 마지막거. 배열의 길이가 줄어듬
    function AgePop() public {
        ageArray.pop();
    }

    // 해당 index값에 해당하는 값을 삭제
    // 다만 값을 삭제하고 0을 default로 넣어줌으로써 길이가 줄어들지 않음
    function AgeDelete(uint256 _index) public {
        delete ageArray[_index];
    }

    function AgeChange(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }
}
