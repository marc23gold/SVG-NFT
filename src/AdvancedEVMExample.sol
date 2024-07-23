// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdvancedEVMExample {
    //encoding example 
    function combineStrings() public pure returns (string memory) {
        return string(abi.encodePacked("Hi everyone", "Love you guys"));
    }

    function concatStrings() public pure returns (string memory) {
        
    }
}