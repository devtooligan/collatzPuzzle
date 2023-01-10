// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "./CollatzPuzzle.sol";

contract CollatzPuzzleTest is Test {
    address public collatzSolution;
    CollatzPuzzle public collatzPuzzle;

    function setUp() public {
        collatzSolution = HuffDeployer.deploy("Collatz");
        collatzPuzzle = new CollatzPuzzle();
    }

    function testCollatz() public {
        collatzPuzzle.callMe(collatzSolution);
    }
}

