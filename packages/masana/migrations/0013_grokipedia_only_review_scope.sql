-- Owner selects Grokipedia-only biography packets; preserve every historical receipt.
ALTER TABLE masana.public_official_review_receipts
 DROP CONSTRAINT public_official_review_receipts_evidence_count_check;
ALTER TABLE masana.public_official_review_receipts
 ADD CONSTRAINT public_official_review_receipts_evidence_count_check CHECK(evidence_count BETWEEN 1 AND 100);
