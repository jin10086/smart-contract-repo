pragma solidity ^0.4.23;

contract Storage {
    uint data;

    function set(uint x) public {
        data = x;
    }

    function get() public view returns (uint) {
        return data;
    }
}