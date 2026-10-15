// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {MasanawaToken} from "../MasanawaToken.sol";

contract MasanawaTokenTest is Test {
    address internal governance = makeAddr("governance");
    address internal minter = makeAddr("minter");
    address internal burner = makeAddr("burner");
    address internal pauser = makeAddr("pauser");
    address internal customer = makeAddr("customer");
    MasanawaToken internal token;
    bytes32 internal constant REF1 = keccak256("verified-reserve-1");
    bytes32 internal constant REF2 = keccak256("verified-burn-2");

    function setUp() public {
        token = new MasanawaToken(governance, minter, burner, pauser);
    }

    function testEmptySupplyAndIdentity() public view {
        assertEq(token.totalSupply(), 0);
        assertEq(token.symbol(), "MSNW");
        assertEq(token.decimals(), 6);
    }

    function testMintOnlyAfterMinterRoleAndNoReplay() public {
        vm.expectRevert();
        token.mintSettled(customer, 1_000_000, REF1);
        vm.prank(minter);
        token.mintSettled(customer, 1_000_000, REF1);
        assertEq(token.balanceOf(customer), 1_000_000);
        assertEq(token.totalSupply(), 1_000_000);
        vm.prank(minter);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.mintSettled(customer, 1_000_000, REF1);
        assertEq(token.totalSupply(), 1_000_000);
    }

    function testBurnOnlyCustodiansOwnTokens() public {
        vm.prank(minter);
        token.mintSettled(customer, 2_000_000, REF1);
        vm.prank(burner);
        vm.expectRevert();
        token.burnSettled(1_000_000, REF2);

        vm.prank(customer);
        token.transfer(burner, 1_000_000);
        vm.prank(burner);
        token.burnSettled(1_000_000, REF2);
        assertEq(token.balanceOf(customer), 1_000_000);
        assertEq(token.totalSupply(), 1_000_000);
        vm.prank(burner);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.burnSettled(1_000_000, REF2);
    }

    function testGlobalMintBurnReferencesCannotBeReused() public {
        vm.prank(minter);
        token.mintSettled(burner, 1_000_000, REF1);
        vm.prank(burner);
        vm.expectRevert(MasanawaToken.DuplicateSettlement.selector);
        token.burnSettled(1_000_000, REF1);
        assertEq(token.totalSupply(), 1_000_000);
    }

    function testEmergencyPauseStopsSupplyChanges() public {
        vm.prank(minter);
        token.mintSettled(burner, 1_000_000, REF1);
        vm.prank(pauser);
        token.pause();
        vm.prank(minter);
        vm.expectRevert();
        token.mintSettled(customer, 1, REF2);
        vm.prank(burner);
        vm.expectRevert();
        token.burnSettled(1, REF2);
        assertEq(token.totalSupply(), 1_000_000);
        vm.prank(pauser);
        token.unpause();
        vm.prank(burner);
        token.burnSettled(500_000, REF2);
        assertEq(token.totalSupply(), 500_000);
    }
}
