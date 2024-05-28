// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/06_GarageManager.sol";

// ETHERSCAN_API_KEY=noop forge script script/06_GarageManager.s.sol:DeployGarageManager --broadcast --rpc-url base-sepolia
contract DeployGarageManager is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new GarageManager();
        vm.stopBroadcast();
    }
}
