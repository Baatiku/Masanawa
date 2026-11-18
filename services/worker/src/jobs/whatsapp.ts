import { createDecipheriv, createHash, randomBytes } from 'node:crypto';
import type { Pool } from '@masanawa/postgres';

type Row = {
  job_id:string;kind:'reply'|'send';message_id:string;tenant_id:string;channel_id:string;
  body:string|null;direction:string;thread_id:string;customer_wa_id:string;mode:string;
  phone_number_id:string;token_ciphertext:Buffer;enabled:boolean;state:string;
  assistant_name:string;greeting:string;personality:string;instructions:string;language:string;
  permissions:string[];text_replies:boolean;escalation_keywords:string[];last_message_at:Date|string;
  working_hours:{timezone:string;days:number[];start:string;end:string};
};
type Input={pool:Pick<Pool,'query'>;env:Readonly<Record<string,string|undefined>>;fetch?:typeof fetch};

function decryptToken(value:Buffer,keyBase64:string|undefined):string {
  const key=Buffer.from(keyBase64??'','base64');
  if(key.length!==32||value.length<29)throw new Error('missing_whatsapp_token_key');
  const decipher=createDecipheriv('aes-256-gcm',key,value.subarray(0,12));
  decipher.setAuthTag(value.subarray(-16));
  return Buffer.concat([decipher.update(value.subarray(12,-16)),decipher.final()]).toString('utf8');
}

function asksForProtectedData(text:string):boolean {
  return /\b(balance|wallet|account number|bank account|buy data|purchase data|fund my account|transaction|receipt|pin|password|otp|bvn|nin)\b/i.test(text)||
    /(?:kudin asusu|sayen data|siyan data|lambar asusu|sauran kudi|lambar sirri)/i.test(text);
}

function money(kobo:number):string {
  return new Intl.NumberFormat('en-NG',{style:'currency',currency:'NGN'}).format(kobo/100);
}

async function geminiResponse(input:{fetch:typeof fetch;apiKey:string;model:string;system:string;message:string}):Promise<string>{
  const r=await input.fetch(`https://generativelanguage.googleapis.com/v1beta/models/${encodeURIComponent(input.model)}:generateContent`,{
    method:'POST',headers:{'x-goog-api-key':input.apiKey,'content-type':'application/json'},
    body:JSON.stringify({systemInstruction:{parts:[{text:input.system}]},contents:[{role:'user',parts:[{text:input.message}]}],
      generationConfig:{temperature:0.45,maxOutputTokens:500}}),
    redirect:'manual',signal:AbortSignal.timeout(16000),
  });
  if(!r.ok)throw new Error('gemini_unavailable');
  const j=await r.json() as {candidates?:{content?:{parts?:{text?:string}[]}}[]};
  const output=j.candidates?.[0]?.content?.parts?.map(p=>p.text??'').join('').trim()??'';
  if(!output||output.length>5000)throw new Error('gemini_response_invalid');
  return output.slice(0,3000);
}

