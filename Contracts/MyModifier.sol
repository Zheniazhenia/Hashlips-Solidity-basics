// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyModifier {
    
    uint256 public myNum = 0;
    bool public paused = false;
    address public owner;
    
    constructor () {
        owner = address(msg.sender);
    }
    
    modifier isNotPaused(bool _bypass) { // if we have this bypass then we can use it
        if(_bypass == true) {
            require(paused == false, "Contract is paused"); // condition
        }
        _; // means everything what is going after in function
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
    
    function setPaused() public {
        paused = true;
    }
    
    function addToNum() public isNotPaused(true) onlyOwner { // it's bypassing a modifier requirements
        myNum++;
    }
   
     function sunFromNum() public isNotPaused(false) onlyOwner {
        myNum--;
    }

}