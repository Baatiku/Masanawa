-- Order discussion is private supporting communication, never settlement authority.
CREATE TABLE IF NOT EXISTS commerce.msnw_p2p_order_messages (
  message_id uuid PRIMARY KEY,
  tenant_id text NOT NULL,
  order_id uuid NOT NULL,
  sender_id text NOT NULL,
  request_key text NOT NULL CHECK (request_key ~ '^[A-Za-z0-9_-]{8,128}$'),
  body text NOT NULL CHECK (length(btrim(body)) BETWEEN 1 AND 2000 AND octet_length(body) <= 8000),
  created_at timestamptz NOT NULL DEFAULT statement_timestamp(),
  UNIQUE (tenant_id,order_id,sender_id,request_key),
  FOREIGN KEY (tenant_id,order_id) REFERENCES commerce.msnw_p2p_orders (tenant_id,order_id)
);
CREATE INDEX IF NOT EXISTS msnw_p2p_order_messages_page_idx
  ON commerce.msnw_p2p_order_messages (tenant_id,order_id,created_at DESC,message_id DESC);
-- Deliberately no public access, attachment URLs, financial triggers or push payloads.
