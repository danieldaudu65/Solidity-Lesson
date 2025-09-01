# Solidity Development 101 – Day 2: Basic Data Types & Variables

## 📌 Introduction

In Solidity, **variables** are used to store data in smart contracts. Each variable has a **type** that defines what kind of data it can hold. Solidity supports multiple data types including:

- Boolean (`bool`)
- Integer (`int` / `uint`)
- String (`string`)
- Address (`address`)
- Bytes (`bytes`)

Understanding these basic types is crucial when building smart contracts.

---

## 🔹 Boolean Type

The `bool` type can have **two values**: `true` or `false`.  
It is mainly used for **conditions and flags**.

```solidity
bool isActive = false;
 - isActive is initialized to false.
 - Can be toggled later in the contract.

🔹 Integer Types
Solidity supports both unsigned integers (uint) and signed integers (int).

uint256 age = 25;           // Unsigned integer (0 and above)
int256 temperature = -10;   // Signed integer (can be negative)
uint256 cannot be negative.

int256 can hold negative values.

🔹 String Type
Strings are used to store text data.

 - string favouriteInText = "88";
 - string the_word = "This is a string in Solidity";

Strings are useful for human-readable data like names, messages, etc.

🔹 Address Type
The address type stores Ethereum addresses, usually for ownership or transactions.

 - address owner = 0x1234567890123456789012345678901234567890;

owner can later be used to verify contract ownership or send Ether.

🔹 Bytes Type
 bytes stores raw byte data.
 bytes32 is a fixed-size array of 32 bytes.

 - bytes32 favouriteBye = "cat";

Efficient for storing small fixed-size data.

Can be converted to string if needed.

🔹 Default Values

Solidity automatically assigns default values to uninitialized variables:

uint256 favouriteNumber; // defaults to 0
bool isActive;           // defaults to false
address owner;           // defaults to 0x0000000000000000000000000000000000000000
It’s always good practice to initialize variables explicitly.


🔹 Example: SimpleStorage Contract
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    bool isActive = false;
    uint256 age = 25;
    int256 temperature = -10;
    string favouriteInText = "88";
    string the_word = "This is a string in Solidity";
    address owner = 0x1234567890123456789012345678901234567890;
    bytes32 favouriteBye = "cat";
    uint256 favouriteNumber; // defaults to 0
}
This contract demonstrates basic variables in Solidity.

You can expand this by adding functions to update or read these variables.

