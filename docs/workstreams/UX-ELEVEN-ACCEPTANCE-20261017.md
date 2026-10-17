# Application design & navigation — 11-item implementation/acceptance record

Date: 2026-10-17
Repository: `Baatiku/Masanawa`
Source baseline before this record: `627f49ade0ebfd81af42ae922278d07cc17cf5e6`

The owner requested all 11 design/navigation improvements implemented and merged to `main`, and reserved final handset acceptance testing. The checklist below names actual source changes. **Source integration is distinct from executed widget tests, release compilation and installed-device acceptance.** None of these paths alone proves a working APK. Do not replace more recent implementation with an old handoff.

| # | Owner requirement | Existing source and merge evidence | Acceptance to execute |
|---|---|---|---|
| 1 | Consistent design tokens, whites, spacing, icons, typography | Semantic customer theme and tokens, Admin token alignment #129, #143, white chat surface #160; `apps/mobile/lib/src/theme/`, `apps/mobile/lib/src/tokens/`, `apps/admin_mobile/lib/src/theme/` | Check all five tabs, both light/dark, 320dp layout, keyboard zoom; compare actual screenshots |
| 2 | Remove obsolete user Twins and labels | Retired Talk/Twin public routes #130, unreconciled Credits gift hidden from Chats #151, legacy app-link labels clarified #162; `app_router.dart`, `ai_chat_screen.dart` | Search rendered routes and menus for old terms; do not rename historical ledger or wire fields |
| 3 | Approved phone-and-M logo in launcher, splash and notifications | Existing approved customer Android launcher/splash assets reused in Admin #129; Admin adaptive manifest fixed #159; customer `AndroidManifest.xml` uses `@mipmap/ic_launcher`, push code references `ic_stat_masanawa` | Inspect customer/Admin launcher, Android 12+ splash, notification small icon and dark/light devices; **pixel-level/icon tint appearance not confirmed** |
| 4 | Preserve tabs, search, scroll, filters, drafts | Status/Rooms #128/#133; Wallet history/custody #135; Masana contacts #151; five-tab `IndexedStack` retains visited tabs | Navigate among tabs, change user, confirm same-account persistence and account isolation; test unsent chats and form drafts |
| 5 | Consistent back gestures, titles and navigation | Legacy route retirement #130; canonical activity/Status and Masana links #162; dedicated Wallet/Crypto and account deletion routes #135/#155 | Back from deep links, account-switch while inside detail route, cross-tab and cold-start navigation |
| 6 | Complex financial/admin dialogs become pages | Existing Wallet full-page helper; P2P seller #140, bank verify #141, account deletion #155; crypto form recovery #137 | Complete, cancel, resume and retry each form; confirm no unintended duplicate financial operation |
| 7 | Content-shaped skeletons instead of unrelated spinners | Status/Rooms #128, finance/profile/security #132, Contacts #151, Calls #163; `masanawa_list_skeleton.dart` | Slow/absent network and session restore states across 5 tabs and account screens |
| 8 | Explanatory first-use/empty states with next action | Following/Status #128; Wallet history/Billing #132; Masana contacts #151; Calls search #163 | New account, empty filtered lists, failed search, offline content, no provider catalog |
| 9 | Preserve input, recover after failures, no dangerous retries | Wallet history #132/#135; Crypto drafts #137; P2P offer #140; bank verification #141; account deletion uncertain-outcome fence #155 | Simulate connection loss after submit; compare provider receipts before retrying, verify account fences |
| 10 | Fast startup; no artificial splash delay | `shell/startup_gate.dart` uses inline restoration skeleton; `shell/five_tab_shell.dart` only mounts visited tabs; original splash redirect is direct | Measure cold/warm launches on handset; verify no microphone/startup network blocking and no stale account data |
| 11 | Accessible large text, screen readers, touch/contrast/keyboard/reduced motion | Shared themes/transition preference #143; search focus & wordmark semantics #157; `ui/components/conversation_search_field.dart` | Android TalkBack, 200% text, hardware keyboard, reduced-motion, contrast, 48dp targets, error live announcements |

## Explicit current evidence and constraints

- Most source items above are merged; their state is `IMPLEMENTED_UNVERIFIED` until automated Flutter tests and device acceptance run against the integrated main SHA.
- This environment had no `flutter` or `dart` executable and no GitHub network path for a container checkout. Recent GitHub Actions checks reported failures before usable job steps, so they are not evidence of app compile success.
- This track did not change account-auth authority, MSNW custody/ledger math, provider payouts, Railway production data or financial migrations.
- A separate open PR #161 is modifying group-call experience; the UX track does not supersede or silently merge it.

## Reproducible source/handset acceptance

Run from a checkout of the latest merged main, not an older commit:

```sh
cd apps/mobile
flutter pub get
flutter analyze
flutter test
flutter build apk --release
cd ../admin_mobile
flutter pub get
flutter analyze
flutter test
flutter build apk --release
```

Manually install both new APKs on physical Android devices and follow the acceptance column. Report exact screen, device OS, action, expected/actual result and screenshot for any failure. A test/run that fails must be corrected before calling the entire 11-item release `VERIFIED_E2E`.

Keep ongoing parallel group-call changes and protected provider/financial work intact when repairing these results.
