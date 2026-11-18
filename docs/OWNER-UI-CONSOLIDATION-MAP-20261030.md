# Owner UI consolidation — 30 October 2026

## Execution rule

Map the connected code and regression surfaces first. Apply all source, routing,
state, backend and test-contract changes as one coherent patch batch; only then
run one combined verification matrix. Group all failures into a repair pass and
rerun the combined matrix. Avoid test/rewrite cycles after each small edit.

## Screen and file map

| Screen / behavior | Main Flutter files | Supporting source / action |
| --- | --- | --- |
| AI persona chat entry | `screens/chat/ai_chat_screen.dart` | One centered, non-message, small public-profile disclosure; suppress legacy artificial first greeting; voice-call and voice-note recovery |
| Voice-note capture / attachment | `core/voice_note_recorder.dart`, `ui/components/voice_note_composer.dart`, `screens/chat/ai_chat_screen.dart` | Release failed recorder, retry microphone; centered actionable permission, network and MB errors; keep local audio ownership safe |
| Live Masana call | `screens/chat/ai_chat_screen.dart`, `agents/agent_feedback.dart`, `calls/masana_voice_route.dart` | Categorize server MB shortage, unavailable voice service, microphone and connection errors; no unreviewed call or charge |
| Wallet home | `gb_wallet/gb_wallet_screen.dart`, `gb_wallet/gb_balance_card.dart`, `gb_wallet/ngn_funding_card_details.dart` | Remove Balance details; retain fixed layout and current-account verified MB/NGN/bank readback through transient failures |
| Wallet Data redemption | `gb_wallet/data_redemption_screen.dart` | Retain last verified plan tiles and MB card during transient offline states; disable new quotes until fresh authority returns |
| Request MB | `gb_wallet/gb_request_screen.dart` | Keep only recipient, preset/custom amount and Send request; remove history and incoming action controls |
| Transactions | `gb_wallet/gb_wallet_activity_screen.dart`, `gb_wallet/gb_wallet_activity_detail_screen.dart` | Dated posted rows, centered Filter and Export only; no Overview, holds, promotions or inquiry entry; original receipt detail remains separate |
| Removed financial UI | `gb_wallet/gb_wallet_holds_panel.dart`, `gb_wallet/gb_wallet_holds.dart`, `gb_wallet/gb_promotion_activity_panel.dart`, `gb_wallet/gb_retained_finance_screens.dart`, `gb_wallet/gb_retained_finance_api.dart` | Delete dead UI/client transports, not immutable server finance history; old inquiry URLs redirect to Wallet |
| Profile root and edit | `screens/settings/settings_screen.dart`, `screens/profile/edit_profile_screen.dart` | One minimal account/settings hub; editor is subordinate, not another settings dashboard; retain security/privacy/deletion |
| Calls history | `screens/calls/masana_only_calls_screen.dart` | Only search, new call, grouped history, detail/retry; no old totals or advanced filters |
| Data / Send / Masana filters | `gb_wallet/gb_send_screen.dart`, `gb_wallet/gb_data_choice_controls.dart`, `screens/chat/masana_list_screen.dart`, `features/home_feed/feed_post_detail_screen.dart`, `features/home_feed/my_status_promotions_screen.dart` | Center visible filter/choice rows, including narrow layouts |
| Deep links | `router/app_router.dart`, `core/shell_deep_link.dart` | Remove all inquiry pages and redirect previously issued inquiry URLs; preserve transaction receipt links |
| Retained finance runtime | `services/gateway/src/main.ts` | Do not mount historical finance inquiry/review API in production; preserve immutable data, original receipts and non-customer audit tables |
| 500 MB for existing users | `packages/commerce/migrations/0211_universal_chat_call_welcome.sql` | One forward-only claim and immutable credit/movement backfill for active identities; no duplicate prior phone welcome |
| 500 MB for future users | `adapters/storage/postgres/src/gb_wallet/repository.ts`, `services/gateway/src/main.ts` | Transactional once-only grant when an active authenticated user first enters a feature; purchased funds untouched |
| Regression contracts | `apps/mobile/test/{gb_wallet_activity_test,gb_wallet_shell_test,gb_request_screen_test,masana_only_calls_screen_test,agent_recovery_test}.dart`, `adapters/storage/postgres/src/gb_wallet/{gb_wallet.integration.test,universal_welcome_migration.test}.ts` | Assert removals, original server authority, correct first-grant concurrency and no cross-account caching; remove tests for retired UI files |

## Deferred external evidence (not code incompleteness)

- Hosted Flutter analyzer/widget and Android build must run on the exact final head;
  local Flutter tooling may not be available in the workspace.
- Real connected microphone/voice provider, deployed migration readback and
  provider charge/settlement are not implied by backend or widget tests.
- No APK or production financial-provider activation is part of this batch.