/** Bounded durable queue. No speculative retries of uncertain Meta sends. */
export function createWhatsAppWorker(input:Input){
  const call=input.fetch??fetch;
  async function complete(jobId:string,state:'completed'|'failed'|'uncertain',code:string|null=null){
    await input.pool.query(`UPDATE security.whatsapp_jobs SET state=$2,last_error_code=$3,claimed_at=NULL
      WHERE job_id=$1 AND state='claimed'`,[jobId,state,code]);
  }
  async function enqueueReply(source:Row,text:string){
    // One SQL statement makes a unique response and outbox claim atomic.
    await input.pool.query(`WITH outbound AS (
      INSERT INTO security.whatsapp_messages(tenant_id,thread_id,channel_id,direction,kind,body,delivery_state,reply_to_message_id)
      VALUES($1,$2,$3,'outbound','text',$4,'queued',$5)
      ON CONFLICT(reply_to_message_id) DO NOTHING RETURNING message_id
    ), queued AS (
      INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
      SELECT $1,$3,message_id,'send' FROM outbound ON CONFLICT DO NOTHING RETURNING job_id
    ) UPDATE security.whatsapp_jobs SET state='completed',claimed_at=NULL WHERE job_id=$6 AND state='claimed'`,[
      source.tenant_id,source.thread_id,source.channel_id,text,source.message_id,source.job_id,
    ]);
  }
  async function processReply(row:Row){
    if(!row.enabled||row.state!=='connected'||row.mode!=='ai'||!row.text_replies){
      await complete(row.job_id,'completed');return;
    }
    const body=row.body?.trim()??'';
    if(!body){await complete(row.job_id,'completed');return;}
    const nowLagos=new Intl.DateTimeFormat('en-GB',{timeZone:'Africa/Lagos',weekday:'short',hour:'2-digit',minute:'2-digit',hourCycle:'h23'}).formatToParts(new Date());
    const piece=(kind:string)=>nowLagos.find(p=>p.type===kind)?.value??'';
    const day=['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].indexOf(piece('weekday'));
    const hm=`${piece('hour')}:${piece('minute')}`;
    const hours=row.working_hours;
    if(hours?.timezone==='Africa/Lagos'&&(!hours.days.includes(day)||hm<hours.start||hm>hours.end)){
      await enqueueReply(row,'Our assistant is currently outside its working hours. Please leave a message or ask for a human representative.');return;
    }
    if(/^link(?:\s+account)?$/i.test(body)){
      if(!row.permissions.includes('account_link')){
        await enqueueReply(row,'Secure account linking is not enabled on this WhatsApp number. Please use the Masanawa app.');return;
      }
      const code=randomBytes(12).toString('base64url');
      const codeHash=createHash('sha256').update(code).digest('hex');
      const claim=await input.pool.query(`INSERT INTO security.whatsapp_link_intents(code_hash,tenant_id,thread_id,expires_at)
        SELECT $1,$2,$3,clock_timestamp()+interval '10 minutes'
        WHERE (SELECT count(*) FROM security.whatsapp_link_intents
          WHERE tenant_id=$2 AND thread_id=$3 AND created_at>clock_timestamp()-interval '1 hour')<5
        RETURNING code_hash`,[codeHash,row.tenant_id,row.thread_id]);
      await enqueueReply(row,claim.rows.length?
        `To securely link your WhatsApp chat, sign in to Masanawa at https://app.masanawa.com/whatsapp/link and enter this one-time code: ${code}. It expires in 10 minutes. Do not share your password or OTP.`:
        'Too many linking requests. Please wait and try again later.');return;
    }
    const balance=/\b(balance|wallet balance)\b/i.test(body)||/sauran kudi/i.test(body);
    const funding=/\b(account number|funding details|fund my account|bank account)\b/i.test(body)||/lambar asusu/i.test(body);
    if((balance&&row.permissions.includes('wallet_balance'))||(funding&&row.permissions.includes('funding_details'))){
      const ownership=await input.pool.query(`SELECT l.user_id FROM security.whatsapp_account_links l
        JOIN security.whatsapp_access_grants g ON g.tenant_id=l.tenant_id AND g.thread_id=l.thread_id
          AND g.user_id=l.user_id AND g.scope='account.read' AND g.expires_at>clock_timestamp()
        JOIN identity.users u ON u.tenant_id=l.tenant_id AND u.user_id=l.user_id AND u.state='active'
        WHERE l.tenant_id=$1 AND l.thread_id=$2 AND l.revoked_at IS NULL`,[row.tenant_id,row.thread_id]);
      const userId=ownership.rows[0]?.user_id as string|undefined;
      if(!userId){await enqueueReply(row,
        'Account details require a recent, authenticated Masanawa authorization. Send LINK to connect your account, then grant 10-minute read access in the signed-in app.');return;}
      if(balance){
        const wallet=await input.pool.query(`SELECT balance_kobo::text,held_kobo::text,frozen FROM gb_wallet.ngn_accounts
          WHERE tenant_id=$1 AND account_id=$2`,[row.tenant_id,userId]);
        const entry=wallet.rows[0];
        if(entry?.frozen){await enqueueReply(row,'Your wallet is restricted. Please contact Masanawa support through the signed-in app.');return;}
        const balanceKobo=Number(entry?.balance_kobo??0),heldKobo=Number(entry?.held_kobo??0);
        await enqueueReply(row,`Your verified NGN wallet balance is ${money(balanceKobo)}. Reserved: ${money(heldKobo)}. This read authorization expires after 10 minutes.`);return;
      }
      const account=await input.pool.query(`SELECT bank_name,account_name,account_number FROM gb_wallet.billstack_accounts
        WHERE tenant_id=$1 AND account_id=$2 AND status='assigned'`,[row.tenant_id,userId]);
      const a=account.rows[0];
      await enqueueReply(row,a?.account_number?
        `Your Masanawa funding details: ${a.bank_name??'9PSB'} · ${a.account_name??'Masanawa'} · ${a.account_number}. Confirm the beneficiary name in your bank app before sending money.`:
        'A verified funding account is not yet available. Open your signed-in Masanawa wallet for the latest status.');return;
    }
    const handoff=row.escalation_keywords.some(word=>word&&body.toLowerCase().includes(word.toLowerCase()));
    if(handoff){
      await input.pool.query(`UPDATE security.whatsapp_threads SET mode='human'
        WHERE tenant_id=$1 AND thread_id=$2 AND mode='ai'`,[row.tenant_id,row.thread_id]);
      await enqueueReply(row,row.language==='ha'?'Za mu haɗa ku da wakilinmu.':'A team member will assist you.');return;
    }
    // Wallet authority never comes from a WhatsApp profile or model output.
    // Until a canonical authenticated linking/confirmation flow is active,
    // all account and money requests are directed to the signed-in app.
    if(asksForProtectedData(body)){
      await enqueueReply(row,row.language==='ha'?
        'Don kare asusunka, shiga Masanawa ta app.masanawa.com domin duba walat, bayanan asusu ko sayen data. Kada ka aiko da PIN ko OTP a WhatsApp.':
        'For your security, sign in at app.masanawa.com to view your wallet, funding details or buy data. Never send a PIN or OTP in WhatsApp.');return;
    }
    if(!row.permissions.includes('faq')&&!row.permissions.includes('greet')){
      await complete(row.job_id,'completed');return;
    }
    let answer=row.greeting;
    const apiKey=input.env.MASANAWA_GEMINI_API_KEY??input.env.GEMINI_API_KEY;
    if(apiKey&&row.permissions.includes('faq')){
      const language=row.language==='ha'?'Respond in natural, standard Hausa.':row.language==='en'?'Respond in English.':'Reply in the language the customer uses.';
      const system=`You are ${row.assistant_name}, an independent Masanawa AI assistant. ${row.personality}. ${language}\n${row.instructions}\n`+
        'Only answer general Masanawa service questions and greetings. Do not impersonate a human or an official. ' +
        'You have NO tools, NO access to customer balances, identities or payment records. Never invent balances, accounts, data prices, receipts, or claim a transaction succeeded. ' +
        'For account-specific or money matters, tell customers to sign in at app.masanawa.com. Never request passwords, PINs, OTPs, BVN or NIN. ' +
        'If uncertain, admit it and offer human support. Keep answers under 700 characters.';
      answer=await geminiResponse({fetch:call,apiKey,model:input.env.MASANAWA_WHATSAPP_GEMINI_MODEL??'gemini-2.5-flash',system,message:body});
    }
    await enqueueReply(row,answer);
  }
  async function processSend(row:Row){
    if(!row.enabled||row.state!=='connected'||!row.body){await complete(row.job_id,'failed','channel_disabled');return;}
    const last=new Date(row.last_message_at).getTime();
    if(!Number.isFinite(last)||Date.now()-last>=24*60*60*1000){
      await complete(row.job_id,'failed','customer_service_window_closed');return;
    }
    let token:string;
    try{token=decryptToken(row.token_ciphertext,input.env.MASANAWA_WHATSAPP_TOKEN_KEY);}catch{await complete(row.job_id,'failed','token_unavailable');return;}
    let response:Response;
    try{response=await call(`https://graph.facebook.com/v27.0/${row.phone_number_id}/messages`,{
      method:'POST',headers:{Authorization:`Bearer ${token}`,'Content-Type':'application/json'},
      body:JSON.stringify({messaging_product:'whatsapp',to:row.customer_wa_id,type:'text',text:{body:row.body}}),
      redirect:'manual',signal:AbortSignal.timeout(12000),
    });}catch{
      // The request might have reached Meta; blindly retrying would duplicate a message.
      await complete(row.job_id,'uncertain','meta_delivery_outcome_unknown');return;
    }
    if(!response.ok){
      await complete(row.job_id,response.status>=500?'uncertain':'failed',`meta_http_${response.status}`);return;
    }
    const body=await response.json().catch(()=>null) as {messages?:{id?:unknown}[]}|null;
    const providerId=body?.messages?.[0]?.id;
    if(typeof providerId!=='string'||providerId.length>255){await complete(row.job_id,'uncertain','meta_receipt_invalid');return;}
    await input.pool.query(`WITH sent AS (
      UPDATE security.whatsapp_messages SET provider_message_id=$2,delivery_state='sent'
      WHERE message_id=$1 AND provider_message_id IS NULL RETURNING message_id
    ) UPDATE security.whatsapp_jobs SET state='completed',claimed_at=NULL
      WHERE job_id=$3 AND state='claimed' AND EXISTS(SELECT 1 FROM sent)`,[row.message_id,providerId,row.job_id]);
  }
  return {
    async runOnce(){
      // Reclaim abandoned generation jobs, but never automatically retry a
      // Graph POST after the network outcome became ambiguous.
      await input.pool.query(`UPDATE security.whatsapp_jobs SET state='pending',claimed_at=NULL,
        available_at=clock_timestamp() WHERE kind='reply' AND state='claimed'
        AND claimed_at<clock_timestamp()-interval '5 minutes' AND attempts<3`);
      await input.pool.query(`UPDATE security.whatsapp_jobs SET state='failed',last_error_code='generation_retry_exhausted'
        WHERE kind='reply' AND state='claimed' AND claimed_at<clock_timestamp()-interval '5 minutes' AND attempts>=3`);
      await input.pool.query(`UPDATE security.whatsapp_jobs SET state='uncertain',last_error_code='outbound_worker_interrupted'
        WHERE kind='send' AND state='claimed' AND claimed_at<clock_timestamp()-interval '5 minutes'`);
      const claims=await input.pool.query(`WITH picked AS (
        SELECT job_id FROM security.whatsapp_jobs WHERE state='pending' AND available_at<=clock_timestamp()
        ORDER BY created_at LIMIT 15 FOR UPDATE SKIP LOCKED
      ) UPDATE security.whatsapp_jobs j SET state='claimed',attempts=j.attempts+1,claimed_at=clock_timestamp()
        FROM picked WHERE j.job_id=picked.job_id RETURNING j.job_id`);
      let completed=0;
      for(const claimed of claims.rows){
        const q=await input.pool.query(`SELECT j.job_id,j.kind,j.message_id,j.tenant_id,j.channel_id,
          m.body,m.direction,m.thread_id,t.customer_wa_id,t.mode,t.last_message_at,
          c.phone_number_id,c.token_ciphertext,c.enabled,c.state,
          a.name AS assistant_name,a.greeting,a.personality,a.instructions,a.language,
          a.permissions,a.text_replies,a.escalation_keywords,a.working_hours
          FROM security.whatsapp_jobs j JOIN security.whatsapp_messages m ON j.message_id=m.message_id
          JOIN security.whatsapp_threads t ON t.thread_id=m.thread_id
          JOIN security.whatsapp_channels c ON c.channel_id=j.channel_id
          JOIN security.whatsapp_assistants a ON a.channel_id=j.channel_id
          WHERE j.job_id=$1 AND j.state='claimed'`,[claimed.job_id]);
        const row=q.rows[0] as Row|undefined;
        if(!row){await complete(claimed.job_id,'failed','missing_job_dependency');continue;}
        try{if(row.kind==='reply')await processReply(row);else await processSend(row);completed++;}
        catch{
          if(row.kind==='send')await complete(row.job_id,'uncertain','delivery_commit_unknown');
          else await input.pool.query(`UPDATE security.whatsapp_jobs SET state=CASE WHEN attempts>=3 THEN 'failed' ELSE 'pending' END,
            available_at=clock_timestamp()+interval '30 seconds',claimed_at=NULL,last_error_code='reply_generation_unavailable'
            WHERE job_id=$1 AND state='claimed'`,[row.job_id]);
        }
      }
      return {claimed:claims.rows.length,completed};
    },
  };
}
