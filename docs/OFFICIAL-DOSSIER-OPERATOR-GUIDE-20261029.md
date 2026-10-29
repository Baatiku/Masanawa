**29 October owner clarification:** Grokipedia is the sole persona biography source. One actual reviewed Grokipedia article/chunk is sufficient; a second source and individual official permission are not admission requirements. Preserve source URL/content/date/audit basis. Do not substitute newspapers or an official website as biography evidence. Separately configured original social posts remain supported for the owner's requested status feed. The owner owns manual provider/live acceptance; admission still requires actual source contents, not invented biography text.

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

The command reads `MASANAWA_DATABASE_URL` or `DATABASE_URL` from the environment. Never pass a database URL as an argument or paste it into chat. Output contains preview metadata or a review receipt/hash; errors omit connection strings and source contents. Application requires migrations through Masana 0013 and Feed 0022. It never provisions identities, changes financial flags or enables the social importer.

## Packet fields

| Field | Requirement |
|---|---|
| `tenantId`, `characterId`, `characterVersionId` | Existing canonical IDs with the correct kind/prefix. |
| `officialName`, `office` | Reviewed public name and a dated office/role description; 2–160 and 2–240 characters. |
| `countryCode` | `NG`. |
| `identitySourceUrl` | Direct HTTPS Grokipedia `/page/Article` reference, no credentials, query, custom port or fragment. |
| `reviewExpiresAt` | Future ISO timestamp, at most 90 days away. A shorter period is appropriate for changing candidate/party status. |
| `socialSource` (optional) | One reviewed original account: `platform` (`x`/`facebook`), stable numeric `accountId`, canonical `handle`, `rightsBasis`, and `reviewExpiresAt` no later than the dossier expiry. Never put API tokens in a packet. |
| `evidence` | 1–100 reviewed Grokipedia article/chunk records; no separate primary source. |

Each evidence record has `sourceUrl`, `kind` (`grokipedia` only), `title`, `content` (1–4000 characters), `sourceDate` (`YYYY-MM-DD`), `validUntil` and `licenseBasis`. Preserve quotations exactly and distinguish factual statements, allegations and promises in the reviewed content. Chunk longer documents into coherent dated records. Source dates cannot be invalid/future dates; validity must extend beyond the present and cannot exceed the dossier review. No independent official record is required. `licenseBasis` is retained audit metadata for the actual source/use basis, not a request for individual consent or a declaration that all public content has unrestricted rights. Never invent a license or source contents.

## Canonical identity requirements and recovery

Provision a **new** platform-owned canonical identity using the existing identity/admin workflow and cleared imagery. Its exact active published constitution must include:

```json
{"publicOfficial":{"officialName":"The exact reviewed name","countryCode":"NG"}}
```

Its ordinary approved Masana presentation must already exist. Keep its user-app visibility off until dossier admission and quality evaluation have passed. Every previously published version for that character must carry the same public-official name/country marker; a former fictional identity cannot be reused. A marked official without a valid dossier cannot fall back to fictional-persona chat instructions.

Admission locks the canonical identity, checks ownership/version and forbids changing an existing dossier to another person. A replacement packet withdraws old evidence rather than overwriting it and creates an immutable hashed receipt in the same transaction. Exact retries of the latest approved packet return the original receipt; an older superseded packet cannot reactivate an earlier review. A suspended dossier needs an explicitly revised, reviewed packet rather than an accidental retry. Invalid data or a database failure rolls back the entire admission.

A source-account packet is part of the same atomic review. Switching the chosen platform/account suspends the old source without relabeling or deleting its historical imports. Only one source can be approved for an official at once. An account previously bound to another person cannot be reassigned by this tool; an institutional account changing officeholders needs a separate qualified handover process. A failed source admission rolls back both the biography and source changes. Credentials remain separate server secrets and the polling switch stays off.

## Retrieval and remaining qualification

Text questions and nonempty media captions supply at most 500 characters of search input through the authorized tenant/persona/version admission. The reader keeps current Grokipedia biography evidence and ranks the remaining bounded excerpts using sanitized terms against the public corpus. Excerpts center on matching terms (including matches beyond the beginning of a document), retain source URLs/dates, and use bounded UTF-8/JSON evidence budgets. A question about an older position can retrieve that record instead of only recent statements. Search input never updates the shared corpus or changes private conversation scope.

Public text and captionless voice notes use ephemeral multilingual query translation before retrieval, after the paid-turn hold. Verified source IDs and literal quotations are checked before output; uncertainty falls back safely. Calls have a server-controlled read-only public-evidence tool with fresh account/version checks. These controls do not establish the accuracy of every possible model answer; actual reviewed packets and model qualification remain required. Do not describe this tool or passing tests as verified impersonation quality or a production launch.

## Reviewed gold-case evaluation

Create 5–30 reviewed cases covering `fact`, `unknown`, `quotation`, `injection` and `language`. Each has `id`, `kind`, `question`, optional `mustInclude`/`mustNotInclude`; factual, quotation and language cases require expected answer fragments and a reviewed `sourceUrl`. Gold cases are reviewed assertions, not generated truths. Include changing office/party dates, disputed claims, exact quotations, English/Hausa/Yoruba/Igbo questions and unsupported private/promissory requests.

Preview validates the packet/cases without contacting a provider:

```sh
node --conditions=production services/gateway/dist/official_evaluation_cli.js /secure/path/packet.json /secure/path/cases.json
```

An explicit provider run uses the operator's existing server `MASANAWA_GEMINI_API_KEY` and `MASANAWA_GEMINI_MODEL` and incurs inference usage:

```sh
node --conditions=production services/gateway/dist/official_evaluation_cli.js /secure/path/packet.json /secure/path/cases.json --run
```

The report binds the normalized packet hash, model and case IDs. It logs no secret values or raw provider responses. The offline packet evaluator is a gold-case smoke test, not live-call or complete production retrieval acceptance. Keep failed/NOT_RUN cohorts hidden. Human source/rights review and an actual sourced pilot remain required; passing fixtures cannot activate anyone.

## Original-source operations

Head polling runs independently of backfill, so historical pagination cannot hide new posts. Two workers process at most eight source/inspection jobs per timer tick; the timer does not overlap an unfinished batch. Actual cadence depends on provider access and quotas. HTTP 429 backoff is durable per platform across instances; explicit access denial suspends a source and hides its originals at read time.

An independent bounded per-object lookup checks previously imported posts for edits, withdrawal/withholding and access loss. Missing timeline entries and partial lookup responses do not prove deletion. Only explicit per-ID absence/access evidence withdraws content; hashes and required receipts remain. X edit history binds one canonical original to the latest provider ID, old edits cannot overwrite newer ones, original publication timestamps remain stable, and Facebook photo/story links retain attribution. Inspection failures preserve original data and retry checkpoints.
