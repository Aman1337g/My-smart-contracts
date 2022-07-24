# Smart Contract Processing 

## Structure

- List of Functions: 
    - Constructor 
    - Fallback 
    - View 
    - Pure 
    - Public
    - Private 
    - Internal
    - External
- User defined types in struct and enums
- Modifiers
- Events

## Processing and Deploying 

- Smart Contract needs an address to get deployed and invoke its function.
- Address computed by hashing the account and nounce.
- ABI(Application Binary Interface) generated for HLL applications.
- EVM provies execution environment for smart contract bytecode.

# REMIX

- Remix is a powerful, open source tool that helps us to write Solidity contracts straight from the browser. Written in JavaScript, Remix supports both usage in the browser and locally.

- Remix also supports testing, debugging and deploying of smart contracts and much more.

# What is Solidity?

Solidity is an object-oriented programming language created for the Ethereum network or the Ethereum Virtual Machine (EVM) so to say, to implement smart contracts. According to the official documentation, it is a curly bracket language.

If you are somewhat familiar with Python, C++, or JavaScript, then you will find it easier to learn Solidity because of its similarity with those languages. Like most other languages, this language too supports inheritance, libraries, tools, and complex user-defined types, making coding easier for developers.

Solidity files are identified by a ‘.sol’ file extension name. It is a statically typed language. While I write, the latest stable version of Solidity released is v0.8.15. you can find the link to the [Solidity official docs](https://docs.soliditylang.org/en/v0.8.15/) by clicking here.

## What are Smart Contracts?

Smart contracts are nothing but applications or programs on the Ethereum network, that administer how accounts on the network behave.

They are nothing but programs or applications stored on decentralized blockchains. They run when predetermined conditions are met and are commonly used to automate the execution of an agreement.

Here’s a simple smart contract code is written in Solidity:

```solidity
contract Inbox {
    string public message;
 
    function Inbox(string initialMessage) public {
        message = initialMessage;
    }
 
    function setMessage(string newMessage) public {
        message = newMessage;
    }
 
    function getMessage() public view returns (string) {
        return message;
    }
}
```
Read here in detail about [Smart Contracts](https://www.ibm.com/topics/smart-contracts).