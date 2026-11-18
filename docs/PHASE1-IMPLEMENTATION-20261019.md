# Phase 1 — Integrated implementation and acceptance

**Date:** 19 October 2026. **Product source of truth:** [canonical roadmap](PRODUCT-ROADMAP-20261019.md), [screen and journey inventory](SCREEN-JOURNEYS.md). This record maps each of the 12 Phase 1 items to the source actually worked on. A merge or simulator test is **not** evidence that an installed handset, Firebase provider or account in production has passed.

## Integration and tested boundaries

This branch reconciles and transports the functional source of the open owner checklist [PR #220](https://github.com/Baatiku/Masanawa/pull/220) onto the **post-cleanup** main tree. The original branch predates the deletion of obsolete docs and Alpha/Twin scripts, so do not merge it as-is and reintroduce retired material. Runtime/financial source, test updates and currently useful build patches are preserved. Do not reintroduce Alpha bootstrap or obsolete documentation.

Additional Phase 1 improvements on top of that checkpoint:

- Enable Flutter root restoration only for account-bounded, low-sensitivity view selections; no chat contents or Room searches are persisted as restoration data.
- Preserve selected Status Updates/Videos tab on Android process recreation, and preserve Rooms Joined/Discover tab and language preference. Switching accounts must select a fresh view.
- Replace the root PageStorageBucket when the signed-in account changes so prior-user scroll/search positions are not reused.
- Remove redundant analyzer warnings in the touched UI; retain global green/white theme, existing auth and financial authorities.
- Protect original signed APK/signing identity, PostgreSQL records, creator ownership, billing callbacks and wallet receipts; no production secrets or irreversible migrations are part of this UI milestone.

## All 12 Phase 1 requirements — explicit status

| ID | Requirement | Source integration | Acceptance and remaining work |
|---|---|---|---|
| P1-01 | Five-tab Chats-first shell | **Already on main**; PageStorage isolated by account in this branch | Verify root/back/deep-link on exact installed artifact |
| P1-02 | Consistent design/tap targets | **Improved** by #220: brand header, profiles, Rooms, Wallet, assets, entry/review pages, shared colors; current theme centralizes components | Whole-app visual inspection of all detail routes on two screen sizes remains **DEVICE_NOT_RUN**; obsolete Talk/Twin routes are not active product UI |
| P1-03 | 320px / 200% / RTL / keyboard | **Improved** by existing responsive widgets and #220 P2P/Wallet/profile form changes | Test source/widget cases and validate keyboard/TalkBack/RTL on hardware; DO NOT claim device pass from widget tests |
| P1-04 | Cold/warm startup and offline restore | **Already implemented** fast-launch gate, deferred push bootstrap, startup markers/cached directory; not duplicated | Automated startup-route tests cover restoration; actual performance timing on low-memory Android **DEVICE_NOT_RUN** |
| P1-05 | Screen state/drafts/back behavior | **Improved**: secure account-scoped drafts, PageStorage fence; new Status/Rooms restoration code and tests | Android process-death/back-deep-link and full financial form draft cycle **DEVICE_NOT_RUN** |
| P1-06 | Empty/loading/error/permission/offline | **Improved** via #220 Wallet/Profile/Rooms/Status and existing skeleton/retry components. Unknown balances never appear as zero | Inspect every one of the 28 screen routes during integrated E2E; account-denied/provider-offline outcomes still need external tests |
| P1-07 | Phone/email sign-in, recovery, session protection | **Already implemented** numeric phone password and email OTP, account-contact/account-security routes; retains stronger recovery fences and revocation; #220 improves post-auth profile corrections | Real recovery, session revocation and international phone login with live backing account **E2E_NOT_RUN** |
| P1-08 | Own/public creator profile and canonical portraits | **Improved** by #220: canonical server portrait identities, creator links, own/public profile layout and image consistency | Fresh/second-account profile, privacy and media readback on actual account **E2E_NOT_RUN** |
| P1-09 | Settings/exports/security/deletion | **Improved** by #220: bounded authenticated ZIP conversation export, protected account data, draft-preserving cache clear, diagnostics review, public-profile deletion redaction | Real account export/deletion/financial hold and permissions test **E2E_NOT_RUN** |
| P1-10 | Adaptive/notification/Android 12 icons, TalkBack | **Already source-present**, including #219 splash correction, Android signing manifest and icon resources | Exact APK build/signature, TalkBack/large font/gestures and OS 12/13 behavior **DEVICE_NOT_RUN** until physical installation |
| P1-11 | Unified search/recent searches | **Already merged in #207**: authorized Masana/chats/Rooms/latest Status and encrypted account-namespaced recent history; no false full-content index claims | Two-account search/deep-link validation against real Gateway **E2E_NOT_RUN** |
| P1-12 | FCM, privacy-safe notification routing | **Already merged in #207**: privacy redaction, history, quiet hours/categories, safe deferred deep links and financial alerts | Firebase token registration, foreground/background/terminated, multiple accounts, device doze and linked routing **PROVIDER_DEVICE_NOT_RUN** |

### Tested versus untested evidence

| Check | Result / interpretation |
|---|---|
| Flutter SDK | Flutter 3.47.7 / Dart 3.13.5 in cloud build sandbox |
| Flutter Status process restoration | PASS widget test: selected Videos survives restart; changed account starts Updates |
| Flutter Rooms restoration | PASS widget test: selected Discover survives restart; account change starts Joined; search text not restored |
| Flutter compile/analyze | No Dart errors in project source at initial whole-app pass; older warnings/infos in other files are reported, not suppressed. Rerun on final source SHA. |
| Existing Flutter regression suites | Report exact outcome of each executed suite in PR notes. A sandbox flutter_tester process segmentation fault is an **environment execution failure**, not a pass and not automatically a production app crash. |
| Backend | Gateway and Worker production TypeScript builds and full workspace typecheck executed on integrated source. Focused Gateway tests executed; separately gated PostgreSQL suites are not counted as passes. |
| Physical Android | An APK may be produced from exact source, but no ADB handset/emulator was connected in this environment. Native performance, keyboard and notification acceptance are **NOT_RUN**. |
| Providers | No live SMS/email, FCM, bank, wallet, crypto, on-chain mint, P2P settlement or other external purchase is counted as qualified in Phase 1. |

## Go/no-go and follow-ups

**Development integration gate:** pass applicable production builds and specific Flutter regressions, source review, account-isolation checks and clean staged diff, then merge compatible source. **Customer release gate:** the installed APK must pass all Phase 1 relevant golden journeys (from SCREEN-JOURNEYS) for an authenticated user and a second account, plus cold/warm startup on a low-memory phone, real push, keyboard/RTL/TalkBack, source-identifiable signature and rollback. Never label this phase `VERIFIED_E2E` until that evidence is recorded.

Continue with **Phase 2** only after recording remaining Phase 1 device/provider acceptance and repairing any genuine failures discovered. Do not repeat development already merged from #220.

### Integration CI repairs

- Fixed an existing `agent_recovery_test.dart` fast-race test to inject its already-defined in-memory/no-op roster-cache implementation rather than initialize native Drift/path_provider in a pure Dart widget test. This is a test injection repair, not removal of production persistence.
- Removed unused UI/test declarations which Flutter analyzer had reported as warnings. Remaining information-level lint suggestions do not by themselves demonstrate broken behavior.
