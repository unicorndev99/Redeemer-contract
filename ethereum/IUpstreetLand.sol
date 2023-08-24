// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.2
// Creator: Chiru Labs

pragma solidity ^0.8.15;

import "erc721a/contracts/IERC721A.sol";

/**
 * @dev Interface of ERC721ABurnable.
 */
interface IUpstreetLand is IERC721A {

    function mint(address to, uint256 quantity) external payable;
    function setBaseURI(string memory baseURI_) external;
}