// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";

import "src/09_ErrorTriageExercise.sol";

// ETHERSCAN_API_KEY=noop forge script script/09_ErrorTriageExercise.s.sol:DeployErrorTriageExercise --broadcast --rpc-url base-sepolia
contract DeployErrorTriageExercise is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new ErrorTriageExercise();
        vm.stopBroadcast();
    }
}
