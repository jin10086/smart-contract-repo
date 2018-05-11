pragma solidity ^0.4.23;

import "./safeMath.sol";

contract SafeCounter {
    using SafeMath for uint;

    uint private count = 0;

    function increment() public {
        count = count.add(1);
    }

    function decrement() public {
        count = count.sub(1);
    }

    function getCount() public constant returns (uint) {
        return count;
    }
}