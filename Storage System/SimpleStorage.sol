// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {

    // This gets initialized to zero!
    // <- This means that this section is a comment
    uint favouriteNumber;

    // This is a code that maps your name to your favourite number
    mapping(string => uint256) public nameToFavouriteNumber;

    // People object with name and favouriteNumber
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    // An array of people
    People[] public people;

    // A function that stores your favourite number
    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    // A function that retrieves and displays your favourite number
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }

    // A function that adds your favourite number and name
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

}

