pragma solidity ^0.4.23;

contract Animal {

    string _birthDay; // 生日
    uint public _age; // 年龄
    uint internal _weight; // 身高
    string private _name; // 姓名
    

    constructor() public {
      _age = 29;
      _weight = 170;
      _name = "Lucky dog";
      _birthDay = "2011-01-01";
    }

    function birthDay() view public returns (string) {
      return _birthDay;
    }

    function age() view public returns (uint) {
      return _age;
    }

    function height() view internal returns (uint) {
      return _weight;
    }

    function name() view private returns (string) {
      return _name;
    }

}

contract Gaojin is Animal {
    
    constructor () public {
        _weight = 100;
    }
    
    
}