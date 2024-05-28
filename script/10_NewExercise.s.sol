// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/10_NewExercise.sol";

// ETHERSCAN_API_KEY=noop forge script script/10_NewExercise.s.sol:DeployNewExercise --broadcast --rpc-url base-sepolia
contract DeployNewExercise is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privateKey);
        new AddressBookFactory();
        vm.stopBroadcast();
    }
}
