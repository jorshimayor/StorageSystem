// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";


// StoreFactory is a manager of all the function on the SimpleFactory.sol
contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // A function to call the store function from SimpleStorage contract 
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI (Application Binanry Index)
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    // A function that can read the store function from SimpleStorage contract 
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }


}