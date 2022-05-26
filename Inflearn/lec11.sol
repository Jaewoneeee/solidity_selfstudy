// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [11강. 상속2 - 오버라이딩]
// 간단하게 덮어씌우기 라고 생각하면 된다

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

    function getMoney() view virtual public returns(uint256){
        return money;
    }
}

contract Son is Father("Haha"){

    // 이런식으로 쓸 수 있음 
    // constructor() Father("Haha") {
    // } 

    uint256 public earning = 0;
    
    function work() public {
        earning += 100;
    }

    // override를 씀으로서 overriding 됐다는것을 알려주는것
    function getMoney() view public override returns(uint256){
        return money + earning;
    }
}