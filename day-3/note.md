# Solidity Development 101 – Day 3  

## 🔥 Topic: Functions, Ether, and Visibility  

Today is getting hotter – we’re diving deep into **functions**, **ether handling**, and **function visibility** in Solidity. These are fundamental concepts that affect how smart contracts behave, how much gas they cost, and how secure they are.  

---

## 📌 What is a Function in Solidity?  

A **function** is a block of reusable code inside a smart contract. Functions allow us to:  
- Store and retrieve values.  
- Handle payments (Ether).  
- Control visibility (who can call the function).  
- Optimize gas usage by defining scopes properly.  

---

## 🧑‍💻 Function Syntax  

```solidity
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint public data;

    // Store a value
    function store(uint _data) public {
        data = _data;
    }

    // Retrieve a value
    function retrieve() public view returns (uint) {
        return data;
    }
}
⚡ Function Visibility
In Solidity, functions can have visibility specifiers that determine who can access them:


 - public

Anyone (external or internal) can call the function.

Default for functions if not specified (but best practice: always declare).


function store(uint _data) public {
    data = _data;
}

 - private

Only accessible inside the contract where it is defined.

Cannot be called by derived contracts.


function _calculate(uint _x) private pure returns (uint) {
    return _x * 2;
}

 - internal

Accessible within the contract and derived contracts (inheritance).

Not accessible by external accounts.


function setInternal(uint _value) internal {
    data = _value;
}


 - external

Can only be called from outside the contract (not by internal functions).

Often used for APIs that users or other contracts call.

function externalCall(uint _x) external pure returns (uint) {
    return _x + 1;
}
- Tip: Always choose the minimum visibility needed for security & gas optimization.

💰 Functions and Ether
Some functions deal with Ether directly.

payable

Allows the function to receive Ether.

function deposit() public payable {}
withdraw

Withdraw Ether stored in the contract.

function withdraw() public {
    payable(msg.sender).transfer(address(this).balance);
}


Function Types (Gas Optimization)
view

Doesn’t modify state, only reads.

Doesn’t cost gas if called externally.

function getBalance() public view returns (uint) {
    return address(this).balance;
}
pure

Doesn’t read or modify state.

Gas free when called externally.

solidity
Copy code
function add(uint a, uint b) public pure returns (uint) {
    return a + b;
}
payable

Special type to allow ETH transactions.

⚖️ Function Scopes & Gas
Local variables (inside a function) cost less gas compared to state variables (stored permanently on the blockchain).

Writing to storage (state variables) is expensive, while reading from memory is cheap.

Function visibility affects gas:

public functions generate extra getter functions → slightly more gas.

external can sometimes be cheaper when passing arrays or large data.

🚀 Example – Complete Contract

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    uint private balance;

    // Deposit ether into the contract
    function deposit() public payable {
        balance += msg.value;
    }

    // Withdraw ether
    function withdraw(uint _amount) public {
        require(_amount <= balance, "Not enough balance");
        balance -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    // View balance (gas free if called externally)
    function getBalance() public view returns (uint) {
        return balance;
    }

    // Pure function (no state change)
    function double(uint x) public pure returns (uint) {
        return x * 2;
    }

    // Internal function (only inside or child contracts)
    function internalHelper() internal pure returns (string memory) {
        return "Helper function";
    }
}