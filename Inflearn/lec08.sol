// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// instance - 하나의 컨트랙에서 다른 컨트랙을 접근할때 사용 

contract A{
    uint256 public a = 5;
    
    function change(uint256 _value) public {
        a = _value;
    }
}

// B컨트랙에서 A컨트랙을 사용해보자
// A본연의 값을 가져오는게 아니라 A의 분신을 만들어서 쓰는것
// B에서 A값을 바꿔도 A안에 있는 값은 바뀌지 않는다 
contract B{

    A instance = new A();

    // a값을 읽어오기만 하기때문에 view를 써줬음
    function get_A() public view returns(uint256){
        return instance.a(); //변수를 접근할때는 () 를 붙여야 리턴이 된다
    }
    function change_A(uint256 _value) public {
        instance.change(_value);
    }
}