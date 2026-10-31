# Masanawa publisher news Home — implementation and activation

Home now reads only `GET /v1/news`. No Masana persona, human posts, paid promotion or AI-generated official statements are allowed in this timeline. News articles are publisher-authored metadata/summary items, not forged posts on a publisher's own social account.

## Data path

An opt-in worker checks a fixed list of approved RSS feeds (BBC, Al Jazeera, DW, France 24, Guardian, Africanews, Global Voices). The app shows a local publisher identifier, checked-source badge, headline, short publisher feed description, attribution and a **Read original** action without displaying a raw URL. It does not copy article images or claim logo ownership. An official logo URL is supported only when a reviewed branding grant is recorded. Likes, reactions, comments, replies, reports, hiding and saved links reuse canonical `feed.posts` IDs and existing safety controls.

`feed.news_publishers` is **not seeded as approved**. Public availability of an RSS URL or content is not a commercial-use licence; the production operator must verify a source's terms before creating a `pending` publisher row and recording an explicit rights decision. BBC explicitly requires permission/licensing for commercial RSS metadata, and the Guardian commercial API is not free. Do not set their rows to approved based solely on the existence of an RSS URL.

Example enrollment (replace tenant ID only with the authenticated platform tenant from the DB; the values shown below DO NOT enable import):

```sql
INSERT INTO feed.news_publishers(tenant_id,publisher_id,display_name,feed_url)
VALUES (:tenant_id,'bbc','BBC News','https://feeds.bbci.co.uk/news/rss.xml')
ON CONFLICT(tenant_id,publisher_id) DO NOTHING;
```

Approval after independent licence review, using the appropriate source's legal permission and expiry:

```sql
UPDATE feed.news_publishers SET
 state='approved',rights_basis=:verified_rights_evidence,
 reviewed_by=:operator_user_id,rights_until=:rights_expiry,
 logo_licensed=false,logo_url=NULL
WHERE tenant_id=:tenant_id AND publisher_id=:publisher_id;
```

All approvals must refer to canonical entries in `news_catalog.ts`. Unknown publisher IDs or modified feed URLs are rejected before fetching. No per-user/provider credentials, client-side crawling or browser automation. All XML is bounded, redirects denied, titles/summary sanitised, and article links checked against the publisher's allowed hosts. Existing articles disappear from public reads immediately if the publisher's rights expire or are suspended, while reactions and audit records are preserved.

After migration 0027 and approved publisher rows are present, enable worker-only `MASANAWA_NEWS_INGEST_ENABLED=true` in the real deployment environment. Do not enable it in this source-only PR. Observe poll/backoff and article counts, provider terms, site feed accessibility and any rights withdrawal; only after successful readback describe content as live. News summaries are the feed's permitted short descriptions; the worker deliberately does **not** generate factual claims from unseen articles. External AI summaries would require a separately verified content-access and factuality contract.

## User interface

Home keeps the compact search icon; news sources are selectable in the Filters sheet. Headline and summary are intentionally prominent, publisher labels are attributable, source links are named actions not visible URLs. The blue tick means **publisher identity checked by Masanawa**, not endorsement or a verified social account. Without a licensed logo, the app displays a neutral lettermark.

The old persona feed remains an internal historical API for saved/deep-link compatibility but is no longer the Home root. Historical money receipts, private conversations and profiles are untouched.

## Release gates

Combined workspace typecheck/tests, Flutter analyzer/widgets, migration/real PostgreSQL checks and CI must pass before merging. Live importer activation, provider rights, and handset verification are separate deployment qualifications. Do not misrepresent a CI test run as a compiled APK or verified live news.
