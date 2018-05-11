pragma solidity ^0.4.23;

contract Owned {
    address public owner;
    event TransferOwner(address);
    constructor () public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
        emit TransferOwner(owner);
    }
}