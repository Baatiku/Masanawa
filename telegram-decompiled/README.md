# Telegram Decompiled Reference (v13.1.0)

This directory contains extracted assets, XML manifests, vector resources, themes, shaders, and currency definitions reverse-engineered from the official `Telegram.apk` (v13.1.0, `org.telegram.messenger.web`) downloaded directly from `telegram.org`.

---

## Directory Overview

- `AndroidManifest.xml`: Fully decoded manifest containing entry activities, receivers, and services.
- `assets/`:
  - `wallet_card_2d/`: 2D/3D gyroscopic materials, textures, and finishes (`finish_dark.webp`, `finish_light.webp`, `groove_across.webp`, QR masks) used in Telegram's interactive tilt-reactive Wallet card.
  - `currencies.json`: Complete dictionary of 95 global fiat currencies with their ISO symbols, names, and minor decimal exponents (`exp: 2` or `3`).
  - `secureid_ocr_nn.dat`: Neural network OCR model for scanning identity documents (Passports, National IDs) used in Telegram Passport / KYC.
  - `PhoneFormats.dat`: Global phone number international formatting rules.
  - `*.attheme`: Official Telegram color palettes (`day.attheme`, `night.attheme`, `arctic.attheme`, `darkblue.attheme`).
- `res/`:
  - 7,300+ vector drawables, layouts, icons, and mipmaps.

---

## Native Architecture & Wallet Engine (`org.telegram.ui.Wallet`)

In the Dalvik bytecode (`classes.dex`, `classes3.dex`, `classes4.dex`), Telegram contains a native Web3 & Wallet module:

* **`WalletEngine2`**: Native engine bridging local cryptography to the TON blockchain:
  - `secretPhraseToAddress()`: Derives user-friendly wallet addresses from 24-word seed phrases.
  - `emulateSend()`: Pre-flight transaction dry-run for fee estimation and gas quotes.
  - `nativeSend()`: Signs and broadcasts crypto transfers.
  - `prepareTonConnectTransfer()`: TonConnect dApp authentication and transaction approval.
  - `decryptTransactionComment()`: Decrypts private transaction notes and memos.
* **`BotWebViewContainer` & `PaymentFormActivity`**:
  Native Android container hosting Telegram's WebApp ecosystem (where the custodial `@wallet` and P2P Trading Desk reside), communicating via bidirectional JavaScript bridges.
