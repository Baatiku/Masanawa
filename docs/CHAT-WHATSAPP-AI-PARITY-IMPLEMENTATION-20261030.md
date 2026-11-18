# Chats UI parity — AI-only connected implementation (30 October 2026)

## Authority and scope
Only Masana AI conversations; use the checked-in WhatsApp reference for UI inspiration, not binary assets or unsupported product claims. No person-to-person conversations, Groups, E2EE badges, fictional presence, speculative receipts, video messaging or payment effects.

## Source change map
- `screens/chat/chat_list_screen.dart`: shared 52dp avatar row; unread, timestamp, draft, accessible archive actions, pin and single-item menu
- `screens/chat/unified_chat_inbox.dart`: pinned first, archived hidden, server/local visual parity, account-safe paged search, server revision CAS for remote pinning
- `ui/components/masanawa_conversation_tile.dart`: shared measured row geometry and adaptive trailing column
- `ui/components/conversation_search_field.dart`: neutral 24dp pill, green two-pixel focus
- `state/ai_chat_state.dart`: exclude archived from active list, sort pinned first; keep history and drafts durable
- `screens/chat/ai_chat_screen.dart`: 86%-max-width grouped RTL bubbles; correct message metadata alignment and truthful delivery state; compact anchored action/reaction menu; inline edit with draft restoration; attachment/photo and recorder density; retain Wallet, Call and AI identity disclosure
- `ui/components/voice_note_hold_region.dart`: direction-aware slide-to-cancel.
- `test/chat_whatsapp_parity_test.dart`: pin/archive, shared row and search regression.

## Acceptance gates
Flutter analyzer, full widget suite and startup test must pass on final published SHA. Visually verify 320/360/390dp, 200% text, light/dark, RTL, Hausa and accessibility before handset acceptance. Test provider-backed call/voice and secure media separately. The implementation does not claim physical screenshot pixel parity with third-party WhatsApp versions or an actual handset pass.
