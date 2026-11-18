/** This is the authoritative tool-access gate, not a model instruction. */
export const WHATSAPP_PERMISSIONS = [
  'greet', 'faq', 'customer_support', 'registration_guide',
  'account_link', 'funding_details', 'wallet_balance', 'data_catalog',
  'data_purchase', 'transaction_status', 'receipts', 'advanced_actions',
] as const;
export type WhatsAppPermission = typeof WHATSAPP_PERMISSIONS[number];
export type WhatsAppRoleLevel = 1 | 2 | 3 | 4 | 5;

const minimumRole: Record<WhatsAppPermission, WhatsAppRoleLevel> = {
  greet: 1, faq: 1,
  customer_support: 2, registration_guide: 2,
  account_link: 3, funding_details: 3, wallet_balance: 3,
  data_catalog: 4, data_purchase: 4, transaction_status: 4, receipts: 4,
  advanced_actions: 5,
};

/** Levels populate defaults; an operator can REMOVE any individual permission. */
export function defaultWhatsAppPermissions(level: WhatsAppRoleLevel): WhatsAppPermission[] {
  return WHATSAPP_PERMISSIONS.filter(p => minimumRole[p] <= level && p !== 'advanced_actions');
}

export function validateWhatsAppPermissions(level: number, permissions: unknown): permissions is WhatsAppPermission[] {
  return Number.isInteger(level) && level >= 1 && level <= 5 && Array.isArray(permissions) &&
    permissions.length <= WHATSAPP_PERMISSIONS.length &&
    new Set(permissions).size === permissions.length &&
    permissions.every(p => typeof p === 'string' && p in minimumRole && minimumRole[p as WhatsAppPermission] <= level);
}

const privateActions = new Set<WhatsAppPermission>(['funding_details','wallet_balance','data_purchase','transaction_status','receipts','advanced_actions']);
const moneyActions = new Set<WhatsAppPermission>(['data_purchase','advanced_actions']);

export type WhatsAppActionContext = {
  enabled: boolean;
  connected: boolean;
  humanTakeover: boolean;
  level: number;
  permissions: unknown;
  accountLinked: boolean;
  accountSessionVerified: boolean;
  purchaseConfirmed: boolean;
  originalIdempotencyKey?: string;
};

export function evaluateWhatsAppAction(action: WhatsAppPermission, ctx: WhatsAppActionContext): {allowed:boolean;reason:string} {
  if (!WHATSAPP_PERMISSIONS.includes(action)) return {allowed:false,reason:'unknown_action'};
  if (!ctx.enabled || !ctx.connected) return {allowed:false,reason:'channel_unavailable'};
  if (ctx.humanTakeover) return {allowed:false,reason:'human_takeover'};
  if (!validateWhatsAppPermissions(ctx.level,ctx.permissions) || !ctx.permissions.includes(action))
    return {allowed:false,reason:'permission_denied'};
  if (privateActions.has(action) && (!ctx.accountLinked || !ctx.accountSessionVerified))
    return {allowed:false,reason:'authenticated_account_link_required'};
  if (moneyActions.has(action) && (!ctx.purchaseConfirmed || !/^[A-Za-z0-9_-]{16,100}$/.test(ctx.originalIdempotencyKey??'')))
    return {allowed:false,reason:'transaction_confirmation_required'};
  return {allowed:true,reason:'allowed'};
}
