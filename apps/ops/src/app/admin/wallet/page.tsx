"use client";

import {useCallback,useEffect,useState,type FormEvent} from 'react';

type Payment = {sessionId:string;userId:string|null;displayName:string|null;amountKobo:string|null;
 state:string;failureCode:string|null;receivedAt:string|null;recordedAt:string;source:string};
type WalletAccount = {userId:string;displayName:string;balanceKobo:string;heldKobo:string;debtKobo:string;version:string;frozen:boolean};
type RecoveryOutcome = {sessionId:string;state:string;detail?:string};

function ngn(kobo:string|null|undefined):string {
 if(kobo===null||kobo===undefined)return '—';
 const cents=Number(kobo);
 return Number.isSafeInteger(cents)?new Intl.NumberFormat('en-NG',{style:'currency',currency:'NGN'}).format(cents/100):'—';
}
function time(value:string|null|undefined):string {
 return value&&!Number.isNaN(Date.parse(value))?new Date(value).toLocaleString('en-NG',{timeZone:'Africa/Lagos'}):'—';
}
function amountKobo(text:string):number {
 const match=/^(?:0|[1-9]\d*)(?:\.\d{1,2})?$/.exec(text.trim());
 if(!match)throw Error('Enter a positive amount such as 100.00, without ₦ or commas.');
 const [whole,decimals='']=text.trim().split('.');
 const amount=BigInt(whole!)*100n+BigInt(decimals.padEnd(2,'0')||'0');
 if(amount<1n||amount>BigInt(Number.MAX_SAFE_INTEGER))throw Error('The amount is outside the permitted range.');
 return Number(amount);
}
async function api<T>(url:string,body?:unknown):Promise<T>{
 const response=await fetch(url,{method:body===undefined?'GET':'POST',
  ...(body===undefined?{}:{headers:{'content-type':'application/json'},body:JSON.stringify(body)}),cache:'no-store'});
 const value=await response.json().catch(()=>({error:'Service response unavailable.'}));
 if(!response.ok)throw Error(typeof value.error==='string'?value.error:'The operation could not be completed.');
 return value as T;
}

