# WhatsApp communication adaptation coverage — 20 October 2026

**Status:** initial version-pinned candidate register, NOT a full decompiled behavioral audit and NOT implementation proof. **Reference sample:** whatsapp-decompiled/WHATSAPP-COMPONENTS-INDEX.md records WhatsApp Android v2.26.40.72 manifest/component discovery; source dir whatsapp-decompiled/. Static names and XML prove presence of labels/resources, not real functional behavior. Public WhatsApp Help/Blog release documentation is supplementary and may refer to capabilities in versions different from the pinned sample.

## Coverage by functional family

| Feature family | Individual non-Room candidates | Planned source milestone | Priority / proof required |
|---|---:|---|---|
| Human/Masana messaging, profiles, chat operations | 51 chat + 14 profile | P4-12 | P0 communication: real two-account user, privacy, durable backend receipt |
| Media and complete WhatsApp-quality voice notes | 36 | P4-13 | P0: records, media auth, restart/permission/cancellation |
| Human/Masana voice/video, group calls and handoff | 42 | P4-14 | P0 voice, P1 video and guest/handoff: real multi-device LiveKit/FCM |
| Status from humans, creators and Masana | 32 | P5-S01 | P0 social; preview/view/read/privacy/expiry with real multi-account media |
| Privacy, E2EE requirements, blocks and account safety | 30 | P4-15 / P8-X03 | P0; do not assert E2EE without audited protocol/device/key proof |
| Linked devices, cross-device history, backups, web/tablets | 26 | P8-X07 | P1 with P0 account fence/revocation/restore |
| AI in communication and scoped continuity | 18 | P5-R18 / Phase 2 carried | P0 consent, source separation, per-Room Masana access |
| Creator/support communication without business commerce | 18 (three explicit exclusions) | P8-X08 | P1; no business catalogue, carts, merchant system |

**All WhatsApp communication items:** 267 individual candidate rows, including 3 explicit business/merchant exclusion rows, in [FEATURE-REGISTER.csv](FEATURE-REGISTER.csv); separate **204** group/community/channel/Telegram-to-Room candidates in [ROOMS-REFERENCE-FEATURE-INVENTORY.md](../ROOMS-REFERENCE-FEATURE-INVENTORY.md). These are candidate counts, not feature-completion counts and should not be presented as non-overlapping totals.

## Mandatory exhaustive audit procedure (not yet run for every source file)

1. Pin inspected APK metadata, version, reference tree commit SHA, sampling method. Enumerate decoded WhatsApp manifest activities/permissions/services, res/layout and asset groups, strings, accessibility and policy labels by domain. Do NOT inspect or expose potential embedded secrets; security review of extracted APK bytes is separate.
2. Extract every candidate into CSV with stable WA ID, component or resource location and best official documentation URL; expand beyond the initial 267 until no discovered communication/control families remain unaccounted for. Distinguish confirmed public feature from static component inference and an aspirational Masanawa feature.
3. Cross-check actual current mobile Flutter screens and tests, Gateway, human chat/call and provider interfaces against each ID at one SHA. PR #227 is open and must be merged/reconciled; merged #228 memory is NOT to be assumed until confirmed. Existing A02/A04/A05/A07/R01–R18 are not sufficient evidence of behavior.
4. Design all screen components/states before UI iteration, then create tests that cover actor, authorization, offline, push, signout, small viewport, media revocation and true device call.
5. For features unusable legally/technically, label EXCLUDED_OWNER/PROVIDER_GATED/LATER with owner reasoning and final disposition; do not silently drop them. For features already working, record exact source SHA, test and VERIFIED_E2E only after real acceptance.

## Reference anchors

- [Static component index](../../whatsapp-decompiled/WHATSAPP-COMPONENTS-INDEX.md); [WhatsApp UI benchmark](../WHATSAPP-UI-ARCHITECTURE-BENCHMARK.md). Beware benchmark's old local file:/// paths and copied palette tokens; Masanawa must use original brand assets.
- [WhatsApp Communities](https://faq.whatsapp.com/495856382464992), [Community announcement permissions](https://faq.whatsapp.com/742237357891080), [Channel capabilities](https://faq.whatsapp.com/265055289421317), [Channel privacy](https://faq.whatsapp.com/1318001139066835).
- [Telegram topic model](https://telegram.org/blog/topics-in-groups-collectible-usernames), [Telegram July 2026 Communities](https://telegram.org/blog/communities-editor-invisible-messages) and [August 2026 welcome/messages](https://telegram.org/blog/welcome-messages-buttons-TG-13); these are Room inspiration, not WhatsApp decompiled evidence.
- The same five tabs remain Chats / Status / Wallet / Calls / Rooms. One-to-one remains in Chats; group/community/channel functionality is inside one creator-configurable Room.
