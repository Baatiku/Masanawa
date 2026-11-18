-- Ownership remains unchanged until the intended active member accepts.
-- Forward-only metadata; no historical Room/identity/financial data is removed.
CREATE TABLE rooms.ownership_transfers (
 tenant_id text NOT NULL, room_id text NOT NULL, transfer_id text NOT NULL,
 from_user_id text NOT NULL, target_user_id text NOT NULL, request_id text NOT NULL,
 state text NOT NULL DEFAULT 'pending'
   CHECK (state IN ('pending','accepted','declined','cancelled','expired')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
 expires_at timestamptz NOT NULL, decided_at timestamptz,
 decided_by_user_id text, decision_reason text,
 PRIMARY KEY (tenant_id,room_id,transfer_id),
 UNIQUE (tenant_id,room_id,from_user_id,request_id),
 FOREIGN KEY (tenant_id,room_id) REFERENCES rooms.rooms(tenant_id,room_id),
 FOREIGN KEY (tenant_id,from_user_id) REFERENCES identity.users(tenant_id,user_id),
 FOREIGN KEY (tenant_id,target_user_id) REFERENCES identity.users(tenant_id,user_id),
 FOREIGN KEY (tenant_id,decided_by_user_id) REFERENCES identity.users(tenant_id,user_id),
 CHECK (from_user_id <> target_user_id),
 CHECK (expires_at > created_at),
 CHECK ((state = 'pending') = (decided_at IS NULL)),
 CHECK ((state = 'pending') = (decision_reason IS NULL)),
 CHECK (state <> 'pending' OR decided_by_user_id IS NULL),
 CHECK (state NOT IN ('accepted','declined') OR (decided_by_user_id IS NOT NULL AND decided_by_user_id=target_user_id)),
 CHECK (state <> 'cancelled' OR decided_by_user_id IS NULL OR decided_by_user_id=from_user_id),
 CHECK (state <> 'expired' OR decided_by_user_id IS NULL)
);
CREATE UNIQUE INDEX ownership_transfer_one_pending_room
 ON rooms.ownership_transfers(tenant_id,room_id) WHERE state='pending';
CREATE INDEX ownership_transfer_participant_history
 ON rooms.ownership_transfers(tenant_id,room_id,created_at DESC,transfer_id DESC);
