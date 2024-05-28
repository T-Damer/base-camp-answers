// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/02_ControlStructures.sol";

// ETHERSCAN_API_KEY=noop forge script script/02_ControlStructures.s.sol:DeployControlStructures --broadcast --rpc-url base-sepolia
contract DeployControlStructures is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new ControlStructures();
        vm.stopBroadcast();
    }
}
