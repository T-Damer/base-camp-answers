// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/13_HaikuNFT.sol";

// forge script script/13_HaikuNFT.s.sol:DeployHaikuNFT --broadcast --rpc-url base-sepolia
contract DeployHaikuNFT is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new HaikuNFT("Test Haiku NFT", "TESTHAIKU");
        vm.stopBroadcast();
    }
}
