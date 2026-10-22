# Telegram Architectural & Wallet Component Index (v13.1.0)

This index documents the core components, activities, services, and native wallet packages inside `Telegram.apk` (v13.1.0, Build 72299).

---

## 1. Core Native UI Screens (`org.telegram.ui`)

Telegram uses a single-activity architecture (`LaunchActivity`) where each screen is implemented as a stack-managed `BaseFragment`:

| Class Name | Function / Purpose | Masanawa Mapping |
| :--- | :--- | :--- |
| `org.telegram.ui.LaunchActivity` | Single root activity managing backstack and fragment transitions | `five_tab_shell.dart` |
| `org.telegram.ui.ChatActivity` | Conversation thread, message bubble rendering, attachment sheet | `unified_chat_inbox.dart` |
| `org.telegram.ui.ProfileActivity` | User and channel profile, media gallery, bio | Public creator profile |
| `org.telegram.ui.PaymentFormActivity` | Native checkout sheet for bot invoices and goods | Dual-rail Cashier bottom sheet |
| `org.telegram.ui.TwoStepVerificationActivity` | 2FA password and cloud recovery setup | Security & PIN setup |
| `org.telegram.ui.PasscodeActivity` | In-app 4-digit PIN / Passcode screen with biometric lock | `PinKeyboard` security sheet |
| `org.telegram.ui.PasskeysActivity` | WebAuthn / Passkeys hardware authentication | Hardware biometrics / WebAuthn |
| `org.telegram.ui.PrivacySettingsActivity` | Fine-grained privacy controls (Phone, Last Seen, Calls, P2P) | Privacy settings |
| `org.telegram.ui.ProxyListActivity` | Built-in MTProto and SOCKS5 proxy switcher | Network resilience / fallback |

---

## 2. Native Web3 & Wallet Package (`org.telegram.ui.Wallet`)

Found across `classes.dex`, `classes3.dex`, and `classes4.dex`:

| Class | Responsibilities |
| :--- | :--- |
| `org.telegram.ui.Wallet.WalletEngine2` | Core blockchain and cryptographic engine for non-custodial wallet operations |
| `WalletEngine2$HttpTransport` | Direct RPC communication with blockchain nodes (toncenter / light client) |
| `WalletEngine2$SendPhase` | State machine tracking transaction stages: *Prepared -> Emulated -> Signed -> Broadcasted -> Confirmed* |
| `WalletEngine2$PreparedSend` | Pre-computed transaction payload with gas fee quote and destination address |
| `WalletEngine2$RotationCallbacks` | Key rotation and mnemonic recovery event handlers |
| `WalletEngine2$TonConnectSession` | Session state for connecting external dApps via TonConnect protocol |

---

## 3. WebApp & Bot Payment Bridge (`org.telegram.ui.web`)

| Class | Description |
| :--- | :--- |
| `BotWebViewContainer` | Hardware-accelerated WebView container rendering Telegram Mini Apps (TMAs) |
| `BotWebViewContainer$BotWebViewProxy` | Injected `@JavascriptInterface` allowing the WebApp (like Telegram Wallet) to invoke native haptics, biometrics, invoice popups, and clipboard reads |
| `TLRPC$TL_inlineBotWebView` | MTProto message entity opening a Mini App from a chat button |
| `TLRPC$TL_inputInvoiceMessage` | In-chat invoice payload linking an order to a bot or P2P escrow contract |

---

## 4. Assets & Neural Models

- `assets/wallet_card_2d/`: Complete texture pack for rendering gyro-reactive 3D wallet cards (`face_*.webp`, `finish_dark.webp`, `finish_light.webp`, `groove_across.webp`).
- `assets/secureid_ocr_nn.dat`: Neural network weights used for client-side OCR extraction of names, passport numbers, and expiration dates during KYC verification.
- `assets/currencies.json`: 95 international fiat currencies with ISO code, display symbols, and minor unit exponents.
