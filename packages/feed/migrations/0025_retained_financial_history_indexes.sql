-- Read-only historical projections must not scan public viewer identities.
CREATE INDEX promotion_charge_campaign_day ON feed.promotion_view_charges
 (tenant_id,campaign_id,((created_at AT TIME ZONE 'UTC')::date),created_at,view_id);
CREATE INDEX promotion_allocation_owner_day ON feed.promotion_view_charges
 (tenant_id,sharer_id,((created_at AT TIME ZONE 'UTC')::date),campaign_id)
 WHERE sharer_id IS NOT NULL;
CREATE INDEX promotion_lifecycle_receipt_day ON feed.promotion_audit
 (tenant_id,campaign_id,((occurred_at AT TIME ZONE 'UTC')::date),occurred_at,id)
 WHERE action IN ('budget_reserved','rejected','cancelled','moderation_refund','owner_delete_refund','campaign_expired');
