
// a simple contract that stores a user's balance
pragma solidity ^0.8.0;

contract Bank {
    mapping (address => uint) public balances;

    function deposit(uint amount) public {
        balances[msg.sender] += amount;
    }

    function getBalance() public returns (uint) {
        return balances[msg.sender];
    }
}

/*In this example, the getBalance function is intended to simply return the user's current balance. 
However, as it's currently written, it's possible for an attacker to exploit this function to modify the balance.

Here's an example of how an attacker could do this:*/

