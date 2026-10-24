-- Nonunique: preserve all historical evidence and any legacy duplicates.
-- Canonical order row locking serializes new actor/order/content originals.
CREATE INDEX IF NOT EXISTS msnw_p2p_evidence_original_idx
 ON commerce.msnw_p2p_evidence(tenant_id,order_id,submitted_by,sha256,created_at,evidence_id);
