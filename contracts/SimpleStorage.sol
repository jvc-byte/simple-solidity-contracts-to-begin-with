// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage {
    // Mapping from uint to string
    mapping(uint256 => string) keyValues;

    // Get the stored string at a particular index
    function get(uint256 _key) public view returns (string memory) {
        return keyValues[_key];
    }

    // Store the string at a particular index
    function set(uint256 key, string memory value) public {
        keyValues[key] = value;
    }
}

// NOTE: This contract can be usefull for scenario where we need to store any string at a particular index location
