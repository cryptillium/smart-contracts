# smart-contracts

With a new startup created with its own Ethereum-compatible blockchain to help connect financial institutions. The team wants to build smart contracts to automate some company finances to make everyone's lives easier, increase transparency, and to make accounting and auditing practically automatic!

This repo aims to demonstrate how smart contracts with Solidity can be used to Pay your Associate-level employees quickly and easily. <br><br>


# Designing the Contract

![](./images/solidity.JPG)

As you can see from the contract setup, it follows the following logic:

- split the profit into 3 equal shares. 
- send/transfer the profit split to each employee
- transfer the remainder back to the sender

<br><br>

# Tesing the Contract

Below are steps performed in order to test the contract:

### **Connect Metamask to local network**
![](./images/connect-local.png)

### **Configure the Compiler and ensure the version matches**

![](./images/compiler_setup.jpg)


### **Click on 'solidity compiler' and then Compile**

![](./images/compile.jpg)


### **Click on 'deploy and run transactions' and Configure as Follows:**
![](./images/deploy_run01.jpg)


### **Configure the Contract Addresses**<br>
Click on the dropdown to the right of the 'deploy' button and complete the contract addresses.

![](./images/addresses.JPG)

### **Click on Deploy**<br>
![](./images/deploy.jpg)<br>
![](./images/deployed.jpg)<br>
![](./images/confirm.JPG)<br>
![](./images/confirm2.JPG)<br>
![](./images/contract.JPG)<br>


### **Perform a Transaction**<br>
![](./images/balance01.jpg)<br>
![](./images/transact01.jpg)<br>
![](./images/transact02.jpg)<br>
![](./images/transact03.jpg)<br>
![](./images/transact04.jpg)<br>

As you can see after the deposit was made, the balance for the main account
was reduced and the accounts for the 3 employees was equally increased.