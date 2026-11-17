import {readFileSync} from 'node:fs';
import {pathToFileURL} from 'node:url';

export function checkedDepositProof(proof,account,expected){
 if(!expected||!/^\d{20,40}$/.test(expected.sessionId)||!Number.isSafeInteger(expected.amountKobo)||expected.amountKobo<=0||!Number.isFinite(Date.parse(expected.sentAt)))throw Error('recovery.invalid_expectation');
 if(!Number.isFinite(Date.parse(proof.receivedAt))||Math.abs(Date.parse(proof.receivedAt)-Date.parse(expected.sentAt))>7200000||proof.eventId!==expected.sessionId||proof.amountKobo!==expected.amountKobo||proof.accountNumber!==account.account_number||
  ![account.provider_reference,account.merchant_reference].includes(proof.accountReference)||account.status!=='assigned'||account.bank_id!=='9PSB'||
  !account.account_number.startsWith(expected.accountPrefix)||!account.account_number.endsWith(expected.accountSuffix)||
  !['9PSB','9PSBBANK','9PAYMENTSERVICEBANK'].includes(proof.bankName.toUpperCase().replace(/[^A-Z0-9]/g,'')))throw Error('recovery.provider_account_or_amount_mismatch');
 return {eventId:proof.eventId,legacyEventId:proof.accountReference,merchantReference:account.merchant_reference,accountNumber:proof.accountNumber,amountKobo:proof.amountKobo,receivedAt:proof.receivedAt};
}
export async function reconcile(expected,dependencies){
 const account=await dependencies.account(expected.email);
 if(!account)throw Error('recovery.expected_one_owner_account');
 const proof=await dependencies.transaction(expected.sessionId);
 const payment=checkedDepositProof(proof,account,expected);
 const before=await dependencies.balance(account);
 const receipt=await dependencies.deposit(payment);
 const after=await dependencies.balance(account);
 if(!['credited','duplicate'].includes(receipt.state)||receipt.eventId!==proof.eventId)throw Error('recovery.receipt_not_confirmed');
 return {state:receipt.state,amountKobo:proof.amountKobo,balanceBeforeKobo:before.balanceKobo,balanceAfterKobo:after.balanceKobo,debtAfterKobo:after.debtKobo,bank:'9PSB',accountLastFour:proof.accountNumber.slice(-4),independentProviderProof:true};
}
async function main(){
 const expected=JSON.parse(readFileSync(0,'utf8'));
 const env=process.env,tenant=env.MASANAWA_PLATFORM_TENANT_ID,key=env.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||env.BILLSTACK_SECRET_KEY?.trim();
 if(!tenant||!env.MASANAWA_DATABASE_URL||!key)throw Error('recovery.private_settings_missing');
 if(!/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(expected.email)||!/^\d{2,4}$/.test(expected.accountPrefix)||!/^\d{2,4}$/.test(expected.accountSuffix))throw Error('recovery.invalid_expectation');
 const {Pool}=await import('pg');
 const {createNgnWalletRepository}=await import('@masanawa/postgres');
 const {createBillstackReservedAccountClient}=await import('../../../services/gateway/dist/gb_wallet/billstack_provider.js');
 const pool=new Pool({connectionString:env.MASANAWA_DATABASE_URL,max:2,connectionTimeoutMillis:10000});
 try{
  const wallet=createNgnWalletRepository(pool),provider=createBillstackReservedAccountClient({secretKey:key});
  const result=await reconcile(expected,{
   account:async email=>{const r=await pool.query(`SELECT b.* FROM gb_wallet.billstack_accounts b JOIN security.platform_user_profiles p ON p.tenant_id=b.tenant_id AND p.user_id=b.account_id WHERE b.tenant_id=$1 AND lower(p.email)=lower($2)`,[tenant,email]);return r.rows.length===1?r.rows[0]:null;},
   transaction:provider.transaction,
   balance:a=>wallet.read({tenantId:a.tenant_id,userId:a.account_id}),
   deposit:p=>wallet.deposit(p),
  });
  console.log(JSON.stringify(result));
 }finally{await pool.end();}
}
if(process.argv[1]&&import.meta.url===pathToFileURL(process.argv[1]).href){main().catch(e=>{const code=e?.code||e?.message;console.log(JSON.stringify({state:'not_credited',code:typeof code==='string'&&/^(?:recovery|ngn|billstack)\.[a-z_]+$/.test(code)?code:e?.constructor?.name==='BillstackProviderError'?e.code:'recovery.verification_failed'}));process.exitCode=1;});}
