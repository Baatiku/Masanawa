-- Expand only. Existing offer creators remain in the legacy seller_id column;
-- orders.seller_id ALWAYS means the actual asset owner, for both ad directions.
ALTER TABLE commerce.msnw_p2p_offers ADD COLUMN offer_side text NOT NULL DEFAULT 'sell'
 CHECK(offer_side IN ('sell','buy'));

-- Preserve every historic buyer-key identity and unique constraint. New records
-- additionally bind the original client request to the actual initiating actor.
-- A maker-buy order uses an internal random UUID in the legacy key slot, avoiding
-- collisions between different taker sellers trading against the same buyer.
-- No backfill, financial row rewrite or destructive contract step is needed.
ALTER TABLE commerce.msnw_p2p_orders ADD COLUMN request_actor_id text;
ALTER TABLE commerce.msnw_p2p_orders ADD COLUMN request_key text;
ALTER TABLE commerce.msnw_p2p_orders ADD CONSTRAINT msnw_p2p_order_actor_request_shape
 CHECK((request_actor_id IS NULL AND request_key IS NULL) OR
   (request_actor_id IS NOT NULL AND request_key IS NOT NULL
    AND request_actor_id IN (seller_id,buyer_id) AND length(request_key) BETWEEN 8 AND 128));
CREATE UNIQUE INDEX msnw_p2p_orders_actor_request_idx
 ON commerce.msnw_p2p_orders(tenant_id,request_actor_id,request_key)
 WHERE request_actor_id IS NOT NULL;
CREATE INDEX msnw_p2p_offers_direction_idx
 ON commerce.msnw_p2p_offers(tenant_id,offer_side,created_at DESC,offer_id DESC)
 WHERE state='active';
