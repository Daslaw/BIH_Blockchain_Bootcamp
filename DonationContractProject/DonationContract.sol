// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
// Create a Simple Donation Contract with Solidity @BIH Project

contract DonationContract {
    uint256 public totalDonations;
    address payable public owner;
    address payable public donationAddress = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    event DonationReceived(address indexed donor, uint256 amount);

    constructor(){
        owner = payable (msg.sender);
    }

    function donate() public payable {
        require(msg.value > 0, "Donation amount must be greater than 0");
        totalDonations += msg.value;
        emit DonationReceived(msg.sender, msg.value);
        donationAddress.transfer(msg.value);
    }

    function withdraw() public payable {
        require(msg.sender == owner, "Only the contract owner can withdraw");
        require(totalDonations > 0, "There are no funds to withdraw");
        uint256 amount = totalDonations;
        totalDonations = 0;
        owner.transfer(amount);
    }
    
}
