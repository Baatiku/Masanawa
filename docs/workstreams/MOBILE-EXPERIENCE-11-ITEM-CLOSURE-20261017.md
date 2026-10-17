# Mobile experience — 11-item source integration and remaining acceptance

Date: 2026-10-17
Repository: Baatiku/Masanawa
Baseline after UI/admin work: `fd550c60061708bbe13bf26d2edb62180303c5a9`
Scope: customer Flutter five tabs (Chats, Status, Wallet, Calls, Rooms), their detail routes, and supporting Admin mobile workflows.

This is a **source-integration ledger**, not a claim that all 11 requested outcomes are released or device-qualified. GitHub CI jobs on feature PRs failed before steps executed; no Flutter/Dart/Android SDK was available in the execution environment. Tests below were authored but not executed. Preserve unrelated account/auth PR work, all financial records and provider contracts.

## Landed code (all PRs merged to main)

- #113 account-keyed root tab PageStorage, Chats/Calls skeletons, recovery, Android green background, minimum icon touch target.
- #114 dedicated Masana reporting screen with typed-note retention and user-facing retired-Twin profile cleanup.
- #115 preserve approved green phone-and-M source mark, splash configuration and density-specific notification resources; stop the old generator from overwriting approved artwork.
- #116 predictable standalone Wallet back navigation, Wallet list position, profile skeletons and contrast improvements.
- #117 dedicated Admin Masana profile revision and rights-cleared media forms with validation and preserved drafts.
- #118 restore malformed Admin Commerce offer validator and remove accidentally duplicated Dart declarations (source build blocker).
- #119 dedicated Commerce Offer editor; backend mutation runs inside the route so errors retain input.
- #120 remove duplicate root/Chats floating actions; preserve Calls query and position across same-account token refresh while rejecting old-request responses.
- #121 race account-scoped directory disk cache against live request; prevent late cached records overriding success or resurrecting denied sessions. Added four race tests.
- #122 strong green for readable wordmark/selected text, shared search-input fill, branded read receipt token, reduced-motion root tab transitions.
- #123 dedicated Admin Skill readiness page with preserved entries and inline save errors.
- #124 titled User relationships / external payment receipts pages, with skeleton/loading/empty/error/retry/refresh behavior.

## Closure matrix — source implementation versus acceptance

| Requested improvement | Integrated source | Not yet accepted / next implementation |
| --- | --- | --- |
| 1. Consistent design | Central palette already present; green text, search fill and selected navigation refined | Audit every customer detail and feature surface for raw colors, background whites, typography/radii and icon sizing; test narrow and RTL layouts |
| 2. Retire Twin terminology | Chat report/block and former personal-profile UI corrected | Sweep legacy Talk/Direct Twin routes, localized visible strings and unreferenced UI; preserve wire schema/history identifiers |
| 3. Icon identity | Approved launcher art preserved; native splash config/notification resources wired | Regenerate Flutter/native resources, build APK and inspect launcher, round/adaptive, Android 12 splash and notification icons across OS versions |
| 4. Persistent screen state | Mounted root tabs, account-keyed Chats/Calls scrolling, Wallet assets, same-account token refresh | Check Status/Videos/Rooms filters, search and content position; drafts across pushed routes and process restart; account-switch isolation |
| 5. Predictable navigation | Wallet/profile/report/admin detail pages have titles and back controls | Audit remaining all deep links, nested financial screens, gestures, keyboard dismissal, return tab and process-restoration destinations |
| 6. Replace complex dialogs | Masana report/admin revision/media, Commerce offer, Skill readiness, admin receipt/relationship screens | Move remaining multi-step financial/admin form dialogs to routes; keep short irreversible-action confirmations if appropriate |
| 7. Loading skeletons | Chats, Calls, profile, receiving address and admin detail placeholders | Complete content-shaped placeholders for Wallet/Status/Rooms and all remaining lists/detail pages |
| 8. Useful empty states | Chats/Calls and admin detail screens offer explanations or actions | Review every screen; distinguish genuinely zero records from unavailable/unverified data |
| 9. Failure recovery | Search retries, admin/report form retention, cache/offline fallback | Test draft preservation after network loss and app background on all money, attachment and admin workflows; use idempotent/reconcilable writes |
| 10. Startup speed | No fixed splash gate, post-frame push initialization, local session fast read and concurrent roster I/O | Profile cold/warm startup on low-end Android hardware; use ActivityManager plus MASANAWA_STARTUP markers; fix measured bottlenecks only |
| 11. Accessibility | 48dp target, contrast improvements, labelled static skeletons, reduced root tab animation | Screen-reader order, reduced motion across remaining transitions, keyboard navigation, focus restoration, 200% font, contrast and RTL QA |

## Required verification before marking all eleven complete

Use an accessible Flutter/Android runner on **the exact final main SHA**:

```sh
cd apps/mobile
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
cd ../admin_mobile
flutter pub get
flutter analyze
flutter test
```

Do not claim success before the commands actually complete. Run representative Android device smoke tests: cold/warm launch, account switch, five-tab navigation and scroll/search persistence, report failure, Admin revision/media/offer/readiness failures, all icon variants, TalkBack with increased font scale, keyboard and reduced-motion settings. Preserve existing security fences and never turn unknown/unverified custody funds into a displayed zero. Provider/financial release qualification remains separate from these UI changes.

## Parallel ownership and next workstream

Integrate from fresh origin/main. Do not overwrite other windows' current claims or the open AF08 authentication/security work. Prioritize the remaining visible screens and high-frequency journeys before broad cleanup. Source status is **PARTIAL_IMPLEMENTATION with unrun tests**, not VERIFIED_E2E; keep working until the matrix is closed.
