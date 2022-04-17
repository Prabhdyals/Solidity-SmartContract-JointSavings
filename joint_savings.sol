pragma solidity ^0.5.0;

// Defined a new contract named `JointSavings`
contract JointSavings {

    /*
    Inside the new contract defined the following variables:
    - Two variables of type `address payable` named `accountOne` and `accountTwo`
    - A variable of type `address public` named `lastToWithdraw`
    - Two variables of type `uint public` named `lastWithdrawAmount` and `contractBalance`.
    */
    address payable accountOne; 
    address payable accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    /*
    Defined a function named **withdraw** that will accept two arguments.
    - A `uint` variable named `amount`
    - A `payable address` named `recipient`
    */
    function withdraw(uint amount, address payable recipient) public {

        /*
        Defined a `require` statement that checks if the `recipient` is equal to either `accountOne` or `accountTwo`. The `require` statement returns the text `"You don't own this account!"` if it does not.
        */
        require(recipient == accountOne||recipient == accountTwo,"You don't own this account!");

        /*
        Defined a `require` statement that checks if the `balance` is sufficient to accomplish the withdraw operation. If there are insufficient funds, the text `Insufficient funds!` is returned.
        */
        require(address(this).balance >= amount,"Insufficient funds!");

        /*
        Added and `if` statement to check if the `lastToWithdraw` is not equal to (`!=`) to `recipient` If `lastToWithdraw` is not equal, then set it to the current value of `recipient`.
        */
       /* if (lastToWithdraw!=recipient){*/
            lastToWithdraw=recipient;
          /*  }*/
        // Set  `lastWithdrawAmount` equal to `amount`
            lastWithdrawAmount=amount;

        // Called the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance` to reflect the new balance of the contract.
            contractBalance=address(this).balance-amount;

        // Called the `transfer` function of the `recipient` and passed it the `amount` to transfer as an argument.
        return recipient.transfer(amount);
    }
    
    // Defined a `public payable` function named `deposit`.
    function deposit() public payable {

        /*
        Called the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance`.
        */
        contractBalance=address(this).balance;
    }

    /*
    Defined a `public` function named `setAccounts` that receive two `address payable` arguments named `account1` and `account2`.
    */
    function setAccounts(address payable account1, address payable account2) public{

        // Set the values of `accountOne` and `accountTwo` to `account1` and `account2` respectively.
       accountOne=account1;
       accountTwo=account2;
    }

    /*
    Finally, added the **default fallback function** so that contract can store Ether sent from outside the deposit function.
    */ function() external payable{

    }
    
}
