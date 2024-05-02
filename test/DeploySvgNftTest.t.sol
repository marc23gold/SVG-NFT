//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";
import {SvgNft} from "../src/SvgNft.sol";
import {DeploySvgNft} from "../script/DeploySvgNft.s.sol";

contract DeploySvfNftTest is Test{
    
    DeploySvgNft private deployer;
    
    function setUp() public {
        deployer = new DeploySvgNft();
    }

    function testConvertSvgToUri() public {
        string memory expectedUri;
        string memory svg; 
        string memory actualUri = deployer.svgToImageUri(svg);
        assert(keccak256(abi.encodePacked(expectedUri)) == keccak256(abi.encodePacked(actualUri)));
    }
}