-- Extend the canonical cash spending authority; never introduce a second wallet.
ALTER TABLE gb_wallet.ngn_spends DROP CONSTRAINT ngn_spends_purpose_check;
ALTER TABLE gb_wallet.ngn_spends ADD CONSTRAINT ngn_spends_purpose_check CHECK(purpose IN ('reply','connected_call','data','send','request_pay','forum_topic'));
