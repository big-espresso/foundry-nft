// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIDToURI;

    constructor() ERC721("DogeCity", "DOG") {
        s_tokenCounter = 0;
    }

    function mintNFT(string memory newTokenURI) external {
        s_tokenIDToURI[s_tokenCounter] = newTokenURI;
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    // Then function to call when we want to see an NFT
    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return s_tokenIDToURI[tokenId];
    }
}
