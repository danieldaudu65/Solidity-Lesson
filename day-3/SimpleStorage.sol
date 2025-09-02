// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Day3Functions {
    // State variables
    uint256 public storedNumber;
    address public owner;

    // Constructor runs only once when the contract is deployed
    constructor(uint256 _initialNumber) {
        storedNumber = _initialNumber;
        owner = msg.sender; // whoever deploys is the owner
    }

    // ------------------------
    // FUNCTION VISIBILITY
    // ------------------------

    // Public: accessible from anywhere (other contracts + externally)
    function storeNumber(uint256 _num) public {
        storedNumber = _num;
    }

    // Private: only accessible inside this contract
    function doubleStoredNumber() private view returns (uint256) {
        return storedNumber * 2;
    }

    // Internal: accessible inside this contract and child contracts
    function getTripleStoredNumber() internal view returns (uint256) {
        return storedNumber * 3;
    }

    // External: can only be called from outside the contract (not from within)
    function callDoubleExternally() external view returns (uint256) {
        return storedNumber * 2;
    }

    // ------------------------
    // FUNCTION TYPES
    // ------------------------

    // View: reads from blockchain state (no gas when called externally)
    function getNumber() public view returns (uint256) {
        return storedNumber;
    }

    // Pure: does not read/write blockchain state
    function addNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Payable: allows function to receive Ether
    function deposit() public payable {}

    // Get balance of contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Withdraw only by owner
    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Not the owner!");
        payable(owner).transfer(amount);
    }

    // ------------------------
    // FUNCTION SCOPE EXAMPLE
    // ------------------------

    function scopedExample(uint256 _x) public pure returns (uint256) {
        uint256 localValue = 5; // local variable (only exists inside this function)
        {
            uint256 innerValue = 10; // block scope
            return _x + localValue + innerValue; // works here
        }
        // innerValue would not be accessible here (out of scope)
    }

    // Gas efficiency: smaller types like uint8 cost more if not packed properly
    uint8 smallNumber = 1; // smaller but not always cheaper
}
