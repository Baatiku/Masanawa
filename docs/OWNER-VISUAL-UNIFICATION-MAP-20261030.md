# Masanawa field, action, Activity and Buy Data visual unification — 30 October 2026

## Owner decisions and preserved contracts

- Editable input/search surfaces use a neutral light gray (`#F1F4F3`) in light mode, not pale green. Dark-mode editable surfaces use a distinct neutral dark role. A selected option or reviewed status may still use subtle green (`#E7FCEB`), with Masanawa green (`#25D366`) reserved for enabled primary actions. Disabled actions are neutral and stay disabled when required details or verified money are unavailable.
- The Wallet preview and full Transactions journal extend row amounts and status to the trailing content edge with balanced page padding, no amount truncation or fake amounts.
- Buy Data becomes a near-full-height route-backed modal sheet with four compact packages per row at standard phone width, adaptive fewer columns under large text, subtle green selected packages, neutral unselected packages, no large NGN balance header and a short inline insufficient-funds message during review. Keep the original `/wallet/add` route from Wallet and Chats.
- Center comparable in-content section headings: Quick actions, Recent transactions, Quick amounts, Data plans, Choose a package. Leave native page navigation, individual transaction text and the on-record financial review structure intact.
- Home feed retains white/neutral post surfaces and approved original-source content, uses softer green for the selected Like state and Tip affordance, and keeps readable strong-green accents only where needed. No composer, Boost or paid sharing is restored.
- Preserve `/wallet/redeem` and its PR #609 clean recovery, single inline financial warning, disabled insufficient-MB review, original encrypted key for uncertain dispatch, and account-safe state reset. No backend endpoint, ledger mutation or migration is necessary for this visual pass.

## File-by-file source map

| Area | Files | Change |
| --- | --- | --- |
| Shared semantic roles | `apps/mobile/lib/src/tokens/masanawa_tokens.dart`, `apps/mobile/lib/src/theme/masanawa_theme.dart` | Dedicated `fieldSurface` light/dark; input, chip, selected container and Material surface colours; retain green action hierarchy |
| Common controls | `apps/mobile/lib/src/ui/components/conversation_search_field.dart`, `primary_button.dart`, `phone_field.dart`, `masanawa_section_heading.dart` | Gray search and phone fields; correct primary action contrast/disabled style; reusable centered heading |
| Wallet home/Activity | `apps/mobile/lib/src/gb_wallet/gb_wallet_screen.dart`, `gb_wallet_activity_screen.dart` | Center headings; fill trailing amount/status column; neutral filter dropdowns |
| Wallet form flows | `apps/mobile/lib/src/gb_wallet/gb_send_screen.dart`, `gb_request_screen.dart`, `gb_recipient_lookup.dart`, `data_redemption_screen.dart`, `gb_data_choice_controls.dart`, `gb_data_purchase_panel.dart`, `ngn_funding_screen.dart` | Shared input colour via Theme, centered shortcuts/plan heading, existing money/owner gates retained |
| Buy Data | `apps/mobile/lib/src/gb_wallet/recharge_screen.dart`, `apps/mobile/lib/src/router/app_router.dart` | Four-across responsive modal chooser, original quote/review/confirm/recovery, route preserved |
| Home/Status | `apps/mobile/lib/src/features/home_feed/status_post_action_row.dart`, `feed_screen.dart` | Soft green selected Like and Tip affordance, neutral inactive actions |
| Onboarding | `apps/mobile/lib/src/screens/onboarding/name_screen.dart`, `otp_screen.dart`, `password_screen.dart` | Remove explicit white field overrides; inherit semantic gray |
| Other input-bearing pages | `apps/mobile/lib/src/screens/chat/*`, `screens/calls/*`, `screens/profile/*`, `screens/settings/*`, `screens/search/*`, `features/home_feed/*` | Inherit global neutral `InputDecorationTheme`; audit local overrides and preserve intentional non-input green surfaces |
| Tests | `apps/mobile/test/masanawa_light_theme_test.dart`, `ui/reduced_motion_theme_test.dart`, `ui/masanawa_section_heading_test.dart`, `ui/mui01_presentation_test.dart`, `gb_wallet_activity_test.dart`, `gb_wallet_shell_test.dart`, `ngn_wallet_exchange_test.dart`, `gb_send_review_screen_test.dart`, `gb_request_screen_test.dart`, `gb_data_purchase_recovery_test.dart`, `status_screen_test.dart`, `features/home_feed/status_shared_visual_matrix_test.dart`, `app_shell_route_compatibility_test.dart` | Tokens, geometry, 4-across layout, original financial safety, route and visual regressions |

## One-pass verification / stop gates

1. Apply all related source and test edits together, then run the combined Dart analyzer/widget/design/route and TypeScript smoke matrix once. Repair all failures as a group, then rerun the same matrix. Source-static checks cannot substitute for hosted Flutter.
2. Verify small phone (320/360/390dp), 200% type, RTL/Hausa, light/dark and reduced-motion state; keyboard inset and close/back sheet state; exact Activity trailing alignment; disabled financial confirmation; persisted uncertain exchange readback and account-switch isolation.
3. Push a scoped PR from current `main`, verify the final commit SHA with required GitHub Actions Mobile Build and Foundation CI. Merge only when relevant checks pass. Do not claim physical handset, real provider purchase, deployment or new APK from CI evidence.
