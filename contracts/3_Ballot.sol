pragma solidity ^0.8.2;

contract Inbox {
    string public message;

    function myInbox(string initialMessage) public{

    message = initialMessage;
    }

     function setMessage(string initialMessage) public{

    message = newMessage;
    }

     function getMessage(string initialMessage) public{

return message ;
    }
}