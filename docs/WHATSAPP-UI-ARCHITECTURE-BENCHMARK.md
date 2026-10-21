# WhatsApp UI Architecture and Design System Benchmark

**Target Version:** WhatsApp v2.26.40.72 (`com.whatsapp`)
**Decompiled Artifacts Location:** [`whatsapp-decompiled/`](../whatsapp-decompiled)
**Masanawa System Contract:** Single Strong Green/White WhatsApp-like Design System across 5 Core Tabs (`Chats` · `Status` · `Wallet` · `Calls` · `Rooms`).

**Implementation use:** Apply this benchmark when working on the mapped [canonical tasks](PRODUCT-ROADMAP-20261019.md). It supplies interaction/design guidance, not a second roadmap. Inspect extracted assets to understand timing/geometry, then create original Masanawa implementations; do not bundle proprietary sounds/artwork/code. Resource names and manifests establish available artifacts, not working E2EE, runtime performance, provider capability or server guarantees.

**Assigned scope:** initial release P8-U01/U02 plus P4/P5 and P6-W; future releases P8-U03–U08. Future means scheduled after the first production APK, not forgotten or implicitly mandatory for its launch.

---

## 1. Executive Summary & Extraction Overview

The reference inventory reports that static package inspection and binary XML/manifest decoding of `C:\Users\Besta\Downloads\WhatsApp.apk`, extracted **15,111 assets and resources** into [`whatsapp-decompiled/`](../whatsapp-decompiled):

1. **Decoded Manifest (`whatsapp-decompiled/AndroidManifest.xml`)**:
   - 855 activities, services, content providers, and broadcast receivers.
   - 143 deep-link URI patterns (`whatsapp://chat`, `whatsapp://call`, `whatsapp://channel`, `whatsapp://pay`, `whatsapp://event`).
2. **WhatsApp Design System (WDS) Lottie Animations**:
   - 80 vector Lottie animation references (runtime performance unverified) covering push-to-talk mic state, audio wave oscillations, AI voice orbital thinking, payment UPI lookup, and encryption verification.
3. **Sound Effects (`res/*.m4a`, `res/*.ogg`)**:
   - 32 UI audio cues including message sent "pop", incoming message chime, and call connectivity rings.
4. **Vector & Raster Assets**:
   - 5,500+ `.webp`, `.png`, and `.svg` files including read receipt ticks, status rings, attachment sheets, and reactions.

---

## 2. Design System Tokens: WDS (WhatsApp Design System)

Use the following palette as implementation guidance, reconciled into Masanawa’s existing theme rather than introducing a parallel theme. These are reference values, not verified extraction of every runtime theme/layout. Validate contrast and platform behavior in Masanawa:

### 2.1 Color Palette & Theme Tokens

```dart
// Masanawa WhatsApp-Compatible Design System Tokens (apps/mobile/lib/src/theme/whatsapp_palette.dart)

class WhatsAppColors {
  // Brand Greens
  static const Color primaryGreen = Color(0xFF25D366);       // Iconic WhatsApp Green
  static const Color primaryTeal = Color(0xFF00A884);        // Modern WhatsApp Teal Header
  static const Color emeraldGreen = Color(0xFF1DAA61);       // WDS Emerald Green Accent
  static const Color darkAccentGreen = Color(0xFF21C063);    // Dark Theme Active Tab / Toggles

  // Light Theme
  static const Color lightScaffold = Color(0xFFFFFFFF);
  static const Color lightHeader = Color(0xFF008069);         // Traditional WhatsApp AppBar
  static const Color lightModernHeader = Color(0xFFFFFFFF);   // Modern WhatsApp White AppBar
  static const Color lightChatBackground = Color(0xFFEFEAE2); // Beige Chat Wallpaper Base
  static const Color lightBubbleIncoming = Color(0xFFFFFFFF);
  static const Color lightBubbleOutgoing = Color(0xFFE6FFDA); // Light Pale Green Bubble (#D9FDD3)
  static const Color lightTextPrimary = Color(0xFF111B21);
  static const Color lightTextSecondary = Color(0xFF667781);
  static const Color lightDivider = Color(0xFFE9EDEF);

  // Dark Theme
  static const Color darkScaffold = Color(0xFF111B21);        // WhatsApp Charcoal Dark Background
  static const Color darkHeader = Color(0xFF111B21);
  static const Color darkSurface = Color(0xFF202C33);         // Cards & Search Bars
  static const Color darkChatBackground = Color(0xFF0B141A);  // Deep Black-Teal Base
  static const Color darkBubbleIncoming = Color(0xFF202C33);  // Dark Bubble Incoming
  static const Color darkBubbleOutgoing = Color(0xFF005C4B);  // Deep Forest Green Outgoing (#103527)
  static const Color darkTextPrimary = Color(0xFFE9EDEF);
  static const Color darkTextSecondary = Color(0xFF8696A0);
  static const Color darkDivider = Color(0xFF222D34);

  // Status & Receipts
  static const Color blueTickRead = Color(0xFF53BDEB);        // Double Blue Checkmark
  static const Color greyTickDelivered = Color(0xFF8696A0);   // Double Grey Checkmark
  static const Color clockPending = Color(0xFFECB439);        // Yellow Clock Icon
  static const Color unreadBadgeGreen = Color(0xFF25D366);    // Counter Pill
}
```

