// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

/*
public : 모든곳에서 접근 가능 
external : public 처럼 모든 곳에서 접근 가능하나, exteranal 이 정의된 자기자신의 스마트컨트랙 내에서 접근 불가
private: 오직 private이 정의된 자기자신의 스마트컨트랙에서만 가능( private이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근불가)
interal : private 처럼 오직 internal이 정의된 자기자신의 스마트컨트랙에서도 가능( internal이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근가능)
*/
contract lec5{
    
    //1.public
    uint256 public a = 3;
    
    //2.private
    uint256 private a2 = 5;
    // lec5라는 스마트컨트랙 안에서만 접근이 가능
    // 스마트컨트랙 내가 아니라 밖에서 deploy를 했기 때문에 접근이 불가능하다
    
}

// 여길를 public, private, external 로 바꾸면서 deploy실험해보기
contract Public_example {
    uint256 public a = 3;
    
    function changeA(uint256 _value) public {
        a =_value;
    }
    function get_a() view public returns (uint256)  {
        return a;
    }
}

contract Public_example_2 {
    
    Public_example instance = new Public_example();

    function changeA_2(uint256 _value) public{
      instance.changeA(_value);
    }
    function use_public_example_a() view public returns (uint256)  {
        return instance.get_a();
    }
}

// contract private_example {
//     uint256 private a = 3;
    
//     function get_a() view public returns (uint256)  {
//         return a;
//     }

// }

// contract external_example {
//     uint256 private a = 3;
    
//     function get_a() view external returns (uint256)  {
//         return a;
//     }

// }

// contract external_example_2 {
    
//     external_example instance = new external_example();

//     function external_example_get_a() view public returns (uint256)  {
//         return instance.get_a();
//     }
// }
