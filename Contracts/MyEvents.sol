// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyEvents {
    
    event CreatedNFT(address indexed user, uint256 id, uint256 dna); // template how it should look like
    
    function createNft(uint256 _id, uint256 _dna) public {
        // create the nft and save to the storage
        emit CreatedNFT(msg.sender, _id, _dna); // emit an event w/ all necessary parameters
    }

}