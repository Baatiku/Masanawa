# Civic chat reach (initial implementation)
- Distinct active consenting accounts with completed server-recorded chat turns initiated after opt-in, within a rolling 30-day window. No text, media or rating content is read.
- Independent, reversible account-wide consent; no historic backfill. Disablement removes consent. Published counts suppressed under 50 and rounded down to increments of 25.
- No payments, political ratings linkage, political-interest profiling, personalized targeting, rankings or client event ingestion. Call-history diagnostic records are not evidence of a completed meaningful conversation.
- Before general availability: privacy/compliance review, integration tests against PostgreSQL, production query-plan/latency review and verified consent UI. Full popularity index and independently funded nonpartisan learning rewards remain separate work.
