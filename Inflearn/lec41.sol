// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

//import "/lect41.sol";
//import "https://github.com/OpenZeppelin/openzeppelin-contract s/blob/docs-v3.x/contracts/math/SafeMath.sol";

library SafeMath0{
    //0~255;
    function add(uint8 a, uint8 b) internal pure returns (uint8) {
        require(a+b >= a , "SafeMath: addition overflow");
        return a + b;
    }
}

contract HiSolidity{
    event Hi(string _str);
    
    function hi() public {
        emit Hi("Hello solidity");
    }
}

contract lec41 {
    using SafeMath for uint256;
    uint public a;
    uint public maximum = ~uint256(0); // ==2**256-1; // 2**256 == 2^256
    function becomeOverflow(uint _num1, uint _num2) public {
        a = _num1.add(_num2);
    }
}