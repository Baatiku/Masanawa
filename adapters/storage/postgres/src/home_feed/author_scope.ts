/** Alias o always denotes canonical identity.character_ownership. */
export const statusAuthorOwnership=`(o.kind='platform' OR (o.kind='creator-agent' AND EXISTS(
 SELECT 1 FROM creator.agents ca JOIN identity.users cu ON cu.tenant_id=ca.tenant_id AND cu.user_id=ca.owner_user_id AND cu.state='active'
 WHERE ca.tenant_id=o.tenant_id AND ca.character_id=o.character_id AND ca.owner_user_id=o.owner_user_id AND ca.state='published'))) `;
