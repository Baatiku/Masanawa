// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Pausable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import {AccessControlDefaultAdminRules} from
    "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

/**
 * MSNW: six-decimal ERC20, one official customer wallet asset.
 * Mint/burn each require a unique SHA-256 settlement reference admitted by
 * the independently reconciled custody worker. Burn can only destroy
 * tokens already held by the designated custody Safe, never user balances.
 * This token has no fiat peg, national currency denomination or transfer tax.
 * Fiat and stablecoin rails are independent adapters to the off-chain ledger.
 *
 * This contract is SOURCE ONLY. Nothing is deployed or issued by merging it.
 * Governance should use an audited multisig, not an operator hot wallet.
 */
contract MasanawaToken is ERC20, ERC20Pausable, AccessControlDefaultAdminRules {
    bytes32 public constant MINTER_ROLE = keccak256("MSNW_MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("MSNW_BURNER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("MSNW_PAUSER_ROLE");
    mapping(bytes32 => bool) public settledReference;
    address public immutable custodian;

    error InvalidAccount();
    error InvalidCustodian();
    error RoleCollision();
    error InvalidAmount();
    error DuplicateSettlement();

    event SettledMint(bytes32 indexed settlementReference, address indexed recipient, uint256 amount);
    event SettledBurn(bytes32 indexed settlementReference, address indexed custodian, uint256 amount);

    constructor(address governance, address settlementMinter, address custodySafe, address emergencyPauser)
        ERC20("Masanawa Wallet", "MSNW")
        AccessControlDefaultAdminRules(2 days, governance)
    {
        if (governance == address(0) ||
            settlementMinter == address(0) ||
            custodySafe == address(0) ||
            emergencyPauser == address(0)) revert InvalidAccount();
        if (governance == settlementMinter ||
            governance == custodySafe ||
            governance == emergencyPauser ||
            settlementMinter == custodySafe ||
            settlementMinter == emergencyPauser ||
            custodySafe == emergencyPauser) revert RoleCollision();
        custodian = custodySafe;
        _grantRole(MINTER_ROLE, settlementMinter);
        // The Safe itself authorizes burns from its own custody balance.
        // No separate burner hot wallet can destroy customer-held tokens.
        _grantRole(BURNER_ROLE, custodySafe);
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
        if (recipient != custodian) revert InvalidCustodian();
        if (amountMicro == 0) revert InvalidAmount();
        if (settlementReference == bytes32(0) ||
            settledReference[settlementReference]) revert DuplicateSettlement();
        settledReference[settlementReference] = true;
        _mint(recipient, amountMicro);
        emit SettledMint(settlementReference, recipient, amountMicro);
    }

    /**
     * Irreversibly destroy ONLY tokens held by the authorized custodian.
     * Cannot confiscate end-user balances or burn from third-party wallets.
     * The same global settlement reference cannot mint and burn twice.
     * Fiat refund/payment reconciliation happens off-chain before this call.
     */
    function burnSettled(
        uint256 amountMicro,
        bytes32 settlementReference
    ) external onlyRole(BURNER_ROLE) {
        // Re-granting BURNER_ROLE must not allow burning from another account.
        if (msg.sender != custodian) revert InvalidCustodian();
        if (amountMicro == 0) revert InvalidAmount();
        if (settlementReference == bytes32(0) ||
            settledReference[settlementReference]) revert DuplicateSettlement();
        settledReference[settlementReference] = true;
        _burn(msg.sender, amountMicro);
        emit SettledBurn(settlementReference, msg.sender, amountMicro);
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    // Emergency pauser cannot resume transfers unilaterally; the delayed
    // governance admin Safe alone can approve recovery.
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function _update(address from, address to, uint256 amount)
        internal override(ERC20, ERC20Pausable)
    {
        super._update(from, to, amount);
    }
}
