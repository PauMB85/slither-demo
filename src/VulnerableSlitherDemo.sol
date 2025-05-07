// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

/**
 * @title VulnerableSlitherDemo
 * @dev This contract deliberately contains various vulnerabilities for Slither to detect
 * DO NOT USE IN PRODUCTION
 */
contract VulnerableSlitherDemo {
    mapping(address => uint) public balances;

    // VULNERABILITY: Reentrancy
    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        (bool success, ) = msg.sender.call{value: _amount}("");
        require(success, "Transfer failed");

        balances[msg.sender] -= _amount;
    }

    // VULNERABILITY: Unprotected self-destruct
    function closeBank() public {
        // No access control
        selfdestruct(payable(msg.sender));
    }

    // VULNERABILITY: unused return value
    function donate() public payable {
        balances[msg.sender] += msg.value;
        msg.sender.call{value: 0}("");
    }
}
