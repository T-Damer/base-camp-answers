// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/08_ImportsExercise.sol";

// ETHERSCAN_API_KEY=noop forge script script/08_ImportsExercise.s.sol:DeployImports --broadcast --rpc-url base-sepolia
contract DeployImports is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new ImportsExercise();
        vm.stopBroadcast();
    }
}
