// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Inheritance, factories, interaction
contract Ownable{
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Must be owner");
        _;
    }

    //parent contract constructor
    constructor(){
        owner = msg.sender;
    }   

}

contract SecretVault{
    string secret;

    constructor(string memory _secret){
        secret = _secret;
    }

    function getSecret() public view returns (string memory){
        return secret;
    }
}

contract MyNewContract is Ownable {
    address secretVault;

    constructor(string memory _secret) {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super; // calling the constructor from the parent contract
    }

    function getSecret() public view onlyOwner returns (string memory){
        return SecretVault(secretVault).getSecret();
    }
}