// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";

import "src/12_WeightedVoting.sol";

// ETHERSCAN_API_KEY=noop forge script script/12_WeightedVoting.s.sol:DeployWeightedVoting --broadcast --rpc-url base-sepolia
contract DeployWeightedVoting is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new WeightedVoting("Test Weighted Voting", "TESTWV");
        vm.stopBroadcast();
    }
}
