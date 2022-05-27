// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [17강. Mapping]

// mapping은 key와 value로 이루어져 있다. 
// 특정한 key를 입력하면 그에 해당하는 value값을 반환

// key와 value로 이루어져있기때문에 length를 구할 수 없다. 
contract lec17{

        // key값의 타입,  value값의 타입
    mapping(uint256 => uint256) private ageList;
    mapping(string => uint256) private priceList;
    mapping(uint256 => string) private nameList;

    function setAgeList(uint256 _index, uint256 _age) public {
        ageList[_index] = _age;
    }

    function getAge(uint256 _index) public view returns(uint256) {
        return ageList[_index];
    }


    function setPriceList(string memory _itemName, uint256 _price) public {
        priceList[_itemName] = _price;
    }

    function getPrice(string memory _index) public view returns(uint256) {
        return priceList[_index];
    }
    
    
    function setNameList(uint256 _index, string memory _name) public {
        nameList[_index] = _name;
    }

    function getName(uint256 _index) public view returns(string memory) {
        return nameList[_index];
    }
}

