# Masanawa publisher news Home — implementation and activation

Home now reads only `GET /v1/news`. No Masana persona, human posts, paid promotion or AI-generated official statements are allowed in this timeline. News articles are publisher-authored metadata/summary items, not forged posts on a publisher's own social account.

## Data path

The worker checks a fixed list of RSS feeds (BBC, Al Jazeera, DW, France 24, Guardian, Africanews, Global Voices). The app shows a local publisher identifier, checked-source badge, headline, short publisher feed description, attribution and a **Read original** action without displaying a raw URL. It does not copy article images or claim logo ownership. Likes, reactions, comments, replies, reports, hiding and saved links reuse canonical `feed.posts` IDs and existing safety controls.

**Activation (owner direction, 1 November 2026):** set `MASANAWA_NEWS_INGEST_ENABLED=true` on `masanawa-worker` and give that worker the existing `MASANAWA_PLATFORM_TENANT_ID` from the gateway. After the gateway applies migration `feed/0027_publisher_news.sql`, the worker automatically enrolls all seven pinned RSS sources for that existing platform tenant. The automatic record describes the owner's short-preview/attribution policy; it does not assert a publisher trademark licence. Enrollment is additive and idempotent, so manually suspended publishers remain suspended across restarts. The first worker pass checks all seven sources, and future checks poll due sources every five minutes. Normal publishing and moderation still apply.

All sources refer to canonical entries in `news_catalog.ts`. Unknown publisher IDs or modified feed URLs are rejected before fetching. No per-user/provider credentials, client-side crawling or browser automation. All XML is bounded, redirects denied, titles/summary sanitised, and article links checked against the publisher's allowed hosts. Existing articles disappear from public reads immediately if the publisher is suspended or the configured expiry is reached, while reactions and audit records are preserved.

Observe `news_ingest.batch` in worker runtime logs for the number of publishers checked and articles imported, then read `GET /v1/news` through an authenticated mobile session. News summaries are short RSS descriptions; the worker deliberately does **not** generate factual claims from unseen articles.

## User interface

Home keeps the compact search icon; news sources are selectable in the Filters sheet. Headline and summary are intentionally prominent, publisher labels are attributable, source links are named actions not visible URLs. The blue tick means **publisher identity checked by Masanawa**, not endorsement or a verified social account. Without a licensed logo, the app displays a neutral lettermark.

The old persona feed remains an internal historical API for saved/deep-link compatibility but is no longer the Home root. Historical money receipts, private conversations and profiles are untouched.

## Release gates

Combined workspace typecheck/tests, Flutter analyzer/widgets, migration/real PostgreSQL checks and CI must pass before merging. Live importer activation, provider rights, and handset verification are separate deployment qualifications. Do not misrepresent a CI test run as a compiled APK or verified live news.
