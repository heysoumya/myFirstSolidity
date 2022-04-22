//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SmartStorage {

    int256 favoriteNumber;

    struct People{
        int256 favoriteNumber;
        string name;
    }

    People[] public people;

    constructor() public{
        people.push(People({name: "solidity",favoriteNumber: 1}));
    }

    mapping (string => int256) public nameToFavoriteNumber;

    function storeFavoriteNumber(int256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieveFavoriteNumber() public view returns(int256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, int256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
