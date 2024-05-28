// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/forge-std/src/Script.sol";

import "src/03_EmployeeStorage.sol";

// ETHERSCAN_API_KEY=noop forge script script/03_EmployeeStorage.s.sol:DeployEmployeeStorage --broadcast --rpc-url base-sepolia
contract DeployEmployeeStorage is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(privateKey);
        new EmployeeStorage(
            1000,
            "Pat",
            50000,
            112358132134
        );
        vm.stopBroadcast();
    }
}
