-- Quote-time Flutterwave customer evidence for the account owner's review.
-- These fields are immutable economic/recipient terms; fulfillment still
-- revalidates with the provider before dispatch.
ALTER TABLE commerce.billing_quotes
  ADD COLUMN verified_customer_name text CHECK (verified_customer_name IS NULL OR length(btrim(verified_customer_name)) BETWEEN 1 AND 300),
  ADD COLUMN verified_minimum_kobo bigint CHECK (verified_minimum_kobo IS NULL OR verified_minimum_kobo >= 0),
  ADD COLUMN verified_maximum_kobo bigint CHECK (verified_maximum_kobo IS NULL OR verified_maximum_kobo > 0);
ALTER TABLE commerce.billing_quotes ADD CONSTRAINT billing_verified_range
  CHECK (verified_minimum_kobo IS NULL OR verified_maximum_kobo IS NULL OR verified_minimum_kobo <= verified_maximum_kobo);

CREATE OR REPLACE FUNCTION commerce.reject_billing_quote_term_update()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  IF NEW.tenant_id IS DISTINCT FROM OLD.tenant_id OR NEW.user_id IS DISTINCT FROM OLD.user_id
     OR NEW.quote_id IS DISTINCT FROM OLD.quote_id OR NEW.revision IS DISTINCT FROM OLD.revision
     OR NEW.category_code IS DISTINCT FROM OLD.category_code OR NEW.biller_code IS DISTINCT FROM OLD.biller_code
     OR NEW.item_code IS DISTINCT FROM OLD.item_code OR NEW.item_name IS DISTINCT FROM OLD.item_name
     OR NEW.customer_id IS DISTINCT FROM OLD.customer_id OR NEW.service_amount_kobo IS DISTINCT FROM OLD.service_amount_kobo
     OR NEW.fee_amount_kobo IS DISTINCT FROM OLD.fee_amount_kobo OR NEW.total_amount_kobo IS DISTINCT FROM OLD.total_amount_kobo
     OR NEW.currency IS DISTINCT FROM OLD.currency OR NEW.expires_at IS DISTINCT FROM OLD.expires_at
     OR NEW.verified_customer_name IS DISTINCT FROM OLD.verified_customer_name
     OR NEW.verified_minimum_kobo IS DISTINCT FROM OLD.verified_minimum_kobo
     OR NEW.verified_maximum_kobo IS DISTINCT FROM OLD.verified_maximum_kobo
     OR NEW.created_at IS DISTINCT FROM OLD.created_at THEN
    RAISE EXCEPTION 'Billing quote economic terms are immutable' USING ERRCODE = '23514';
  END IF;
  RETURN NEW;
END;
$$;
