// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SimpleStorage {
    uint256 private favNum;  // Added `private` for better practice

    struct Person {
        uint256 favNum; // Changed to uint256 to match the type of yourFavNum;
        string yourName;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public {
        favNum = _favNum;
    }

    function retrieve() public view returns (uint256) {
        return favNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public  {
        listOfPeople.push(Person(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
}