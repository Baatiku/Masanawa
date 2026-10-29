# Home, Profile, portraits and calls — 29 October 2026

The feed needed refinement: heavy floating shadows, large rounded phone margins and repeated separators competed with the content. Phone posts now use flat full-width surfaces, compact neutral separation, readable body spacing and the retained Like/Comment/ordinary Share controls. Wide screens retain a modest card inset. Existing MB Tip remains in the author header. Current source already omitted the inner Status title/top Saved icon; regression checks preserve that. Wallet/Calls inner headings are removed; the shared branded header remains.

Five roots now read Home, Chats, Wallet, Calls, Profile. The last destination is the signed-in account avatar and existing account/settings surface, including profile editing, username/security/notifications and applicable operator entries. It avoids duplicating an avatar button in every root header. Wallet retains Buy Data and Redeem Data; `/wallet/redeem` is protected, pushed as a secondary page and returns to Wallet even from a standalone old link. Former Data query/billing links never open Profile by accident. Account-owned photos use a safe initial fallback and are not persisted as public Masana stock media.

## Confirmed portrait defect

`createAgentDirectoryService` and the real database identity projection returned `portraitKey`, but `AgentDirectoryEntrySchema` omitted it with `additionalProperties:false`. Fastify serialization stripped the approved key before Flutter received it. Flutter correctly refused to guess a canonical identity's portrait from its mutable display name, leaving initials. Updating bundled photos alone could never fix this wire-contract defect.

The explicit HTTP schema now preserves approved portrait, follow, country, starter, social/source and AI-simulation metadata while continuing to strip private/skill fields. Regression acceptance reads all 26 renamed canonical portraits through real SQL and the actual HTTP route. All 26 packaged WebP photos are decoded as real images and checked for distinct contents; they do not require GitHub network downloads. No fictional image is assigned to a public official.

## Call presentation and voice selection

The portrait is explicitly centred and enlarged. Speaker, microphone and red end controls are fixed at the bottom in the same ordering as the inspected [WhatsApp reference](https://support.google.com/android/thread/177809704/how-to-connect-bluetooth-when-using-whatsapp-call?hl=en). Both icon and label activate each control, with one accessible labelled action. Narrow/large-text/landscape stages scroll while the footer remains reachable. Video and encryption claims are not introduced.

The voice audit found global fallback paths when per-persona metadata is missing, and a stock migration that skipped some original shared defaults. Configured platform voice grants now require explicit valid Gemini profile metadata; optional recorded replies cannot silently use a global fallback in normal composition. Untouched revision-one shared Aoede/Kore/Sulafat profiles adopt the existing owner-approved distinct assignments; later staff edits remain intact. Provider wire tests pin distinct Bodi/Fola names end to end. This does not independently prove the remote provider accepts every owner-selected voice or produces distinct audible timbres.

## Visual evidence

- [Phone Home card](../apps/mobile/test/goldens/home-feed-phone.png)
- [Outgoing call stage](../apps/mobile/test/goldens/masana-call-phone.png)

Baselines use pinned Roboto/Material icon test fonts and actual decoded bundled portrait pixels, not Ahem rectangles. These test-only fonts and their licenses are outside application assets and do not enlarge the APK. The outgoing-call capture deliberately waits for provider readiness so a nondeterministic running stopwatch cannot alter the baseline. Connected/ended states and controls are checked separately.

## Verification and actual limits

Connected backend: 89 PASS, including SQL → HTTP portrait serialization, voice selection, conversation/media/streaming and call relay/admission contracts. Connected Flutter run: 116 PASS initially with one new navigation fixture failure; affected rerun: 9 PASS after correcting semantics cleanup and asserting the actual pushed screen. Full workspace types/build PASS; final analysis zero errors/warnings, 459 existing informational findings. Required exact-head hosted checks gate delivery.

Railway readback found Gateway live SUCCESS `ecdd0f17-191e-4674-a794-617e626d396f` on older commit `ac0e365` (#596), with later source deployments `NEEDS_APPROVAL`. Gemini variable names exist but OAuth withholds values; this workspace has neither a Gemini key nor authenticated Railway CLI/service-shell access. No authenticated customer account, physical microphone or new real provider response was exercised here. No new APK or deployment approval is claimed.

A credentialed service operator can run the bounded real-provider audio check without customer balances:

```sh
node --conditions=production services/gateway/dist/voice_smoke_cli.js --voices Bodi,Fola
node --conditions=production services/gateway/dist/voice_smoke_cli.js --voices Bodi,Fola --out /tmp/masanawa-voice-evidence --run
```

Preview makes zero provider calls. Only `--run` uses the existing service key, obtains real Gemini Live PCM audio for the requested voices and saves WAV/hash/duration/report evidence. It uses a fixed diagnostic phrase, never customer conversation. Errors redact keys and raw provider payloads. A provider audio pass is still not handset microphone/playback or settled-call billing acceptance. The owner's prior Billstack confirmation is retained.
