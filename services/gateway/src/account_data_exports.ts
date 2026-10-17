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