---

## 3. Five-Tab Architecture: WhatsApp vs. Masanawa Mapping

WhatsApp’s architecture is anchored on 4 root bottom-navigation tabs. Masanawa adapts this into the **5-Tab Rule** defined in `AGENTS.md` (`Chats` · `Status` · `Wallet` · `Calls` · `Rooms`):

| Tab Index | Masanawa Tab | WhatsApp Counterpart Activity | Core UX Mechanisms Borrowed from WhatsApp |
| :---: | :--- | :--- | :--- |
| **Tab 1** *(Default)* | **Chats** | `com.whatsapp.conversation.conversationslist.LockedConversationsActivity` & `ArchivedConversationsActivity` | - Top app bar with Masanawa branding and camera, search, more menu.<br>- Filter chips: **All**, **People**, **Masana**, **Unread**.<br>- Floating Action Button (FAB): Emerald Green (`#25D366`) New Chat / Contact picker.<br>- Swipe conversation item: Pin, Mute, Archive, Delete.<br>- Optional locked-thread folder with platform-backed auth (P8-U03, future). |
| **Tab 2** | **Status** | `com.whatsapp.status.playback.StatusPlaybackActivity` | - "My Status" with '+' badge (`self_status_add_badge_click_surface`).<br>- Segmented circular status ring around contact avatars (green segments = unseen updates, grey = viewed).<br>- Text status with color gradients and voice note statuses.<br>- Optional explicit 24-hour expiry (P8-U04, future); preserve existing permanent creator posts. |
| **Tab 3** | **Wallet** | `com.whatsapp.payments.common.ui.*` + **OPay Cashier** | - Hybrid implementation combining WhatsApp's clean in-chat transaction cards with OPay's high-conversion fintech speed.<br>- Unique 10-digit Masanawa ID displayed with 1-tap copy.<br>- Multi-asset portfolio (MSNW, USDT, SOL, BTC, ETH).<br>- Zero-gas internal P2P transfers with instant name lookup.<br>- Split expense bubble (P8-U07, future; `split_expense_bubble_amount_content` reference). |
| **Tab 4** | **Calls** | `com.whatsapp.calling.ui.VoipActivityV2` | - Initial voice-call history; video/group extension P8-U06 (future) with green incoming arrow and red missed arrow.<br>- Call links/scheduling P8-U05 (future).<br>- Masana AI Voice call landing page with live equalizer animation (`wds_icon_animated_equalizer_v2`).<br>- Floating in-call UI with active speaker glow and mute controls; camera/group controls only with P8-U06 qualification. |
| **Tab 5** | **Rooms** | `com.whatsapp.newsletter.directory.ui.NewsletterDirectoryActivity` | - User-created and creator broadcast channels (Channels pattern).<br>- Follower count, verification badge only from actual server verification, and admin-only posting.<br>- Broadcast: admins post, members react/comment where enabled. Discussion: all authorized members can post; preserve P5-R permissions.<br>- Directory exploration with category pills. |

