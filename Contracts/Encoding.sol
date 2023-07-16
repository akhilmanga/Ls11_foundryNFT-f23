// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Encoding {

function combineStrings() public pure returns(string memory) {
return string(abi.encodePacked("Hi Mom!", "Miss You!"));
}

function encodeNumber() public pure returns(bytes memory) {
bytes memory number = abi.encode(1);
return number;
}

function encodeString() public pure returns(bytes memory) {
bytes memory someString = abi.encode("akhilmanga");
return someString;
}

// Below two functions will get same output.

function encodeStringPacked() public pure returns(bytes memory) {
    bytes memory someString = abi.encodePacked("akhilmanga");
    return someString;
}

function encodeStringBytes() public pure returns(bytes memory) {
    bytes memory someString = bytes("akhilmanga");
    return someString;
}

function decodeString() public pure returns(string memory) {
    string memory someString = abi.decode(encodeString(), (string));
    return someString;
} 

function multiEncode() public pure returns(bytes memory) {
    bytes memory someString = abi.encode("akhilmanga", "nikhilmanga");
    return someString;
}

function multiDecode() public pure returns(string memory, string memory) {
    (string memory someString, string memory someOtherString) = abi.decode(multiEncode(), (string, string));
    return (someString, someOtherString);
}

function multiEncodePacked() public pure returns(bytes memory) {
    bytes memory someString = abi.encodePacked("akhilmanga",  "nikhilmanga");
    return someString;
}

function multiDecodePacked() public pure returns(string memory) {
string memory someString = abi.decode(multiEncodePacked(), (string));
return someString;
}

function multiStringCastPacked() public pure returns(string memory) {
string memory someString = string(multiEncodePacked());
return someString;
} 

}

