// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";
import "src/07_Inheritance.sol";

// ETHERSCAN_API_KEY=noop forge script script/07_Inheritance.s.sol:DeployInheritance --broadcast --rpc-url base-sepolia
contract DeployInheritance is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        Salesperson salesperson = new Salesperson(
            55_555,
            12_345,
            20
        );
        EngineeringManager engineeringManager = new EngineeringManager(
            54_321,
            11_111,
            200_000
        );
        new InheritanceSubmission(address(salesperson), address(engineeringManager));
        vm.stopBroadcast();
    }
}
