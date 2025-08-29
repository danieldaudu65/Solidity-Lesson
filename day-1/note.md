# Solidity Development 101 – Day 1  

## 📖 What is Solidity?  

Solidity is a **programming language** used to write **smart contracts** on the blockchain (mainly Ethereum).  

Think of a **smart contract** like a digital agreement that runs automatically.  

- Example: If I send money to a smart contract, it can automatically transfer tokens to someone else without needing a middleman (like a bank).  

In simple terms, Solidity is the **language we use to tell the blockchain what to do**.  

---

## What I Learned Today  

### 1. SPDX-License Identifier  

```solidity
// SPDX-License-Identifier: MIT

 - This is a license tag that tells people the rules for reusing your code.

 - MIT means anyone can use, copy, or improve your code freely, as long as they give credit.

## 2. Pragma Solidity (Compiler Version)

pragma solidity 0.8.19;

 - This line tells the compiler which version of Solidity your contract should use.

 - Example: If I write pragma solidity 0.8.19;, it means only version 0.8.19 will work.

- If your compiler is 0.8.30, the code will not compile unless you update the pragma line or switch compilers.

Using Caret (^)

pragma solidity ^0.8.19;

Using Ranges

pragma solidity >=0.8.18 <0.9.0;

## Best practice: use

pragma solidity ^0.8.0;

## 3. Compiler

The Solidity compiler (solc) translates Solidity code into bytecode, which the Ethereum Virtual Machine (EVM) understands.

Think of it as a translator that turns your Solidity “English” into blockchain “machine language.”

## 4. Contract

contract SimpleStorage {

}
A contract is like a container where you put variables (data) and functions (logic).

✅ Summary (Layman’s Terms)
Today, I built the skeleton of my first smart contract:

Added a license (MIT) so people know the rules.

Specified the compiler version and learned about ^ and ranges.

Understood the role of the compiler.

Created my first empty contract called SimpleStorage.

Even though it does nothing yet, this is the foundation for blockchain apps.


---
