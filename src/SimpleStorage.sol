// SPDX-License-Identifier: GPLv3

pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber; // initialized to 0 if no value is given

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public jon = Person({favoriteNumber: 12, name: "Jon"});

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
