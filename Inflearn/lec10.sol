// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [10강. 상속1 - 정의]

contract Father{
    string public familyName = "Kim";
    string public giveName = "Jaewon";
    uint256 public money = 100;

    constructor(string memory _giveName) public {
        giveName = _giveName;
    }

    function getFamilyName() view public returns(string memory){
        return familyName;
    }

    function getGiveName() view public returns(string memory){
        return giveName;
    }

    function getMoney() view public returns(uint256){
        return money;
    }
}

contract Son is Father("Hoho"){

}