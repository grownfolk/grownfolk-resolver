// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GrownfolkResolver {
    address public owner;

    mapping(string => address) private nameToAddress;
    mapping(address => string) private addressToName;

    event NameRegistered(address indexed user, string name);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function registerName(string calldata name) external {
        require(bytes(name).length > 0, "Name is required");
        require(nameToAddress[name] == address(0), "Name already taken");

        nameToAddress[name] = msg.sender;
        addressToName[msg.sender] = name;

        emit NameRegistered(msg.sender, name);
    }

    function getName(address wallet) external view returns (string memory) {
        return addressToName[wallet];
    }

    function getAddress(string calldata name) external view returns (address) {
        return nameToAddress[name];
    }
}
