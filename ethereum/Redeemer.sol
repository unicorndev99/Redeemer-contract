// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol"; 
import "./IUpstreetLand.sol";

contract Redeemer {

    ERC721Burnable public burnableToken;
    IUpstreetLand public newToken;
    uint256 public landAmountPerGenesisPass = 2;
    
    mapping(uint256 => bool) private _redeems;

    // The address of the burnable token contract should be provided at deployment
    // _burnableTokenAddress = 0x543D43F390b7d681513045e8a85707438c463d80 // Webaverse Genesis Pass
    // _newTokenAddress = // Upstreet Land
    constructor(address _burnableTokenAddress, address _newTokenAddress) {
        burnableToken = ERC721Burnable(_burnableTokenAddress); // burnableToken will be ERC721Burnable
        newToken = IUpstreetLand(_newTokenAddress); // Assuming the Redeemer contract itself has ERC721 tokens
    }

    // This function redeems a token by burning it from the Burnable contract
    // and sending back a new token from the Redeemer contract
    function redeem(uint256 burnableTokenId, address to) public {
        require(!_redeems[burnableTokenId], "Token id already redeemed");
        
        require(burnableToken.ownerOf(burnableTokenId) == msg.sender, "Only Owner of token can burn");
        // Burn the token // this require setApprovalForAll
        burnableToken.burn(burnableTokenId);

        // Mint the new token
        newToken.mint(to, landAmountPerGenesisPass);

        // Set the redeem
        _redeems[burnableTokenId] = true;
    }
}