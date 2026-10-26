-- Forward-only Request terminal state: the intended payer may refuse an
-- unexpired request without posting an MB movement. Historic rows stay intact.
ALTER TABLE gb_wallet.payment_requests
  DROP CONSTRAINT IF EXISTS payment_requests_state_check;
ALTER TABLE gb_wallet.payment_requests
  ADD CONSTRAINT gb_payment_requests_state_check
    CHECK (state IN ('open','paid','cancelled','declined'));
