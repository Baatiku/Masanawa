# Retired backend source deletion batch

Continues the verified route shutdown in #404. Removes unreachable Gateway runtime implementations and obsolete tests: Rooms/Talks, public creator authoring, external video ingestion, human calls, external messaging and legacy customer financial route implementations. Removes Rooms runtime/package metadata and PostgreSQL Rooms/external-video adapters, preserving every applied migration. Agent directory identity is now independent of Rooms. Removes WhatsApp/QR dependencies, patches and Docker patch-copy requirements; frozen lockfile updated.

Human Status publication/edit/delete code is removed from service/runtime/repository contracts. Saved library is approved platform-Masana posts only; old saved/video and financial rows are not deleted. Registers authenticated `/v1/saved` using the real principal, bounded opaque cursor and private no-store response. Human social comments, profiles, follows and essential safety remain.

Historical financial reconciliation callbacks and their dependency closure remain deliberately isolated. P2P/custody accounting helpers still needed by historical-liability acceptance fixtures are retained; this is not a claim that every legacy domain package has been deleted. Applied schema and historical funds are untouched. Separate Masanawa-App untouched.

Local validation: all-workspace TypeScript and build passed; full PostgreSQL-backed TypeScript suite initially found two obsolete WhatsApp patch assertions, now updated along with Docker inputs. Final exact test result and hosted CI are required before merge. No APK or provider purchase. New UX requirements are audited separately in [the feed/wallet plan](FEED-WALLET-UX-AUDIT-AND-PLAN-20261025.md); no redesigned UI is claimed here.
