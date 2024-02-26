// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNFT} from "../script/DeployMoodNFT.s.sol";

contract DeployMoodNFTTest is Test {
    DeployMoodNFT public deployer;

    address public USER = makeAddr("user");

    function setUp() public {
        deployer = new DeployMoodNFT();
    }

    // function testConvertSvgToURI() public view {
    //     string
    //         memory expectedURI = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNTAwIgogICAgaGVpZ2h0PSI1MDAiPgogICAgPHRleHQgeD0iMCIgeT0iMTUiIGZpbGw9ImJsYWNrIj5IaSEgWW91ciBicm93c2VyIGRlY29kZWQgdGhpczwvdGV4dD4KPC9zdmc+";
    //     string
    //         memory svg = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="500"    height="500">    <text x="0" y="15" fill="black">Hi! Your browser decoded this</text></svg>';
    //     string memory actualURI = deployer.svgToImageURI(svg);
    //     console.log(actualURI);
    //     assert(
    //         keccak256(abi.encodePacked(actualURI)) ==
    //             keccak256(abi.encodePacked(expectedURI))
    //     );
    // }
}
