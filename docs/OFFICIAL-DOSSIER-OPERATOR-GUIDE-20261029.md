# Reviewed public-official dossier admission

This is a trusted server-operator tool, not a customer upload or automatic verification service. Do not run apply until the biography, source ownership, usage basis and canonical identity have been reviewed. No real official biographies are bundled in this change.

Build the workspace, then preview a UTF-8 JSON packet without opening a database connection:

```sh
node --conditions=production services/gateway/dist/official_dossier_cli.js /secure/path/packet.json
```

After review, apply with an identified operator using the existing server database secret:

```sh
node --conditions=production services/gateway/dist/official_dossier_cli.js /secure/path/packet.json --apply --reviewer reviewer-identity
```

Preview includes the normalized packet hash and optional source-account metadata for review. Applying the same latest approved packet returns the same receipt.

The command reads `MASANAWA_DATABASE_URL` or `DATABASE_URL` from the environment. Never pass a database URL as an argument or paste it into chat. Output contains preview metadata or a review receipt/hash; errors omit connection strings and source contents. Application requires migrations through Masana 0012 and Feed 0018. It never provisions identities, changes financial flags or enables the social importer.

## Packet fields

| Field | Requirement |
|---|---|
| `tenantId`, `characterId`, `characterVersionId` | Existing canonical IDs with the correct kind/prefix. |
| `officialName`, `office` | Reviewed public name and a dated office/role description; 2–160 and 2–240 characters. |
| `countryCode` | `NG`. |
| `identitySourceUrl` | Reviewed HTTPS reference, no credentials, custom port or fragment. |
| `reviewExpiresAt` | Future ISO timestamp, at most 90 days away. A shorter period is appropriate for changing candidate/party status. |
| `socialSource` (optional) | One reviewed original account: `platform` (`x`/`facebook`), stable numeric `accountId`, canonical `handle`, `rightsBasis`, and `reviewExpiresAt` no later than the dossier expiry. Never put API tokens in a packet. |
| `evidence` | 2–100 reviewed records, including Grokipedia and a separate primary official record. |

Each evidence record has `sourceUrl`, `kind` (`grokipedia`, `official_record`, `speech`, `official_social`), `title`, `content` (1–4000 characters), `sourceDate` (`YYYY-MM-DD`), `validUntil` and `licenseBasis`. Preserve quotations exactly and distinguish factual statements, allegations and promises in the reviewed content. Chunk longer documents into coherent dated records. Source dates cannot be invalid/future dates; validity must extend beyond the present and cannot exceed the dossier review. A Grokipedia URL cannot also qualify as the required primary official record. Record page-level licensing and primary-record attribution; the tool cannot independently verify ownership or rights from a URL.

## Canonical identity requirements and recovery

Provision a **new** platform-owned canonical identity using the existing identity/admin workflow and cleared imagery. Its exact active published constitution must include:

```json
{"publicOfficial":{"officialName":"The exact reviewed name","countryCode":"NG"}}
```

Its ordinary approved Masana presentation must already exist. Keep its user-app visibility off until dossier admission and quality evaluation have passed. Every previously published version for that character must carry the same public-official name/country marker; a former fictional identity cannot be reused. A marked official without a valid dossier cannot fall back to fictional-persona chat instructions.

Admission locks the canonical identity, checks ownership/version and forbids changing an existing dossier to another person. A replacement packet withdraws old evidence rather than overwriting it and creates an immutable hashed receipt in the same transaction. Exact retries of the latest approved packet return the original receipt; an older superseded packet cannot reactivate an earlier review. A suspended dossier needs an explicitly revised, reviewed packet rather than an accidental retry. Invalid data or a database failure rolls back the entire admission.

A source-account packet is part of the same atomic review. Switching the chosen platform/account suspends the old source without relabeling or deleting its historical imports. Only one source can be approved for an official at once. An account previously bound to another person cannot be reassigned by this tool; an institutional account changing officeholders needs a separate qualified handover process. A failed source admission rolls back both the biography and source changes. Credentials remain separate server secrets and the polling switch stays off.

## Retrieval and remaining qualification

Text questions and nonempty media captions supply at most 500 characters of search input through the authorized tenant/persona/version admission. The reader keeps required biography/primary identity evidence and ranks the remaining bounded excerpts using sanitized terms against the public corpus. Excerpts center on matching terms (including matches beyond the beginning of a document), retain source URLs/dates, and use bounded UTF-8/JSON evidence budgets. A question about an older position can retrieve that record instead of only recent statements. Search input never updates the shared corpus or changes private conversation scope.

This is lexical retrieval, with no guarantee of semantic or cross-language coverage. Voice notes with no caption and ongoing live calls still use the reviewed baseline evidence; live speech-to-retrieval integration, factual evaluations, actual source packets, provider deletion compliance and the live pilot remain open. Do not describe this tool or passing tests as verified impersonation quality or a production launch.
