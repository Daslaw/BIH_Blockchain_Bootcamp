# BIH NFT Project

Welcome to the BIH NFT Project!

This repository contains a Solidity smart contract implementing an ERC-721 non-fungible token (NFT) named "NFT project @BIH." The project leverages the OpenZeppelin library for ERC-721 and Ownable functionalities.

## My_BIH_NFT Contract

The `My_BIH_NFT` contract extends the `ERC721URIStorage` contract from OpenZeppelin and utilizes the `Ownable` contract to manage ownership. It provides the ability to mint NFTs with unique token IDs and associated metadata URIs.

### Contract Details:
- **Name:** NFT project @BIH
- **Symbol:** NFT

### Constructor:
- **My_BIH_NFT(address Owner):** Initializes the contract with the provided owner address. The contract inherits from the OpenZeppelin `Ownable` contract and sets the ERC-721 metadata.

### Minting Functionality:
- **mint(address _to, uint256 _tokenId, string calldata _uri):** Mints a new NFT with the specified token ID and associates it with the given URI. Only the owner can call this function.

## Getting Started

To get started with this NFT project, follow these steps:

## Getting Started

To get started with the projects in this repository, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/Daslaw/BIH_Blockchain_Bootcamp.git

2. Install the necessary dependencies. In this case, OpenZeppelin contracts:

   ```bash
   npm install @openzeppelin/contracts@4.3.2
   ```

3. Explore the contract functionalities and adapt the project for your needs. You can deploy this contract on the Ethereum blockchain or any compatible network.
## License

This smart contract is licensed under the GPL-3.0 license.

## Contributing

If you'd like to contribute to the development of this project, feel free to submit pull requests or open issues on the GitHub repository.

## Acknowledgments

We would like to thank the Arbitrum and BIH communities for their continuous support and contributions to blockchain technology.
