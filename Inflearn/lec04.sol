// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

contract lec4{
    /*
    function 이름() public { // (public,private,internal,external) 변경가능 (접근제한자)
        // 내용
    }
    */
   
   //1. parameter 와 return 값이 없는 function 
   uint256 public a = 3;
   function changeA1() public{
       a = 5;
   }
   
   //2. parameter 값이 있는 function 
   function changeA2(uint256 _value) public{
       a = _value;
   }
   // 값을 입력했을때 그 값이 (_value) a에 들어가도록 
   
   //3. return 값이 있는 function
   function changeA3() public view returns(uint256){
       return a;
   }
   //4. parameter 와 return 값이 있는 function  (2번과 비교해서 보면 좋음)
   function changeA4(uint256 _value) public returns(uint256){
       //                                  어떤 값을 return할것인지 그 값을 써줘야한다.
       a = _value;
       return a;
   }
}