export default function WalletPaymentsPage(){
 const [payments,setPayments]=useState<Payment[]>([]),[offset,setOffset]=useState(0),[loading,setLoading]=useState(true),[loadError,setLoadError]=useState('');
 const [ids,setIds]=useState(''),[recovering,setRecovering]=useState(false),[outcomes,setOutcomes]=useState<RecoveryOutcome[]>([]);
 const [accountSearch,setAccountSearch]=useState(''),[account,setAccount]=useState<WalletAccount|null>(null);
 const [reason,setReason]=useState(''),[fundingReference,setFundingReference]=useState(''),[creditNaira,setCreditNaira]=useState('');
 const [adjusting,setAdjusting]=useState(false),[adjustError,setAdjustError]=useState(''),[adjustSuccess,setAdjustSuccess]=useState('');
 const [confirmed,setConfirmed]=useState(false);
 const [pendingAdjustment,setPendingAdjustment]=useState<{operationId:string;fingerprint:string}|null>(null);
 const load=useCallback(async()=>{
  setLoading(true);setLoadError('');
  try{const result=await api<{items:Payment[]}>(`/api/ops/v1/admin/payments?limit=40&offset=${offset}`);setPayments(result.items);}
  catch(error){setPayments([]);setLoadError(error instanceof Error?error.message:'Could not load payments.');}
  finally{setLoading(false);}
 },[offset]);
 useEffect(()=>{void load();},[load]);

 async function reconcile(event:FormEvent){
  event.preventDefault();setOutcomes([]);
  const batch=[...new Set(ids.split(/[\s,;]+/).map(s=>s.trim()).filter(Boolean))];
  if(!batch.length||batch.length>10||batch.some(id=>!/^\d{20,40}$/.test(id))){
   setOutcomes([{sessionId:'Input',state:'invalid',detail:'Paste 1–10 Billstack session IDs, one per line (20–40 digits each).'}]);return;
  }
  setRecovering(true);
  for(const sessionId of batch){
   try{const receipt=await api<{state:string}>(`/api/ops/v1/admin/payments/reconcile`,{sessionId});
    setOutcomes(list=>[...list,{sessionId,state:receipt.state}]);}
   catch(error){setOutcomes(list=>[...list,{sessionId,state:'needs_review',detail:error instanceof Error?error.message:'Provider verification failed.'}]);}
  }
  setRecovering(false);void load();
 }
 async function lookupAccount(event:FormEvent){
  event.preventDefault();setAdjustError('');setAdjustSuccess('');setAccount(null);setPendingAdjustment(null);setConfirmed(false);
  try{const result=await api<WalletAccount>(`/api/ops/v1/admin/wallet/account?userId=${encodeURIComponent(accountSearch.trim())}`);setAccount(result);}
  catch(error){setAdjustError(error instanceof Error?error.message:'Account could not be verified.');}
 }
 async function adjust(event:FormEvent){
  event.preventDefault();setAdjustError('');setAdjustSuccess('');
  if(!account||!confirmed){setAdjustError('Review the account and acknowledge the exceptional adjustment.');return;}
  if(/^\d{20,40}$/.test(fundingReference.trim())){setAdjustError('Billstack session IDs must use Verify & Credit above. This form is for exceptional non-Billstack adjustments.');return;}
  let credit:number;
  try{credit=amountKobo(creditNaira);}catch(error){setAdjustError(error instanceof Error?error.message:'Invalid amount.');return;}
  const request={userId:account.userId,mode:'credit' as const,amountKobo:credit,
   expectedVersion:Number(account.version),reason:reason.trim(),fundingReference:fundingReference.trim()};
  const fingerprint=JSON.stringify(request);
  if(pendingAdjustment&&pendingAdjustment.fingerprint!==fingerprint){
   setAdjustError('The earlier adjustment outcome is uncertain. Retry the unchanged request or check its receipt before starting another.');return;
  }
  const operationId=pendingAdjustment?.operationId??`admin_${crypto.randomUUID()}`;
  if(!pendingAdjustment)setPendingAdjustment({operationId,fingerprint});
  setAdjusting(true);
  try{
   const result=await api<{afterKobo:string}>(`/api/ops/v1/admin/wallet/adjust`,{...request,operationId});
   setAdjustSuccess(`Audited non-provider adjustment recorded. New wallet balance: ${ngn(result.afterKobo)}.`);
   setAccount({...account,balanceKobo:result.afterKobo,version:String(Number(account.version)+1)});
   setPendingAdjustment(null);setConfirmed(false);setReason('');setCreditNaira('');setFundingReference('');void load();
  }catch(error){setAdjustError(`${error instanceof Error?error.message:'Adjustment not confirmed.'} Keep these details unchanged if retrying; the operation ID is preserved.`);}
  finally{setAdjusting(false);}
 }

 return <>
  <div className="admin-page-heading"><div><span className="admin-overline">FINANCIAL CONTROL</span><h1>Wallet & payments</h1>
   <p>Verified Billstack settlements, exception reviews and immutable wallet receipts across Masanawa.</p></div>
   <button className="admin-outline" type="button" onClick={()=>void load()} disabled={loading}>↻ Refresh</button></div>
  <div className="admin-warning">This page lists payments Masanawa has recorded or an administrator has checked against Billstack. A bank transfer never reported by Billstack is not discoverable from the wallet ledger alone. Verification never creates a credit without provider settlement evidence.</div>

  <section className="admin-surface payment-recovery-panel">
   <div className="surface-heading"><div><h2>Recover missing bank-transfer credits</h2><p>Paste transaction IDs from the Billstack merchant statement. No customer email, amount, account digits or timestamp required.</p></div><span className="admin-state good">Live provider proof</span></div>
   <form onSubmit={event=>void reconcile(event)} className="payment-admin-form">
    <label className="admin-field">Billstack session IDs (one per line)
     <textarea value={ids} onChange={event=>setIds(event.target.value)} placeholder="Paste one or more session IDs" rows={3} disabled={recovering} required/></label>
    <button type="submit" className="admin-primary" disabled={recovering}>{recovering?'Checking Billstack…':'Verify & Credit (up to 10)'}</button>
    {outcomes.length>0&&<div className="payment-recovery-results" role="status">{outcomes.map((item,index)=><p key={`${item.sessionId}-${index}`}><code>{item.sessionId}</code>: <strong>{item.state}</strong>{item.detail?` — ${item.detail}`:''}</p>)}</div>}
   </form>
  </section>

  <section className="admin-surface admin-records payment-records">
   <div className="surface-heading records-controls"><div><h2>Known payment history</h2><p>Recorded transfers and the latest administrator check for each session</p></div><span className="admin-state">Server ledger</span></div>
   {loadError&&<div className="admin-warning" role="alert">{loadError}</div>}
   <div className="admin-table-scroll"><table className="admin-table"><thead><tr><th>Session / receipt</th><th>Customer</th><th>Amount</th><th>Status</th><th>Received / checked</th></tr></thead><tbody>
    {payments.map(item=><tr key={item.sessionId}><td className="mono-text" title={item.sessionId}>{item.sessionId}</td>
     <td>{item.displayName||item.userId||'Not matched'}</td><td>{ngn(item.amountKobo)}</td>
     <td><span className={`admin-pill ${['credited','legacy_credited','duplicate'].includes(item.state)?'good':''}`}>{item.state.replaceAll('_',' ')}</span>{item.failureCode&&<small className="payment-failure-code">{item.failureCode}</small>}</td>
     <td>{time(item.receivedAt||item.recordedAt)}</td></tr>)}
   </tbody></table></div>
   {loading&&<div className="admin-empty">Loading payment records…</div>}
   {!loading&&!loadError&&!payments.length&&<div className="admin-empty">No payments have been recorded or checked yet.</div>}
   <div className="admin-pagination"><button type="button" disabled={loading||offset===0} onClick={()=>setOffset(value=>Math.max(0,value-40))}>← Previous</button><span>Page {1+offset/40}</span><button type="button" disabled={loading||payments.length<40} onClick={()=>setOffset(value=>value+40)}>Next →</button></div>
  </section>

  <details className="admin-surface payment-adjustment-panel"><summary>Exceptional owner-funded adjustment · audited manual credit</summary>
   <div className="payment-admin-form"><div className="admin-warning">Only for a separately documented, non-Billstack exception. A paid 9PSB receipt must go through <strong>Verify & Credit</strong> above to prevent a delayed webhook from crediting it twice. This creates an administrator adjustment, not a bank deposit.</div>
    <form onSubmit={event=>void lookupAccount(event)} className="payment-admin-inline"><label className="admin-field">User ID or account email<input value={accountSearch} onChange={event=>setAccountSearch(event.target.value)} required placeholder="Find a registered account"/></label><button className="admin-outline" type="submit">Find account</button></form>
    {account&&<><p className="payment-account-readback"><strong>{account.displayName}</strong> · {account.userId} · Available {ngn(account.balanceKobo)} · Held {ngn(account.heldKobo)} · {account.frozen?'Frozen':'Active'}</p>
     <form onSubmit={event=>void adjust(event)} className="payment-admin-fields">
      <label className="admin-field">Credit amount (NGN)<input value={creditNaira} onChange={event=>setCreditNaira(event.target.value)} inputMode="decimal" required placeholder="100.00"/></label>
      <label className="admin-field">Documented funding reference<input value={fundingReference} onChange={event=>setFundingReference(event.target.value)} required minLength={3} placeholder="Non-Billstack evidence reference"/></label>
      <label className="admin-field">Reason and evidence notes<textarea value={reason} onChange={event=>setReason(event.target.value)} minLength={10} required rows={2} placeholder="Why is this exceptional adjustment justified?"/></label>
      <label className="payment-confirm"><input type="checkbox" checked={confirmed} onChange={event=>setConfirmed(event.target.checked)}/> I confirm this is not an uncredited Billstack transfer and accept the permanent audit trail.</label>
      <button type="submit" className="admin-primary" disabled={adjusting||!confirmed}>{adjusting?'Recording…':'Record audited credit'}</button>
     </form></>}
    {adjustError&&<div className="admin-error" role="alert">{adjustError}</div>}
    {adjustSuccess&&<div className="admin-warning" role="status">{adjustSuccess}</div>}
   </div>
  </details>
 </>;
}
