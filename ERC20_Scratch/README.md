# BIH ERC-20 Project

Welcome to the BIH ERC-20 Project!

This repository contains a Solidity smart contract implementing an ERC-20 token named "Make Love Token (MLT)." The project includes functionalities for token ownership transfer, minting, burning, and standard ERC-20 operations such as transferring and approving token allowances.

## ERC20_project Contract

The `ERC20_project` contract provides basic ownership transfer functionality. It allows the current owner to transfer ownership to a new address. The ownership transfer process requires the new owner to accept the ownership, ensuring a secure transition.

### Functions:
- **transferOwnership(address _to):** Initiates the ownership transfer process. Only the current owner can call this function.

- **acceptOwnership():** Completes the ownership transfer. This function must be called by the new owner.

## MyToken Contract

The `MyToken` contract extends the `ERC20_project` contract and implements the ERC-20 standard functionalities. It includes features like minting, burning, and standard ERC-20 operations.

### Token Information:
- **Name:** Make Love Token
- **Symbol:** MLT
- **Total Supply:** 1,000,000 MLT
- **Decimals:** 18

### ERC-20 Functions:
- **name():** Returns the name of the token.
- **symbol():** Returns the symbol of the token.
- **decimals():** Returns the number of decimals used to display token values.
- **totalSupply():** Returns the total supply of tokens.

### Token Operations:
- **balanceOf(address _owner):** Returns the balance of the specified address.
- **transfer(address _to, uint256 _value):** Sends the specified amount of tokens to the specified address.
- **approve(address _spender, uint256 _value):** Approves any address to spend the value on behalf of the token owner.
- **allowance(address _owner, address _spender):** Returns the token amount remaining that the spender is currently allowed to withdraw from the owner's account.

### Minting and Burning:
- **mint(address _to, uint amount):** Increases the total supply of the token. Only accessible by the owner.
- **burn(uint amount):** Destroys a specified amount of tokens from the caller's balance.

## Getting Started

To get started with the projects in this repository, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Daslaw/BIH_Blockchain_Bootcamp.git
## Usage

The contract was deployed on the Arbitrum Sepolia.

You can use tools like Remix for deployment and testing. 

## License

This smart contract is licensed under the GPL-3.0 license.

## Contributing

If you'd like to contribute to the development of this project, feel free to submit pull requests or open issues on the GitHub repository.

## Acknowledgments

We would like to thank the Arbitrum and BIH communities for their continuous support and contributions to blockchain technology.
