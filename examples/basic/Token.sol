pragma solidity ^0.4.23;



contract Token {
    mapping (address => uint256) public balances;

    function Token(uint256 initialSupply) public {
        balances[msg.sender] = initialSupply;
    }

    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value >= balances[_to]);   // Avoid overflows
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}