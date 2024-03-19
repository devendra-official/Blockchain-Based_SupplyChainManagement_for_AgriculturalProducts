// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Supply {
    // USERS FUNCTIONS AND EVENTS
    struct User{
        string email;
        string password;
        string role;
        address ETHAddress;
    }

    mapping (string => User) users;
    event createUserEvent(string email,string password,string role);
    event getUserEvent(string email,string password);

    function createUser(string memory email,string memory password,string memory role) public {
        users[email] = User(email,password,role,msg.sender);
        emit createUserEvent(email, password, role);
    }

    function getUser(string memory email,string memory password) public returns (User memory) {
        require(keccak256(abi.encodePacked(users[email].password)) == keccak256(abi.encodePacked(password)),"Wrong password");
        emit getUserEvent(email, password);
        return users[email];
    }

    // FARMERS FUNCTIONS AND EVENTS
    struct Farmer{
        string email;
        string password;
        string role;
        address ETHAddress;
    }

    mapping (string => Farmer) farmers;
    event createFarmerEvent(string email,string password,string role);
    event getFarmerEvent(string email,string password);

    function createFarmer(string memory email,string memory password,string memory role) public {
        farmers[email] = Farmer(email,password,role,msg.sender);
        emit createFarmerEvent(email, password, role);
    }

    function getFarmer(string memory email,string memory password) public returns (Farmer memory){
        require(keccak256(abi.encodePacked(farmers[email].password)) == keccak256(abi.encodePacked(password)),"Wrong password");
        emit getFarmerEvent(email, password);
        return farmers[email];
    }

    // AUTHORITIES FUNCTIONS AND EVENTS
    struct Authority{
        string email;
        string password;
        string role;
        address ETHAddress;
    }

    mapping (string => Authority) authorities;
    event createAuthorityEvent(string email,string password,string role);
    event getAuthorityEvent(string email,string password);

    function createAuthority(string memory email,string memory password,string memory role) public {
        authorities[email] = Authority(email,password,role,msg.sender);
        emit createAuthorityEvent(email, password, role);
    }

    function getAuthority(string memory email,string memory password) public returns (Authority memory) {
        require(keccak256(abi.encodePacked(authorities[email].password)) == keccak256(abi.encodePacked(password)),"Wrong password");
        emit getAuthorityEvent(email, password);
        return authorities[email];
    }
}