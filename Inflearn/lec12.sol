// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [12강. 상속3 - 2개 이상 상속하기]

contract Father{
    uint256 public fatherMoney = 100;
    function getFatherName() public pure returns(string memory){
        return "Jaewon";
    }

    function getMoney() public view virtual returns(uint256){
        return fatherMoney;
    }
}

contract Mother{
    uint256 public motherMoney = 500;
    function getMotherName() public pure returns(string memory){
        return "Mother";
    }
    
    function getMoney() public view virtual returns(uint256){
        return motherMoney;
    }
}

// 2개 이상의 스마트컨트랙을 상속받고, 그 안에 함수명이 같을때 오버라이딩을 해줘야한다
contract Son is Father, Mother{
    function getMoney() public view override(Father,Mother) returns(uint256){
        return fatherMoney + motherMoney;
    }
}