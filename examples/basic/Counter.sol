pragma solidity ^0.4.23;

contract Counter {
    uint private count = 0;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }

    function getCount() public view returns (uint) {
        return count;
    }
}