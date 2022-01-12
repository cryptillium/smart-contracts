pragma solidity ^0.5.0;

// lvl 1: equal split
// This is just the name of the contract
contract AssociateProfitSplitter {
// @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.

    address payable employee_one;
    address payable employee_two;
    address payable employee_three;

    constructor(address payable _one, address payable _two, address payable _three) public {
    // we start by defining the constructor parameters of the payable addresses:
    // these variables are set as public variables so that it can be accessible from anywhere

        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        // here we actually want to split the deposit amount 
        // into 3 equal shares as there are three employees to distribute the profits to
        uint amount = msg.value/3;

        // @TODO: Transfer the amount to each employee
        // now we perform the transfer of the profits back to each employees
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        // we finish up by transferring any remaining wei back to the sender.
        uint left_over = msg.value - amount * 3;
        msg.sender.transfer(left_over);
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        deposit();
    }
}
