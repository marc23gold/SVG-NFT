//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";
import {SvgNft} from "../src/SvgNft.sol";
import {DeploySvgNft} from "../script/DeploySvgNft.s.sol";

contract SvfNftTest is Test{

    address USER = makeAddr("user");

   



    SvgNft private svgNft;
    DeploySvgNft private deployer;
    function setUp() public {
        deployer = new DeploySvgNft();
        svgNft = deployer.run();
    }

    function testViewTokenUri() public {
        vm.prank(USER);
        svgNft.mintNft();
        console.log(svgNft.tokenURI(0));
        
    }
}