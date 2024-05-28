// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/04_ArraysExercise.sol";

// ETHERSCAN_API_KEY=noop forge script script/04_ArraysExercise.s.sol:DeployArraysExercise --broadcast --rpc-url base-sepolia
contract DeployArraysExercise is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new ArraysExercise();
        vm.stopBroadcast();
    }
}
