// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.7.0 < 0.9.0;

// [15강. 상속4 - super]


contract Father{
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("KimJaewon");
    }
}

contract Son is Father {
    event sonName(string name);
    function who() public override{
        // 만약 father에 emit이 엄청많다면 일일히 써주기가 빡셈. 그래서 super를 쓴다
        super.who();
        emit sonName("KimJin");
    }
}
