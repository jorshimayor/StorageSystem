// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {

    // A function that adds 5 to your favourite number
    function store(uint256 _favouriteNumber) public override {
        favouriteNumber = _favouriteNumber + 5;
    }

}