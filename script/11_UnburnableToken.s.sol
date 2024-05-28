// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/11_UnburnableToken.sol";

// ETHERSCAN_API_KEY=noop forge script script/11_UnburnableToken.s.sol:DeployUnburnableToken --broadcast --rpc-url base-sepolia
contract DeployUnburnableToken is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new UnburnableToken();
        vm.stopBroadcast();
    }
}
