// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract SimpleStorage {
    // initialized top zero if no value is given
    uint256  myFavoriteNumber; //0
    // uint254[] listOfFavoriteNumbemyFs;

    // types are created using struct

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;


//mapping type
mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    //calldata, memory, storgae
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
 
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
