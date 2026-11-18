import type {Pool} from '@masanawa/postgres';
import type {BillstackSettledTransfer} from '@masanawa/providers';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {WalletAdminError} from './wallet_admin.js';

type Account = {tenant_id:string;account_id:string;merchant_reference:string;provider_reference:string;account_number:string;bank_id:string;status:string};
type Deposit = {eventId:string;legacyEventId:string;merchantReference:string;accountNumber:string;amountKobo:number;receivedAt:string};
const validSession = (id:unknown):id is string => typeof id==='string'&&/^\d{20,40}$/.test(id);
const normalizedBank = (bank:string) => bank.toUpperCase().replace(/[^A-Z0-9]/g,'');
const bankNames = new Set(['9PSB','9PSBBANK','9PAYMENTSERVICEBANK']);
const safeCode = (error:unknown) => {
 const value=error instanceof Error?(error as Error&{code?:string}).code??error.message:'';
 return typeof value==='string'&&/^(?:billstack|ngn|recovery)\.[a-z_]+$/.test(value)?value:'recovery.verification_failed';
};

/** Only a settled provider lookup may create this canonical NGN funding payload. */
export function confirmedBillstackDeposit(proof:BillstackSettledTransfer,accounts:readonly Account[]):Deposit&{userId:string}{
 if(accounts.length!==1||!bankNames.has(normalizedBank(proof.bankName))||
    accounts[0]?.status!=='assigned'||accounts[0]?.bank_id!=='9PSB'||
    accounts[0]?.account_number!==proof.accountNumber||
    ![accounts[0]?.merchant_reference,accounts[0]?.provider_reference].includes(proof.accountReference))
   throw new WalletAdminError(409,'recovery.provider_account_or_amount_mismatch');
 const account=accounts[0]!;
 return {eventId:proof.eventId,legacyEventId:proof.accountReference,merchantReference:account.merchant_reference,
  accountNumber:proof.accountNumber,amountKobo:proof.amountKobo,receivedAt:proof.receivedAt,userId:account.account_id};
}

