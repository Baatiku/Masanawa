// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {MasanawaToken} from "../MasanawaToken.sol";

/**
 * Deployment is explicit, externally funded and never executed by CI.
 * Set separate secure governance/mint/burn/pause signers and expected chain.
 * Use forge script --broadcast ONLY after the production custody approval.
 * The resulting address must come from an actual confirmed deployment receipt.
 */
contract DeployMasanawaToken is Script {
    error WrongChain();
    error RoleCollision();

    function run() external returns (MasanawaToken token) {
        uint256 expectedChain = vm.envUint("MSNW_CHAIN_ID");
        if (block.chainid != expectedChain) revert WrongChain();

        address governance = vm.envAddress("MSNW_GOVERNANCE_ADDRESS");
        address minter = vm.envAddress("MSNW_MINTER_ADDRESS");
        address burner = vm.envAddress("MSNW_BURNER_ADDRESS");
        address pauser = vm.envAddress("MSNW_PAUSER_ADDRESS");
        if (governance == minter || governance == burner ||
            governance == pauser || minter == burner ||
            minter == pauser || burner == pauser) revert RoleCollision();

        vm.startBroadcast();
        token = new MasanawaToken(governance, minter, burner, pauser);
        vm.stopBroadcast();

        require(token.totalSupply() == 0, "NONZERO_DEPLOYED_SUPPLY");
        require(token.decimals() == 6, "BAD_DECIMALS");
        require(keccak256(bytes(token.symbol())) == keccak256(bytes("MSNW")),
            "BAD_SYMBOL");
    }
}
