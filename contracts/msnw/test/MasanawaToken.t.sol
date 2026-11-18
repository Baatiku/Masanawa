// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {MasanawaToken} from "../MasanawaToken.sol";

contract MasanawaTokenTest is Test {
    address internal governance = makeAddr("governanceSafe");
    address internal minter = makeAddr("minter");
    address internal custodian = makeAddr("custodySafe");
    address internal pauser = makeAddr("emergencyPauser");
    address internal customer = makeAddr("globalCustomer");
    address internal attacker = makeAddr("attacker");
    MasanawaToken internal token;
    bytes32 internal constant REF1 = keccak256("verified-reserve-1");
    bytes32 internal constant REF2 = keccak256("verified-burn-2");
    bytes32 internal constant REF3 = keccak256("verified-mint-3");

    function setUp() public {
        token = new MasanawaToken(governance, minter, custodian, pauser);
    }

    function testGlobalTokenIdentityAndNoPreallocation() public view {
        assertEq(token.totalSupply(), 0);
        assertEq(token.balanceOf(custodian), 0);
        assertEq(token.name(), "Masanawa Wallet");
        assertEq(token.symbol(), "MSNW");
        assertEq(token.decimals(), 6);
        assertEq(token.custodian(), custodian);
        assertTrue(token.hasRole(token.BURNER_ROLE(), custodian));
        assertFalse(token.hasRole(token.DEFAULT_ADMIN_ROLE(), attacker));
    }

    function testOnlyAuthorizedMinterCanMintToCanonicalCustody() public {
        vm.expectRevert();
        token.mintSettled(custodian, 1_000_000, REF1);

        vm.prank(minter);
        vm.expectRevert(MasanawaToken.InvalidCustodian.selector);
        token.mintSettled(customer, 1_000_000, REF1);
        assertEq(token.totalSupply(), 0);

        vm.prank(minter);
        token.mintSettled(custodian, 1_000_000, REF1);
        assertEq(token.balanceOf(custodian), 1_000_000);
        assertEq(token.totalSupply(), 1_000_000);
        vm.prank(minter);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.mintSettled(custodian, 1_000_000, REF1);
    }

    function testCustodySafeBurnsOnlyOwnTokensNotExternalCustomerBalances() public {
        vm.prank(minter);
        token.mintSettled(custodian, 2_000_000, REF1);
        vm.prank(custodian);
        token.transfer(customer, 750_000);
        assertEq(token.balanceOf(customer), 750_000);

        vm.prank(attacker);
        vm.expectRevert();
        token.burnSettled(100_000, REF2);

        // Even if a governance error grants the role elsewhere, the burn
        // path is restricted to the immutable designated custody Safe.
        vm.prank(governance);
        token.grantRole(token.BURNER_ROLE(), attacker);
        vm.prank(attacker);
        vm.expectRevert(MasanawaToken.InvalidCustodian.selector);
        token.burnSettled(1, REF2);

        vm.prank(custodian);
        token.burnSettled(1_000_000, REF2);
        assertEq(token.balanceOf(custodian), 250_000);
        assertEq(token.balanceOf(customer), 750_000);
        assertEq(token.totalSupply(), 1_000_000);
        vm.prank(custodian);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.burnSettled(1_000_000, REF2);
    }

    function testMintAndBurnShareGlobalNonReplayReference() public {
        vm.prank(minter);
        token.mintSettled(custodian, 1_000_000, REF1);
        vm.prank(custodian);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.burnSettled(1_000_000, REF1);
        assertEq(token.totalSupply(), 1_000_000);
    }

    function testEmergencyPauserCannotUnpauseAndGovernanceCan() public {
        vm.prank(minter);
        token.mintSettled(custodian, 1_000_000, REF1);
        vm.prank(pauser);
        token.pause();
        assertTrue(token.paused());

        vm.prank(minter);
        vm.expectRevert();
        token.mintSettled(custodian, 1, REF3);
        vm.prank(custodian);
        vm.expectRevert();
        token.burnSettled(1, REF2);

        vm.prank(pauser);
        vm.expectRevert();
        token.unpause();
        vm.prank(governance);
        token.unpause();
        assertFalse(token.paused());

        vm.prank(custodian);
        token.burnSettled(500_000, REF2);
        assertEq(token.totalSupply(), 500_000);
    }

    function testAllDeploymentRolesMustBeIndependent() public {
        vm.expectRevert(MasanawaToken.InvalidAccount.selector);
        new MasanawaToken(governance, minter, address(0), pauser);
        vm.expectRevert(MasanawaToken.RoleCollision.selector);
        new MasanawaToken(governance, minter, minter, pauser);
        vm.expectRevert(MasanawaToken.RoleCollision.selector);
        new MasanawaToken(governance, minter, custodian, governance);
    }
}
