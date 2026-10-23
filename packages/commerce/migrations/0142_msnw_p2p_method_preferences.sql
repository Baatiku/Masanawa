-- Private owner preferences never replace immutable verified bank instructions.
ALTER TABLE commerce.msnw_p2p_payment_methods
 ADD COLUMN private_label text,
 ADD COLUMN preferred boolean NOT NULL DEFAULT false,
 ADD COLUMN archived_at timestamptz;
ALTER TABLE commerce.msnw_p2p_payment_methods
 ADD CONSTRAINT msnw_p2p_method_private_label CHECK (private_label IS NULL OR
   (length(btrim(private_label)) BETWEEN 1 AND 40 AND private_label !~ '[[:cntrl:]]'
    AND private_label !~ U&'[\202A-\202E\2066-\2069]')),
 ADD CONSTRAINT msnw_p2p_method_archive_disabled CHECK (archived_at IS NULL OR disabled_at IS NOT NULL);
CREATE UNIQUE INDEX msnw_p2p_one_active_preferred_method
 ON commerce.msnw_p2p_payment_methods(tenant_id,owner_id)
 WHERE preferred AND disabled_at IS NULL AND archived_at IS NULL;
CREATE INDEX msnw_p2p_offer_method_reference
 ON commerce.msnw_p2p_offers(tenant_id,payment_method_id);
CREATE INDEX msnw_p2p_order_method_reference
 ON commerce.msnw_p2p_orders(tenant_id,payment_method_id);
