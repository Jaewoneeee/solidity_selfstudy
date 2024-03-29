// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [20강. struct 구조체]
// 우리만의 타입을 만드는것

contract lec20{

    struct Character{
        uint256 age;
        string name;
        string job;
    }

    // 이렇게 하면 Character라는 구조체가 하나의 타입이 된것임!
    mapping(uint256 => Character) public CharacterMapping;
    Character[] public CharacterArray;

    function createCharacter(uint256 _age, string memory _name, string memory _job) pure public returns(Character memory) {
        return Character(_age, _name, _job);
    }

    //==

    function createCharacterMapping(uint256 _key, uint256 _age, string memory _name, string memory _job) public {
        CharacterMapping[_key] = Character(_age, _name, _job);
    }

    function getCharacterMapping(uint256 _key) public view returns (Character memory) {
        return CharacterMapping[_key];
    }

    function createCharacterArray(uint256 _age, string memory _name, string memory _job) public {
        CharacterArray.push(Character(_age, _name, _job));
    }

    function getCharacterArray(uint256 _index) public view returns(Character memory){
        return CharacterArray[_index];
    }
}