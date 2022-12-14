// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyPayable {
    
   address payable public myAddress; // payable says that it can receive ether  
   
   constructor() payable {
       myAddress = payable(msg.sender);
   }
   
   function deposit() public payable {}
   
   function getThisContractsBalance() public view returns (uint256){
       uint256 amount = address(this).balance;
       return amount;
   }
   
   function transferEth(address payable _user) public payable {
       _user.transfer(msg.value);
   }
   
   function sendEth(address payable _user) public payable { // not preferable way
        bool didSend = _user.send(msg.value);
        require(didSend, "This failed to send");
   }
   
   function callEth(address payable _user) public payable {. // most preferable way
       (bool didSend, ) = _user.call{value: msg.value}("");
       require(didSend);
   }
   
   receive() external payable {} // if there is no additional data
   
   fallback() external payable {} 

}