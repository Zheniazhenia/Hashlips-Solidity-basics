// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyTypes {
    
    bool public myBoolean = false; // //false if unindentified
    
    uint256 public myUint = 566778778787; // unsigned integer
    uint32 public myUint32 = 6756567;
    uint16 public myUint16 = 6773;
    uint8 public myUint8 = 0; // 0 - 255 | 2 ** 8 - 1 = 255
    
    int256 private myInt = -566778778787;
    int32 private myInt32 = -6756567;
    int16 internal myInt16 = -6773;
    int8 internal myInt8 = -127; // // -128 to +127;  bc one bit goes for sin

    int256 myNewVar = int256(myInt8);
    
    address myAddress = address(0x943590A42C27D08e3744202c4Ae5eD55c2dE240D);
    address myContractAddress = address(this);  // this  is this contract address
    
    uint256 balanceOfMyContract = myContractAddress.balance;
}
// payable - means that it can receive money
// public, private and internal