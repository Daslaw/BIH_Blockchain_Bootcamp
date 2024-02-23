// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract My_BIH_NFT is ERC721URIStorage, Ownable {
    constructor(address Owner) Ownable(Owner)ERC721("NFT project @BIH", "NFT") {}

    function mint(
        address _to,
        uint256 _tokenId,
        string calldata _uri
    ) external onlyOwner {
        _safeMint(_to, _tokenId);
        _setTokenURI(_tokenId, _uri);
    }
}
