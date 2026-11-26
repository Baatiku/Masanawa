import {createHash,randomUUID} from 'node:crypto';
import type {Pool,PoolClient} from 'pg';
import {withTransaction} from '../transaction.js';
import {createNgnSpending} from './ngn_spending.js';

type Actor={tenantId:string;userId:string};
type Funding=Actor&{budgetId:string;providerEventId:string;fundedKobo:number;rewardKobo:number};
type Budget={budget_id:string;funder_id:string;escrow_id:string;provider_event_id:string;funded_kobo:string;reward_kobo:string;spent_kobo:string;returned_kobo:string;state:'paused'|'active'|'closed';funding_operation_id:string};
const lessonId='public-information-literacy-v1';
const lesson={
 id:lessonId,title:'Checking public information',
 text:'Check the original source, publication date and supporting evidence before sharing a public claim. For government services, use the relevant agency’s official channels and verify contact details independently. Do not share private identity or financial credentials in public discussions.',
 questions:[
 {prompt:'Before sharing a claim about a public service, what should you check?',options:['The original source, date and evidence','Only the number of likes','Only the headline'],correct:0},
 {prompt:'Where should you verify the contact details for a government service?',options:['An unsolicited forwarded message','The relevant agency’s official channels','Any anonymous comment'],correct:1},
 {prompt:'What should you avoid posting in a public discussion?',options:['The title of a public document','A link to a public agency page','Private identity or financial credentials'],correct:2}
 ]
};
export function civicLearningLesson(){return {id:lesson.id,title:lesson.title,text:lesson.text,questions:lesson.questions.map(({prompt,options})=>({prompt,options:[...options]}))};}
export function gradeCivicLearning(answers:unknown){return Array.isArray(answers)&&answers.length===lesson.questions.length&&lesson.questions.every((q,i)=>Number.isInteger(answers[i])&&answers[i]===q.correct);}
const key=(...v:string[])=>createHash('sha256').update(JSON.stringify(v)).digest('hex');
const operation=(kind:string,...v:string[])=>'civic-reward-'+kind+'-'+key(...v);
const validId=(s:string)=>typeof s==='string'&&/^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$/.test(s);
function check(a:Actor){if(!validId(a.tenantId)||!validId(a.userId)||a.userId.startsWith('civic-reward-escrow-'))throw Error('civic_reward.invalid_actor');}
const amount=(n:number)=>Number.isSafeInteger(n)&&n>0;
async function lockActive(c:PoolClient,a:Actor,aged=false){
 const u=await c.query(`SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active'
 AND (NOT $3::boolean OR created_at<=clock_timestamp()-interval '7 days') FOR UPDATE`,[a.tenantId,a.userId,aged]);
 if(!u.rows.length)throw Error('civic_reward.account_ineligible');
}
async function lockWallets(c:PoolClient,t:string,...ids:string[]){
 for(const id of [...new Set(ids)].sort()){
  await c.query('INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id) VALUES($1,$2) ON CONFLICT DO NOTHING',[t,id]);
  await c.query('SELECT account_id FROM gb_wallet.ngn_accounts WHERE tenant_id=$1 AND account_id=$2 FOR UPDATE',[t,id]);
 }
}
async function depositProof(c:PoolClient,t:string,funder:string,event:string){
 const d=await c.query<{amount_kobo:string}>(`SELECT d.amount_kobo::text FROM gb_wallet.ngn_deposit_events d
 JOIN gb_wallet.ngn_entries e ON e.tenant_id=d.tenant_id AND e.operation_id=d.operation_id
 WHERE d.tenant_id=$1 AND d.account_id=$2 AND d.provider_event_id=$3
 AND e.account_id=d.account_id AND e.kind='deposit' AND e.delta_kobo=d.amount_kobo
 AND NOT EXISTS(SELECT 1 FROM gb_wallet.ngn_entries r WHERE r.tenant_id=e.tenant_id AND r.reverses_operation_id=e.operation_id)
 FOR SHARE OF d`,[t,funder,event]);
 if(!d.rows[0])throw Error('civic_reward.unverified_funding');
 return Number(d.rows[0].amount_kobo);
}
async function budget(c:PoolClient,t:string,id:string){
 const b=(await c.query<Budget>('SELECT * FROM gb_wallet.civic_learning_budgets WHERE tenant_id=$1 AND budget_id=$2 FOR UPDATE',[t,id])).rows[0];
 if(!b)throw Error('civic_reward.budget_missing');return b;
}
async function audit(c:PoolClient,a:Actor,id:string,action:string){
 await c.query('INSERT INTO gb_wallet.civic_learning_budget_audit(tenant_id,budget_id,actor_id,action) VALUES($1,$2,$3,$4)',[a.tenantId,id,a.userId,action]);
}
/** Trusted INTERNAL port only. Admin capability, fresh auth, verified account identity,
 * anti-Sybil review and rate limiting MUST be enforced by the future HTTP composition.
 * No routes or runtime activation are registered by this batch. */
