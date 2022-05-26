// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// 생성자는 변수의 값을 초기화할때 주로 쓴다.
// 즉 생성자는 어떤 컨트랙트를 인스턴스화 할때 초기값을 넣어주게 만드는것 

contract A{
    string public name;
    uint256 public age;
    
    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

// 인스턴스화 하면 가스가 많이 소비됨
// B안에서 A자체를 다 가져오기 때문에 가스 소비가 많아짐 

contract B{
    A instance = new A("Jaewon", 29);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }

    function get() public view returns(string memory, uint256){
        return (instance.name(), instance.age());
    }
}