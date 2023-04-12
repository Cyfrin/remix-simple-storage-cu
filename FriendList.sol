// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract FriendList {
    string myName;
    uint256 myFavoriteNumber;

    struct Friend {
        uint256 friendFavoriteNumber;
        string friendName;
    }

    // uint256[] public anArray;
    Friend[] public friendList;

    mapping(string => uint256) public nameToFavoriteNumber;

    function storeFavoriteNumber(uint256 newFavoriteNumber) public {
        myFavoriteNumber = newFavoriteNumber;
    }

    function getMyFavoriteNumber() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addFriend(
        string memory newFriendName,
        uint256 newFriendNumber
    ) public {
        friendList.push(Friend(newFriendNumber, newFriendName));
        nameToFavoriteNumber[newFriendName] = newFriendNumber;
    }
}