export function createBillstackPaymentAdmin(input:{
 pool:Pick<Pool,'query'>;
 authorize:OpsAdminDashboardService['authorize'];
 transaction?:(id:string)=>Promise<BillstackSettledTransfer>;
 deposit:(payment:Deposit)=>Promise<{state:'credited'|'duplicate';eventId:string}>;
}){
 return {
  async list(header:string|undefined,limit:number,offset:number){
   const actor=await input.authorize({authorizationHeader:header,capability:'wallet.read'});
   const size=Math.min(100,Math.max(1,Math.trunc(limit))),skip=Math.min(10000,Math.max(0,Math.trunc(offset)));
   const rows=await input.pool.query(`WITH latest_checks AS (
      SELECT DISTINCT ON (session_id) session_id,user_id,amount_kobo,state,failure_code,received_at,checked_at
      FROM gb_wallet.admin_billstack_reconciliation_checks WHERE tenant_id=$1
      ORDER BY session_id,check_id DESC
     ), payments AS (
      SELECT d.provider_event_id AS "sessionId",d.account_id AS "userId",d.amount_kobo::text AS "amountKobo",
       'credited'::text AS state,NULL::text AS "failureCode",d.received_at AS "receivedAt",
       e.created_at AS "recordedAt",'wallet_deposit'::text AS source
      FROM gb_wallet.ngn_deposit_events d JOIN gb_wallet.ngn_entries e ON e.tenant_id=d.tenant_id AND e.operation_id=d.operation_id
      WHERE d.tenant_id=$1
      UNION ALL
      SELECT d.event_id,d.account_id,d.amount_kobo::text,'legacy_credited',NULL::text,d.received_at,d.received_at,'legacy_deposit'
      FROM gb_wallet.billstack_deposits d WHERE d.tenant_id=$1
        AND NOT EXISTS (SELECT 1 FROM gb_wallet.ngn_deposit_events n WHERE n.provider_event_id=d.event_id)
      UNION ALL
      SELECT c.session_id,c.user_id,c.amount_kobo::text,c.state,c.failure_code,c.received_at,c.checked_at,'provider_check'
      FROM latest_checks c
      WHERE NOT EXISTS (SELECT 1 FROM gb_wallet.ngn_deposit_events d WHERE d.tenant_id=$1 AND d.provider_event_id=c.session_id)
        AND NOT EXISTS (SELECT 1 FROM gb_wallet.billstack_deposits d WHERE d.tenant_id=$1 AND d.event_id=c.session_id)
     )
     SELECT p.*,profile.display_name AS "displayName"
     FROM payments p LEFT JOIN security.platform_user_profiles profile ON profile.tenant_id=$1 AND profile.user_id=p."userId"
     ORDER BY p."recordedAt" DESC,p."sessionId" DESC LIMIT $2 OFFSET $3`,[actor.tenantId,size,skip]);
   return {providerHistoryCoverage:'recorded_and_checked_only',items:rows.rows};
  },
  async reconcile(header:string|undefined,sessionId:string){
   const actor=await input.authorize({authorizationHeader:header,capability:'wallet.adjust.write'});
   if(!validSession(sessionId))throw new WalletAdminError(422,'recovery.invalid_session_id');
   if(!input.transaction)throw new WalletAdminError(503,'recovery.provider_not_configured');
   let proof:BillstackSettledTransfer|undefined,userId:string|undefined;
   try{
    proof=await input.transaction(sessionId);
    if(proof.eventId!==sessionId)throw new WalletAdminError(409,'recovery.transaction_id_mismatch');
    const matched=await input.pool.query(`SELECT tenant_id,account_id,merchant_reference,provider_reference,account_number,bank_id,status
      FROM gb_wallet.billstack_accounts WHERE tenant_id=$1 AND account_number=$2 AND status='assigned'`,[actor.tenantId,proof.accountNumber]);
    const payment=confirmedBillstackDeposit(proof,matched.rows as Account[]);
    userId=payment.userId;
    const receipt=await input.deposit(payment);
    if(receipt.eventId!==sessionId||!['credited','duplicate'].includes(receipt.state))throw new WalletAdminError(409,'recovery.receipt_not_confirmed');
    let auditRecorded=true,checkedAt:unknown;
    try{
     const record=await input.pool.query(`INSERT INTO gb_wallet.admin_billstack_reconciliation_checks
       (tenant_id,session_id,actor_id,user_id,amount_kobo,received_at,state)
       VALUES($1,$2,$3,$4,$5,$6,$7) RETURNING check_id::text AS "checkId",checked_at AS "checkedAt"`,
       [actor.tenantId,sessionId,actor.actorId,userId,proof.amountKobo,proof.receivedAt,receipt.state]);
     checkedAt=record.rows[0]?.checkedAt;
    }catch{auditRecorded=false;/* Wallet deposit ledger remains the authoritative audited record. */}
    return {state:receipt.state,sessionId,userId,amountKobo:String(proof.amountKobo),checkedAt,independentProviderProof:true,auditRecorded};
   }catch(error){
    const code=safeCode(error);
    try{await input.pool.query(`INSERT INTO gb_wallet.admin_billstack_reconciliation_checks
      (tenant_id,session_id,actor_id,user_id,amount_kobo,received_at,state,failure_code)
      VALUES($1,$2,$3,$4,$5,$6,'needs_review',$7)`,
      [actor.tenantId,sessionId,actor.actorId,userId??null,proof?.amountKobo??null,proof?.receivedAt??null,code]);}
    catch{/* Original verification failure remains authoritative; no credit was invented. */}
    if(error instanceof WalletAdminError)throw error;
    throw new WalletAdminError(code==='billstack.transaction_lookup_unavailable'?503:409,code);
   }
  },
 };
}
