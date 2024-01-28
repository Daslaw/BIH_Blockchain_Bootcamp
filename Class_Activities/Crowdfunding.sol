// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Crowdfunding {
    uint256 immutable goal;
    uint256 progress;
    uint256 deadline = block.timestamp + 5 minutes;
    address owner;

    constructor(uint256 goal_, uint256 deadline_){
        owner= msg.sender;
        goal = goal_;
        deadline = deadline_;
    }


    function deposit() external  payable {
        require(msg.value >= 1 ether, "You can send 1 ether or above");

        progress += msg.value;
    }

    function withdraw() external {
        require(msg.sender == owner, "You can are not the owner");
        require(progress >= goal || block.timestamp > deadline, "goal reached , thank you");

        uint256 balance = address(this).balance;


        // owner.transfer();
        payable(owner).transfer(balance);
    }
}
