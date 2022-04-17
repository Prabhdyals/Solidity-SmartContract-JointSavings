Solidity "Joint Savings Account"

![alt=“”](Images/20-5-challenge-image.png)

### Background

To automate the creation of joint savings accounts,Solidity smart contract that accepts two user addresses. These addresses will be able to control a joint savings account. The smart contract will use ether management functions to implement a financial institution’s requirements for providing the features of the joint savings account. These features will consist of the ability to deposit and withdraw funds from the account.

### What's Being Created

* The completed Solidity `JointSavings` smart contract.

* A folder named `Execution_Results` that contains at least eight images. These images confirms that the deposit and withdrawal transactions, which are designed to test the `JointSavings` functionality in the JavaScript VM, worked as expected.

#### Step 1: Created a Joint Savings Account Contract in Solidity
Joint Savings Account
---------------------

To automate the creation of joint savings accounts, created a solidity smart contract that accepts two user addresses that are then able to control a joint savings account.Smart contract uses ether management functions to implement various requirements from the financial institution to provide the features of the joint savings account.

Thefile for this contains a `pragma` for solidity version `5.0.0`.
following steps were accomplished:

1. Created and worked within a local blockchain development environment using the JavaScript VM provided by the Remix IDE.

2. Scripted and deployed a **JointSavings** smart contract.

3. Interacted with deployed smart contract to transfer and withdraw funds.
#### Step 2: Interaction with Deployed Smart Contract

Now that contract is deployed, it’s time to test its functionality! After each step, captured a screenshot of the execution, and then saved it in a folder named `Execution_Results`. Shared this folder with files.

To show interaction with deployed smart contract, completed the following steps:

1. Used the `setAccounts` function to define the authorized Ethereum address that will be able to withdraw funds from your contract.

     > **Note** You can either use the following Ethereum addresses or create new, dummy addresses on the [Vanity-ETH](https://vanity-eth.tk/) website, which includes an Ethereum vanity address generator.
    >
    > ```text
    > Dummy account1 address: 0x0c0669Cd5e60a6F4b8ce437E4a4A007093D368Cb
    > Dummy account2 address: 0x7A1f3dFAa0a4a19844B606CD6e91d693083B12c0
    > ```

2. Test the deposit functionality of your smart contract by sending the following amounts of ether. After each transaction, use the `contractBalance` function to verify that the funds were added to your contract:

    * Transaction 1: Send 1 ether as wei.

    * Transaction 2: Send 10 ether as wei.

    * Transaction 3: Send 5 ether.

    > **Note** Remembering how to convert ether to wei and vice versa can be challenging. So, you can use a website like [Ethereum Unit Converter](https://eth-converter.com/) to ease doing the conversion.

3. Once you’ve successfully deposited funds into your contract, test the contract’s withdrawal functionality by withdrawing 5 ether into `accountOne` and 10 ether into `accountTwo`. After each transaction, use the `contractBalance` function to verify that the funds were withdrawn from your contract. Also, use the `lastToWithdraw` and `lastWithdrawAmount` functions to verify that the address and amount were correct.

---

### Submission

* Upload the files for this assignment to your GitHub repository.

* Submit the link to your GitHub repo on Bootcamp Spot.

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

