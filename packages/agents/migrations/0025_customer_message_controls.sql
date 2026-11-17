CREATE TABLE agents.customer_message_controls(
 tenant_id text NOT NULL,user_id text NOT NULL,character_id text NOT NULL,request_id text NOT NULL,
 direction text NOT NULL CHECK(direction IN('user','assistant')),hidden boolean NOT NULL DEFAULT false,
 reaction text CHECK(reaction IN('👍','❤️','😂','😮','😢','🙏')),revision bigint NOT NULL DEFAULT 1,
 updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 PRIMARY KEY(tenant_id,user_id,character_id,request_id,direction),
 FOREIGN KEY(tenant_id,request_id) REFERENCES agents.mobile_turn_commands(tenant_id,request_id)
);
CREATE INDEX customer_message_control_history_idx ON agents.customer_message_controls(tenant_id,user_id,character_id);
