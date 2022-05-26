// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [16강. 상속5 - 상속의 순서]


contract Father{
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("KimJaewon");
    }
}

contract Mother{
    event MotherName(string name);
    function who() public virtual {
        emit MotherName("LeeSol");
    }
}

contract Son is Father, Mother {
    
    function who() public override(Father, Mother){
        super.who();
        // 2개중에 motherName을 가져온다. 가장 최신것이기 때문
        // 21번째줄에 Mother, Father로 작성한다면 Father의 값을 가져온다 
        // 즉 상속의 순서는 맨오른쪽. 가장 최신의것을 가져온다 
    }
}
