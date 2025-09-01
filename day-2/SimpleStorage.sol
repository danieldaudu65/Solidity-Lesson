// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract VariablePlayground {

    // ------------------------------
    // 1️⃣ Boolean
    // ------------------------------
    bool isActive = true;
    bool isVerified = false;
    bool isReady = isActive; // you can assign from another variable

    // ------------------------------
    // 2️⃣ Integers
    // ------------------------------
    uint256 age = 25;
    uint256 doubleAge = age * 2; //  can use constant expressions
    int256 temperature = -10;
    int256 tempAfterChange = temperature + 5;

    // ------------------------------
    // 3️⃣ Strings
    // ------------------------------
    string favouriteWord = "Solidity";
    string greeting = string(abi.encodePacked("Hello ", favouriteWord)); // concatenate strings

    // ------------------------------
    // 4️⃣ Address
    // ------------------------------
    address owner = 0x1234567890123456789012345678901234567890;
    address anotherAddress = owner; // assign one address to another

    // ------------------------------
    // 5️⃣ Bytes
    // ------------------------------
    bytes32 favouriteBytes = "cat";
    bytes32 copiedBytes = favouriteBytes;

    // ------------------------------
    // 6️⃣ Arrays
    // ------------------------------
    uint256[] numbers = [1, 2, 3];
    uint256[] moreNumbers = numbers;  // This won't copy dynamically in Solidity
    // but you can reference constant arrays using memory (needs function)

    string[] favouriteFoods = ["Pizza", "Burger"];
    string[] moreFoods = favouriteFoods; // same as above, works in memory only

    // ------------------------------
    // 7️⃣ Mapping (can’t assign to another mapping)
    // ------------------------------
    mapping(address => uint256) balances;
    // mapping(address => uint256) copyBalances; // not allowed, mappings cannot be copied directly

    // ------------------------------
    // 8️⃣ Structs (nested variables!)
    // ------------------------------
    struct Person {
        string name;
        uint256 age;
        bool isActive;
    }

    Person alice = Person("Alice", 30, true);
    Person bob = Person(alice.name, alice.age + 5, !alice.isActive); // nested variable usage

}
