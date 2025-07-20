// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Inbox {
    string public message;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    // Set a new message (memory specified)
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    // Return the message (memory specified for return)
}
