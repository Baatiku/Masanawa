// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {MasanawaToken} from "../MasanawaToken.sol";

/**
 * Deployment is explicit, externally funded and never executed by CI.
 * Use a governance Safe, an operational minter, a custody Safe and an
 * independent emergency pauser. There is no separate burner hot wallet.
 * Use forge script --broadcast ONLY after the production custody approval.
 * The resulting address must come from an actual confirmed deployment receipt.
 */
contract DeployMasanawaToken is Script {
    error WrongChain();
    error RoleCollision();
    error UnsupportedChain();
    error InvalidAccount();

    function run() external returns (MasanawaToken token) {
        uint256 expectedChain = vm.envUint("MSNW_CHAIN_ID");
        if (block.chainid != expectedChain) revert WrongChain();
        if (expectedChain != 8453 && expectedChain != 84532) revert UnsupportedChain();

        address governance = vm.envAddress("MSNW_GOVERNANCE_ADDRESS");
        address minter = vm.envAddress("MSNW_MINTER_ADDRESS");
        address custodySafe = vm.envAddress("MSNW_CUSTODY_ADDRESS");
        address pauser = vm.envAddress("MSNW_PAUSER_ADDRESS");
        if (governance == address(0) || minter == address(0) ||
            custodySafe == address(0) || pauser == address(0))
            revert InvalidAccount();
        if (governance == minter || governance == custodySafe ||
            governance == pauser || minter == custodySafe ||
            minter == pauser || custodySafe == pauser) revert RoleCollision();

        vm.startBroadcast();
        token = new MasanawaToken(governance, minter, custodySafe, pauser);
        vm.stopBroadcast();

        require(token.totalSupply() == 0, "NONZERO_DEPLOYED_SUPPLY");
        require(token.decimals() == 6, "BAD_DECIMALS");
        require(token.custodian() == custodySafe, "BAD_CUSTODIAN");
        require(token.hasRole(token.BURNER_ROLE(), custodySafe), "CUSTODIAN_NOT_BURNER");
        require(!token.hasRole(token.DEFAULT_ADMIN_ROLE(), msg.sender), "DEPLOYER_ADMIN");
        require(keccak256(bytes(token.symbol())) == keccak256(bytes("MSNW")),
            "BAD_SYMBOL");
    }
}