export function createCivicLearningRewards(pool:Pool){
 const transfer=async(c:PoolClient,t:string,from:string,to:string,kobo:number,op:string)=>{
  const w=createNgnSpending(pool,c),a={tenantId:t,userId:from,operationId:op};
  await w.reserve({...a,purpose:'send',recipientId:to,amountKobo:kobo,idempotencyKey:op});
  await w.capture(a,kobo);
 };
 return {
  async fund(input:Funding){
   check(input);if(!validId(input.budgetId)||!validId(input.providerEventId)||!amount(input.fundedKobo)||!amount(input.rewardKobo)||input.rewardKobo>input.fundedKobo)throw Error('civic_reward.invalid_budget');
   return withTransaction(pool,async c=>{
    const t=input.tenantId,id=input.budgetId;
    await c.query('SELECT pg_advisory_xact_lock(hashtextextended($1,0))',['civic-reward-budget:'+key(t,id)]);
    const existing=(await c.query<Budget>('SELECT * FROM gb_wallet.civic_learning_budgets WHERE tenant_id=$1 AND budget_id=$2 FOR UPDATE',[t,id])).rows[0];
    if(existing){if(existing.funder_id!==input.userId||existing.provider_event_id!==input.providerEventId||Number(existing.funded_kobo)!==input.fundedKobo||Number(existing.reward_kobo)!==input.rewardKobo)throw Error('civic_reward.budget_conflict');return existing;}
    await lockActive(c,input);
    const escrow='civic-reward-escrow-'+key(t,id),op=operation('fund',t,id);
    if((await c.query('SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2',[t,escrow])).rows.length)throw Error('civic_reward.escrow_conflict');
    await lockWallets(c,t,input.userId,escrow);
    if(await depositProof(c,t,input.userId,input.providerEventId)<input.fundedKobo)throw Error('civic_reward.insufficient_proof');
    const balance=await createNgnSpending(pool,c).balance({tenantId:t,userId:escrow});
    if(balance.balanceKobo||balance.heldKobo||balance.debtKobo||balance.frozen)throw Error('civic_reward.escrow_conflict');
    await transfer(c,t,input.userId,escrow,input.fundedKobo,op);
    const b=(await c.query<Budget>(`INSERT INTO gb_wallet.civic_learning_budgets(tenant_id,budget_id,funder_id,escrow_id,provider_event_id,funded_kobo,reward_kobo,funding_operation_id)
     VALUES($1,$2,$3,$4,$5,$6,$7,$8) RETURNING *`,[t,id,input.userId,escrow,input.providerEventId,input.fundedKobo,input.rewardKobo,op])).rows[0]!;
    await audit(c,input,id,'fund');return b;
   });
  },
  async control(a:Actor,id:string,action:'activate'|'pause'|'close'){
   check(a);if(!validId(id)||!['activate','pause','close'].includes(action))throw Error('civic_reward.invalid_control');
   return withTransaction(pool,async c=>{
    const b=await budget(c,a.tenantId,id);
    if(b.funder_id!==a.userId)throw Error('civic_reward.not_funder');
    if(b.state==='closed'){if(action==='close')return b;throw Error('civic_reward.budget_closed');}
    await lockActive(c,a);
    let returned=0;
    if(action==='activate'){
     await lockWallets(c,a.tenantId,b.funder_id,b.escrow_id);
     await depositProof(c,a.tenantId,b.funder_id,b.provider_event_id);
     const w=await createNgnSpending(pool,c).balance({tenantId:a.tenantId,userId:b.funder_id});
     if(w.frozen||w.debtKobo)throw Error('civic_reward.funding_restricted');
     if(Number(b.funded_kobo)-Number(b.spent_kobo)<Number(b.reward_kobo))throw Error('civic_reward.budget_exhausted');
    }
    if(action==='close'){
     await lockWallets(c,a.tenantId,b.funder_id,b.escrow_id);
     returned=Number(b.funded_kobo)-Number(b.spent_kobo);
     if(returned)await transfer(c,a.tenantId,b.escrow_id,b.funder_id,returned,operation('refund',a.tenantId,id));
    }
    const state=action==='activate'?'active':action==='pause'?'paused':'closed';
    const updated=(await c.query<Budget>('UPDATE gb_wallet.civic_learning_budgets SET state=$3,returned_kobo=$4 WHERE tenant_id=$1 AND budget_id=$2 RETURNING *',[a.tenantId,id,state,returned])).rows[0]!;
    await audit(c,a,id,action);return updated;
   });
  },
  async begin(a:Actor){
   check(a);return withTransaction(pool,async c=>{
    await lockActive(c,a,true);
    const old=(await c.query<{attempt_id:string;state:string;live:boolean;day_today:boolean;attempt_count:number}>(
     `SELECT attempt_id::text,state,expires_at>clock_timestamp() AS live,day=(clock_timestamp() AT TIME ZONE 'UTC')::date AS day_today,attempt_count
       FROM gb_wallet.civic_learning_attempts WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3 FOR UPDATE`,[a.tenantId,a.userId,lessonId])).rows[0];
    if(old?.state==='passed')return {lesson:civicLearningLesson(),attemptId:old.attempt_id,passed:true};
    if(old?.state==='started'&&old.live)return {lesson:civicLearningLesson(),attemptId:old.attempt_id,passed:false};
    const n=old?.day_today?old.attempt_count+1:1;if(n>3)throw Error('civic_reward.attempt_limit');
    const nonce=randomUUID();
    await c.query(`INSERT INTO gb_wallet.civic_learning_attempts(tenant_id,user_id,lesson_id,attempt_id,expires_at,day,attempt_count)
      VALUES($1,$2,$3,$4,clock_timestamp()+interval '20 minutes',(clock_timestamp() AT TIME ZONE 'UTC')::date,$5)
      ON CONFLICT(tenant_id,user_id,lesson_id) DO UPDATE SET attempt_id=EXCLUDED.attempt_id,started_at=clock_timestamp(),
      expires_at=EXCLUDED.expires_at,day=EXCLUDED.day,attempt_count=EXCLUDED.attempt_count,state='started'`,[a.tenantId,a.userId,lessonId,nonce,n]);
    return {lesson:civicLearningLesson(),attemptId:nonce,passed:false};
   });
  },
  async complete(a:Actor,attemptId:string,answers:unknown){
   check(a);if(!/^[0-9a-f-]{36}$/i.test(attemptId))throw Error('civic_reward.invalid_attempt');
   return withTransaction(pool,async c=>{
    await lockActive(c,a,true);
    const attempt=(await c.query<{state:string;ready:boolean}>(
     `SELECT state,started_at<=clock_timestamp()-interval '30 seconds' AND expires_at>clock_timestamp() AS ready
     FROM gb_wallet.civic_learning_attempts WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3 AND attempt_id::text=$4 FOR UPDATE`,[a.tenantId,a.userId,lessonId,attemptId])).rows[0];
    if(!attempt)throw Error('civic_reward.invalid_attempt');
    if(attempt.state==='passed')return {passed:true};
    if(attempt.state!=='started'||!attempt.ready)throw Error('civic_reward.attempt_not_ready');
    const passed=gradeCivicLearning(answers);
    await c.query('UPDATE gb_wallet.civic_learning_attempts SET state=$4 WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3',[a.tenantId,a.userId,lessonId,passed?'passed':'failed']);
    return {passed};
   });
  },
  async award(a:Actor){
   check(a);return withTransaction(pool,async c=>{
    // A tenant budget row is the serialization point for financial claims.
    const b=(await c.query<Budget>("SELECT * FROM gb_wallet.civic_learning_budgets WHERE tenant_id=$1 AND state='active' FOR UPDATE",[a.tenantId])).rows[0];
    await lockActive(c,a,true);
    const prior=(await c.query('SELECT operation_id,amount_kobo::text FROM gb_wallet.civic_learning_awards WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3',[a.tenantId,a.userId,lessonId])).rows[0];
    if(prior)return {operationId:String(prior.operation_id),amountKobo:Number(prior.amount_kobo)};
    if(!b)throw Error('civic_reward.no_active_budget');
    if(a.userId===b.funder_id)throw Error('civic_reward.funder_ineligible');
    if(!(await c.query("SELECT 1 FROM gb_wallet.civic_learning_attempts WHERE tenant_id=$1 AND user_id=$2 AND lesson_id=$3 AND state='passed'",[a.tenantId,a.userId,lessonId])).rows.length)throw Error('civic_reward.lesson_required');
    const kobo=Number(b.reward_kobo);
    if(Number(b.funded_kobo)-Number(b.spent_kobo)<kobo)throw Error('civic_reward.budget_exhausted');
    await lockWallets(c,a.tenantId,b.funder_id,b.escrow_id,a.userId);
    await depositProof(c,a.tenantId,b.funder_id,b.provider_event_id);
    const w=await createNgnSpending(pool,c).balance({tenantId:a.tenantId,userId:b.funder_id});
    if(w.frozen||w.debtKobo)throw Error('civic_reward.funding_restricted');
    const op=operation('pay',a.tenantId,a.userId,lessonId);
    await transfer(c,a.tenantId,b.escrow_id,a.userId,kobo,op);
    await c.query('INSERT INTO gb_wallet.civic_learning_awards(tenant_id,user_id,lesson_id,budget_id,operation_id,amount_kobo) VALUES($1,$2,$3,$4,$5,$6)',[a.tenantId,a.userId,lessonId,b.budget_id,op,kobo]);
    await c.query('UPDATE gb_wallet.civic_learning_budgets SET spent_kobo=spent_kobo+$3 WHERE tenant_id=$1 AND budget_id=$2',[a.tenantId,b.budget_id,kobo]);
    return {operationId:op,amountKobo:kobo};
   });
  }
 };
}
