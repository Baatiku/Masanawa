import type { Pool } from "@masanawa/postgres";
import type { PlatformCustomerSessionAuthorizer } from "./customer_auth.js";
import { createWalletActivity } from "./msn_wallet/wallet_activity.js";

export class AccountExportError extends Error {
  constructor(readonly code: string, readonly statusCode: number) {
    super(code);
  }
}
type Context = { authorizationHeader: string | undefined };
const allowedDate = (value: string | undefined): string | undefined => {
  if (value === undefined || value === "") return undefined;
  if (!/^\d{4}-\d{2}-\d{2}$/u.test(value) ||
      Number.isNaN(Date.parse(value + "T00:00:00Z")))
    throw new AccountExportError("EXPORT_DATE_INVALID",400);
  return value;
};
const encode = (at: Date | string, id: string) =>
  Buffer.from(JSON.stringify([new Date(at).toISOString(), id])).toString("base64url");
function cursor(raw: string | undefined): [string,string] | null {
  if (!raw) return null;
  if (raw.length>512 || !/^[A-Za-z0-9_-]+$/u.test(raw))
    throw new AccountExportError("EXPORT_CURSOR_INVALID",400);
  try {
    const parsed: unknown = JSON.parse(Buffer.from(raw,"base64url").toString("utf8"));
    if (!Array.isArray(parsed)||parsed.length!==2||typeof parsed[0]!=="string"||
        typeof parsed[1]!=="string"||parsed[1].length>128||
        !Number.isFinite(Date.parse(parsed[0])))
      throw new Error("invalid");
    return [parsed[0], parsed[1]];
  } catch {throw new AccountExportError("EXPORT_CURSOR_INVALID",400);}
}
export function createAccountDataExports(
  pool: Pool, sessions: PlatformCustomerSessionAuthorizer,
) {
  const wallet = createWalletActivity(pool);
  return Object.freeze({
    async summary(input: Context) {
      const owner=await sessions.authorize({authorizationHeader:input.authorizationHeader});
      const rows=await pool.query<{
        display_name:string;email:string|null;phone:string|null;
        avatar_url:string|null;state:string;deletion_phase:string|null;
        control_state:string|null;recent_reset:boolean;
      }>(
        `SELECT p.display_name,p.email,p.phone,t.avatar_url,u.state,
                d.phase AS deletion_phase,c.state AS control_state,
                EXISTS(
                  SELECT 1 FROM security.platform_auth_events e
                  WHERE e.tenant_id=p.tenant_id AND e.user_id=p.user_id
                    AND e.action='password_reset'
                    AND e.at>clock_timestamp()-interval '24 hours'
                ) AS recent_reset
           FROM security.platform_user_profiles p
           JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id
           LEFT JOIN talks.public_profiles t
             ON t.tenant_id=p.tenant_id AND t.user_id=p.user_id
           LEFT JOIN identity.account_deletion_requests d
             ON d.tenant_id=p.tenant_id AND d.user_id=p.user_id
           LEFT JOIN security.platform_account_controls c
             ON c.tenant_id=p.tenant_id AND c.user_id=p.user_id
               AND (c.until_at IS NULL OR c.until_at>clock_timestamp())
          WHERE p.tenant_id=$1 AND p.user_id=$2`,
        [owner.tenantId,owner.userId],
      );
      const entry=rows.rows[0];
      if(!entry)throw new AccountExportError("ACCOUNT_NOT_FOUND",404);
      const pending=entry.deletion_phase!==null &&
        entry.deletion_phase!=="completed" && entry.deletion_phase!=="failed";
      const control=["restricted","suspended","recovery"].includes(entry.control_state??"")
        ? entry.control_state : null;
      const state=pending?"pending_deletion":
        entry.state==="disabled"?"suspended":
        entry.state==="archived"?"archived":
        control??(entry.recent_reset?"recovery":"active");
      return {
        state,
        deletionPhase:entry.deletion_phase,
        recoveryRequired:state==="recovery" ||
          entry.deletion_phase==="failed",
        recoveryMessage:state==="recovery"?
          "New financial actions are held for 24 hours after password recovery; you may still read history.":
          entry.deletion_phase==="failed"?
          "Deletion needs support review; your financial records are retained pending resolution.":null,
        profileCompletion:{
          displayName:entry.display_name.trim()!=="Masanawa member",
          profilePhoto:Boolean(entry.avatar_url),
          linkedEmail:Boolean(entry.email),
          phonePresent:Boolean(entry.phone),
          paymentIdentity:"only_when_using_financial_services",
        },
      };
    },
    async conversations(input: Context & {cursor?:string}) {
      const owner=await sessions.authorize({authorizationHeader:input.authorizationHeader});
      const start=cursor(input.cursor);
      const result=await pool.query<{
        request_id:string;character_id:string;kind:string;state:string;
        user_text:string;reply:string|null;created_at:Date|string;
      }>(
        `SELECT request_id,character_id,kind,state,user_text,reply,created_at
          FROM agents.mobile_turn_commands
         WHERE tenant_id=$1 AND user_id=$2
           AND ($3::timestamptz IS NULL OR (created_at,request_id)>($3::timestamptz,$4::text))
         ORDER BY created_at ASC, request_id ASC LIMIT 201`,
        [owner.tenantId,owner.userId,start?.[0]??null,start?.[1]??null],
      );
      const rows=result.rows.slice(0,200);
      const last=rows.at(-1);
      return {
        kind:"conversations" as const,
        // Transcript text only. Original media remains with its owning media service.
        mediaFilesIncluded:false,
        items:rows.map(row=>({
          requestId:row.request_id,characterId:row.character_id,
          kind:row.kind,state:row.state,userText:row.user_text,
          reply:row.reply,createdAt:new Date(row.created_at).toISOString(),
        })),
        nextCursor:result.rows.length>200&&last ? encode(last.created_at,last.request_id):null,
      };
    },
    async financialStatement(input: Context & {from?:string;to?:string}) {
      const owner=await sessions.authorize({authorizationHeader:input.authorizationHeader});
      const from=allowedDate(input.from),to=allowedDate(input.to);
      const report=await wallet.exportCsv(
        {tenantId:owner.tenantId,userId:owner.userId},
        {...(from?{from}:{}),...(to?{to}:{})},
      );
      return {
        kind:"financial_statement" as const,format:"csv" as const,
        filename:"masanawa-wallet-statement.csv",
        content:report.csv,snapshot:report.snapshot,count:report.count,
        notice:"Customer wallet activity; this is not a bank or audited financial statement.",
      };
    },
  });
}
export type AccountDataExports = ReturnType<typeof createAccountDataExports>;
