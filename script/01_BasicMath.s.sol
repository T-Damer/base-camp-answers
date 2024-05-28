// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/01_BasicMath.sol";

// ETHERSCAN_API_KEY=noop forge script script/01_BasicMath.s.sol:DeployBasicMath --broadcast --rpc-url base-sepolia
contract DeployBasicMath is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        new BasicMath();
        vm.stopBroadcast();
    }
}