---

## 4. Key Interactive Components & Micro-Interactions

### 4.1 Chat Bubble Geometry & Tails
* **Incoming Bubble:** Radius `12px` on top-left, top-right, bottom-right; `0px` with a small diagonal SVG nip on bottom-left for the first message of a cluster.
* **Outgoing Bubble:** Radius `12px` on top-left, top-right, bottom-left; `0px` with a green diagonal nip on bottom-right.
* **Metadata Alignment:** Timestamp and status checkmarks (`blueTickRead`) sit inside the bubble at bottom-right, with text automatically wrapping to avoid overlapping the time string.

### 4.2 Push-to-Talk (PTT) Voice Notes
* **WhatsApp Source Asset:** [`res/kjt.json`](../whatsapp-decompiled/res/kjt.json) (`Android PTT mic - Light`), [`res/kjq.json`](../whatsapp-decompiled/res/kjq.json) (`Wave 2`)
* **Behavior:**
  1. Hold mic icon: recording starts immediately with haptic click (`kh4.m4a`).
  2. Slide up to lock: hands-free recording with elapsed timer and live amplitude bars.
  3. Slide left to cancel: trash can animation (`wds_picto_trash`).
  4. Playback controls: Variable speed pill (`1x`, `1.5x`, `2x`), waveform scrubbing, and proximity sensor ear-piece audio routing.

### 4.3 Contextual Emoji Reaction Bar
* **WhatsApp Source Asset:** [`res/kiw.json`](../whatsapp-decompiled/res/kiw.json), [`res/kiu.json`](../whatsapp-decompiled/res/kiu.json)
* **Behavior:** Long-press any message bubble pops up a floating rounded white/charcoal pill displaying the top 6 emojis: 👍, ❤️, 😂, 😮, 😢, 🙏, plus a `+` icon to open the full emoji grid.
* **Reaction Pill:** Selected reaction pins to the bottom-corner of the bubble with a subtle drop shadow.

### 4.4 In-Chat Payments & Bill Splitting — W07 / future U07
* **WhatsApp Source Tokens:** `split_expense_bubble_amount_content`, `payments_message_bubble_background`, `split_expense_bubble_pay_now_divider`
* **Behavior:** Inside 1:1 and group chats, users can request an individually authorized payment; future U07 adds bill splits. The chat renders a structured card inside the message stream:
  - Token amount (e.g. `100 MSNW` or `25 USDT`).
  - Recipient / requester avatar.
  - Green "Pay Now" or "View Receipt" action button.
  - Tapping opens the canonical eligible Wallet review/step-up flow; it never authorizes a debit by itself.

---

## 5. Implementation assignments

Use these task IDs when applying the guidance above; status and acceptance live in the canonical roadmap.

| Component | Assigned task and delivery |
|---|---|
| Theme, bubbles/ticks, original animations/sounds, badges, reactions | P8-U01, initial-release polish; reuse current theme/chat components |
| Recorder gestures, preview, waveform and playback | P4-06 + P8-U02, initial release |
| Five tabs and Contacts People/Masana | P4-02 and existing shell; no Groups root/filter substitute |
| Broadcast/discussion Rooms and private access | P5-R01–R09; directory/trust expansion P8-U08 future |
| Portfolio, lookup, keypad and individual chat Pay | P6-W01–W08; existing financial authority |
| Private chat lock | P8-U03, future |
| Optional expiring Status | P8-U04, future |
| Call links/scheduling | P8-U05, future |
| Video/group calls | P8-U06, future |
| Payment requests/bill splitting | P8-U07, future; requires qualified Wallet |
| Signed production APK and deployment/device acceptance | P8-APK01–APK05 |

Run the roadmap’s available checks, record unavailable/unresolved ones with exact evidence and continue independent tasks. Never treat a skipped check as passed or an encryption-themed animation as proof of E2EE.
