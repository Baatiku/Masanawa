// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Pausable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {AccessControlDefaultAdminRules} from
    "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

/**
 * MSNW: six-decimal ERC20, one official customer wallet asset.
 * Each mint requires a unique SHA-256 settlement reference admitted by
 * the server-controlled, independently reconciled custody worker.
 *
 * This contract is SOURCE ONLY. Nothing is deployed or issued by merging it.
 * Governance should use an audited multisig, not an operator hot wallet.
 */
contract MasanawaToken is ERC20, ERC20Pausable, AccessControlDefaultAdminRules {
    bytes32 public constant MINTER_ROLE = keccak256("MSNW_MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("MSNW_PAUSER_ROLE");
    mapping(bytes32 => bool) public settledReference;

    error InvalidAccount();
    error InvalidAmount();
    error DuplicateSettlement();

    event SettledMint(bytes32 indexed settlementReference, address indexed recipient, uint256 amount);

    constructor(address governance, address settlementMinter, address emergencyPauser)
        ERC20("Masanawa Wallet", "MSNW")
        AccessControlDefaultAdminRules(2 days, governance)
    {
        if (governance == address(0) ||
            settlementMinter == address(0) ||
            emergencyPauser == address(0)) revert InvalidAccount();
        _grantRole(MINTER_ROLE, settlementMinter);
        _grantRole(PAUSER_ROLE, emergencyPauser);
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function mintSettled(
        address recipient,
        uint256 amountMicro,
        bytes32 settlementReference
    ) external onlyRole(MINTER_ROLE) {
        if (recipient == address(0)) revert InvalidAccount();
        if (amountMicro == 0) revert InvalidAmount();
        if (settlementReference == bytes32(0) ||
            settledReference[settlementReference]) revert DuplicateSettlement();
        settledReference[settlementReference] = true;
        _mint(recipient, amountMicro);
        emit SettledMint(settlementReference, recipient, amountMicro);
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function _update(address from, address to, uint256 amount)
        internal override(ERC20, ERC20Pausable)
    {
        super._update(from, to, amount);
    }
}
