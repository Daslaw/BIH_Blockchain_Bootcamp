# Donation SmartContract Project

## Overview

This project contains a Solidity smart contract named DonationContract designed for creating a simple donation platform on the Ethereum blockchain.

The contract allows users to make donations to a specific address, and the owner of the contract can withdraw the accumulated funds. The contract is licensed under GPL-3.0.

## Smart Contract Functions

### 1. `Donate`

- **Description**: Allows users to make donations to the specified donation address.
- **Modifiers**: Requires a non-zero donation amount.
- **Effects**: Increments the totalDonations variable, emits a DonationReceived event, and transfers the donated amount to the specified donation address.

### 2. `withdraw`

- **Description:** Enables the contract owner to withdraw the accumulated donations.
- **Modifiers**: Requires the sender to be the contract owner and that there are funds available for withdrawal.
- **Effects**: Transfers the total accumulated donations to the contract owner and resets the totalDonations variable to zero.

### 3. `Contract State Variables`

- **totalDonations:** Tracks the total amount of donations received.
- **owner**: Stores the address of the contract owner.
- **donationAddress**: The designated address to which donations are sent.

## Usage

To use this smart contract, deploy it on a compatible Ethereum network using tools like Remix. 

After deployment, users can make donations using the donate function, and the owner can withdraw the accumulated funds using the withdraw function.


## License

This smart contract is licensed under the GPL-3.0 license.

## Contributing

If you'd like to contribute to the development of this project, feel free to submit pull requests or open issues on the GitHub repository.

## Acknowledgments

We would like to thank the Arbitrum and BIH communities for their continuous support and contributions to blockchain technology.
