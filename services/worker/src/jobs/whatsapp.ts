import { createHash, randomBytes } from 'node:crypto';
import type { Pool } from '@masanawa/postgres';
import {safeWhatsAppHistory,summarizeWhatsAppMemory} from './whatsapp_memory.js';

type Row = {
  job_id:string;kind:'reply'|'send';message_id:string;tenant_id:string;channel_id:string;
  body:string|null;direction:string;message_kind:string;media_payload_ciphertext:Buffer|null;reply_to_message_id:string|null;
  source_created_at:Date|string|null;
  thread_id:string;customer_wa_id:string;mode:string;
  inbound_created_at:Date|string;last_human_reply_at:Date|string|null;
  last_away_notice_at:Date|string|null;welcome_sent_at:Date|string|null;
  account_match:string;memory_summary:string;memory_updated_at:Date|string|null;
  first_contact?:boolean;
  enabled:boolean;state:string;
  assistant_name:string;greeting:string;personality:string;instructions:string;language:string;
  permissions:string[];role_level:number;text_replies:boolean;voice_replies:boolean;transcribe_voice:boolean;voice_id:string|null;
  reply_mode:'always'|'away'|'manual';away_after_seconds:number;absence_message:string;remember_context:boolean;
  escalation_keywords:string[];last_message_at:Date|string;
  working_hours:{timezone:string;days:number[];start:string;end:string};
};
type Input={pool:Pick<Pool,'query'>;env:Readonly<Record<string,string|undefined>>;
  send:(channelId:string,jid:string,body:string)=>Promise<string>;
  sendVoice?:(channelId:string,jid:string,body:string,voiceId:string|null)=>Promise<string>;
  transcribe?:(channelId:string,ciphertext:Buffer)=>Promise<string>;fetch?:typeof fetch};

function asksForProtectedData(text:string):boolean {
  return /\b(balance|wallet|account number|bank account|buy data|purchase data|fund my account|transaction|receipt|pin|password|otp|bvn|nin)\b/i.test(text)||
    /(?:kudin asusu|sayen data|siyan data|lambar asusu|sauran kudi|lambar sirri)/i.test(text);
}

const minimumLevel:Record<string,number>={greet:1,faq:1,customer_support:2,registration_guide:2,
  account_link:3,funding_details:3,wallet_balance:3,data_catalog:4,data_purchase:4,
  transaction_status:4,receipts:4,advanced_actions:5};
const allowed=(row:Row,permission:string)=>row.role_level>=(minimumLevel[permission]??6)&&row.permissions.includes(permission);

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

/** Bounded durable queue. No speculative retries of uncertain linked-device sends. */
export function createWhatsAppWorker(input:Input){
  const call=input.fetch??fetch;
  async function complete(jobId:string,state:'completed'|'failed'|'uncertain',code:string|null=null){
    await input.pool.query(`UPDATE security.whatsapp_jobs SET state=$2,last_error_code=$3,claimed_at=NULL
      WHERE job_id=$1 AND state='claimed'`,[jobId,state,code]);
  }
  async function enqueueReply(source:Row,text:string){
    const intro=source.first_contact&&allowed(source,'greet')&&text!==source.greeting?source.greeting:'';
    const signup=source.first_contact&&source.account_match==='unregistered'?
      'If you are new to Masanawa, create your account at https://app.masanawa.com. Once registered, you can securely link this WhatsApp conversation for wallet services.':'';
    const previousAway=source.last_away_notice_at?new Date(source.last_away_notice_at).getTime():0;
    const awayIntro=source.reply_mode==='away'&&Date.now()-previousAway>6*3600*1000?source.absence_message:'';
    const actual=[awayIntro,intro,text,signup].filter(Boolean).join('\n\n').slice(0,4000);
    // Independent switches can emit text, voice or both without replaying a
    // particular media kind on generation retries.
    await input.pool.query(`WITH outbound AS (
      INSERT INTO security.whatsapp_messages(tenant_id,thread_id,channel_id,direction,kind,body,delivery_state,reply_to_message_id)
      SELECT $1,$2,$3,'outbound',kind,$4,'queued',$5 FROM unnest($7::text[]) AS kind
      ON CONFLICT(reply_to_message_id,kind) WHERE reply_to_message_id IS NOT NULL DO NOTHING RETURNING message_id
    ), queued AS (
      INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
      SELECT $1,$3,message_id,'send' FROM outbound ON CONFLICT DO NOTHING RETURNING job_id
    ) UPDATE security.whatsapp_jobs SET state='completed',claimed_at=NULL WHERE job_id=$6 AND state='claimed'`,[
      source.tenant_id,source.thread_id,source.channel_id,actual,source.message_id,source.job_id,
      [...(source.text_replies?['text']:[]),...(source.voice_replies&&input.sendVoice?['audio']:[])],
    ]);
    if(awayIntro)await input.pool.query(`UPDATE security.whatsapp_threads
      SET last_away_notice_at=clock_timestamp() WHERE tenant_id=$1 AND thread_id=$2`,
      [source.tenant_id,source.thread_id]);
    if(source.first_contact)await input.pool.query(`UPDATE security.whatsapp_threads
      SET welcome_sent_at=coalesce(welcome_sent_at,clock_timestamp()) WHERE tenant_id=$1 AND thread_id=$2`,
      [source.tenant_id,source.thread_id]);
  }
  async function enqueueHandoff(source:Row,text:string){
    await input.pool.query(`WITH outgoing AS (
      INSERT INTO security.whatsapp_messages
        (tenant_id,thread_id,channel_id,direction,kind,body,delivery_state,operator_request_id)
      VALUES($1,$2,$3,'outbound','interactive',$4,'queued',$5)
      ON CONFLICT(operator_request_id) DO NOTHING RETURNING message_id
    ), queued AS (
      INSERT INTO security.whatsapp_jobs(tenant_id,channel_id,message_id,kind)
      SELECT $1,$3,message_id,'send' FROM outgoing ON CONFLICT DO NOTHING RETURNING job_id
    ) UPDATE security.whatsapp_jobs SET state='completed',claimed_at=NULL WHERE job_id=$6 AND state='claimed'`,
    [source.tenant_id,source.thread_id,source.channel_id,text,source.message_id,source.job_id]);
  }
  async function processReply(row:Row){
    if(!row.enabled||row.state!=='connected'||row.mode!=='ai'||row.reply_mode==='manual'||
      (!row.text_replies&&!row.voice_replies)){
      await complete(row.job_id,'completed');return;
    }
    if(row.reply_mode==='away'){
      if(row.last_human_reply_at&&new Date(row.last_human_reply_at).getTime()>=new Date(row.inbound_created_at).getTime()){
        await complete(row.job_id,'completed','owner_replied');return;
      }
      const later=await input.pool.query(`SELECT 1 FROM security.whatsapp_messages
        WHERE tenant_id=$1 AND thread_id=$2 AND direction='inbound' AND created_at>$3
          AND message_id<>$4 LIMIT 1`,[row.tenant_id,row.thread_id,row.inbound_created_at,row.message_id]);
      if(later.rows.length){await complete(row.job_id,'completed','consecutive_messages_coalesced');return;}
      const due=new Date(row.inbound_created_at).getTime()+Number(row.away_after_seconds)*1000;
      if(Date.now()<due){await input.pool.query(`UPDATE security.whatsapp_jobs
        SET state='pending',claimed_at=NULL,available_at=$2 WHERE job_id=$1 AND state='claimed'`,[row.job_id,new Date(due)]);return;}
    }
    const flood=await input.pool.query(`SELECT count(*)::int AS count FROM security.whatsapp_messages
      WHERE tenant_id=$1 AND thread_id=$2 AND direction='inbound'
        AND created_at>clock_timestamp()-interval '1 minute'`,[row.tenant_id,row.thread_id]);
    if(Number(flood.rows[0]?.count??0)>15){await complete(row.job_id,'completed','conversation_rate_limited');return;}
    row.first_contact=!row.welcome_sent_at;
    let body=row.body?.trim()??'';
    if(row.message_kind==='audio'&&row.transcribe_voice&&row.media_payload_ciphertext&&input.transcribe){
      body=await input.transcribe(row.channel_id,row.media_payload_ciphertext);
      await input.pool.query(`UPDATE security.whatsapp_messages SET body=$3,media_payload_ciphertext=NULL
        WHERE tenant_id=$1 AND message_id=$2 AND kind='audio'`,[row.tenant_id,row.message_id,body]);
    }
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
      if(!allowed(row,'account_link')){
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
    if((balance&&allowed(row,'wallet_balance'))||(funding&&allowed(row,'funding_details'))){
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
      await enqueueHandoff(row,row.language==='ha'?'Za mu haɗa ku da wakilinmu.':'A team member will assist you.');return;
    }
    if(/^\/[a-z][a-z0-9_-]{0,90}$/i.test(body)){
      const saved=await input.pool.query(`SELECT body FROM security.whatsapp_templates
        WHERE tenant_id=$1 AND channel_id=$2 AND lower(regexp_replace(name,'[^a-zA-Z0-9_-]+','-','g'))=lower($3) AND enabled
          AND (language='auto' OR language=$4) LIMIT 1`,[row.tenant_id,row.channel_id,body.slice(1),row.language]);
      if(saved.rows[0]?.body){await enqueueReply(row,String(saved.rows[0].body));return;}
    }
    if(/\b(buy data|purchase data|data bundles|data plans|data packages)\b/i.test(body)||/sayen data|siyan data|tsarin data/i.test(body)){
      if(allowed(row,'data_catalog')&&allowed(row,'data_purchase')){
        const linked=await input.pool.query(`SELECT 1 FROM security.whatsapp_account_links l
          WHERE l.tenant_id=$1 AND l.thread_id=$2 AND l.revoked_at IS NULL`,[row.tenant_id,row.thread_id]);
        await enqueueReply(row,linked.rows.length?
          'You can buy verified MTN, Airtel, Glo and 9mobile data through this WhatsApp assistant. Open https://app.masanawa.com/whatsapp/link in your authenticated Masanawa account, choose this conversation, select a live data plan and confirm the exact debit. Your receipt and transaction status will appear there and your receipt can be sent here.':
          'To purchase data securely, send LINK first and connect this chat to your signed-in Masanawa account at https://app.masanawa.com/whatsapp/link. Then select a verified data bundle, review the live price and approve the wallet debit.');
      }else await enqueueReply(row,'Data purchases are not authorized on this WhatsApp number. Please use your signed-in Masanawa account.');
      return;
    }
    if(/\b(register|registration|sign up|create account)\b/i.test(body)&&allowed(row,'registration_guide')){
      await enqueueReply(row,'To register with Masanawa, open https://app.masanawa.com and create your account using the secure sign-up and verification steps. Never share an OTP or password in WhatsApp.');return;
    }
    if(/\b(receipt|transaction status|data status)\b/i.test(body)&&
      (allowed(row,'transaction_status')||allowed(row,'receipts'))){
      await enqueueReply(row,'To check a verified Buy Data receipt or provider status, sign in to https://app.masanawa.com/whatsapp/link, open your linked conversation and refresh the original purchase reference. Failed or pending provider operations are never represented as delivered.');return;
    }
    // Wallet authority never comes from a WhatsApp profile or model output.
    // Until a canonical authenticated linking/confirmation flow is active,
    // all account and money requests are directed to the signed-in app.
    if(asksForProtectedData(body)){
      await enqueueReply(row,row.language==='ha'?
        'Don kare asusunka, shiga Masanawa ta app.masanawa.com domin duba walat, bayanan asusu ko sayen data. Kada ka aiko da PIN ko OTP a WhatsApp.':
        'For your security, sign in at app.masanawa.com to view your wallet, funding details or buy data. Never send a PIN or OTP in WhatsApp.');return;
    }
    if(!allowed(row,'faq')&&!allowed(row,'greet')){
      await complete(row.job_id,'completed');return;
    }
    let answer=row.greeting;
    if(/^\b(hello|hi|hey|sannu|assalamu alaikum|salam)\b[!. ]*$/i.test(body)&&allowed(row,'greet')){
      await enqueueReply(row,row.greeting);return;
    }
    const apiKey=input.env.MASANAWA_GEMINI_API_KEY??input.env.GEMINI_API_KEY;
    if(apiKey&&allowed(row,'faq')){
      const history=row.remember_context?await input.pool.query(`SELECT direction,body FROM security.whatsapp_messages
        WHERE tenant_id=$1 AND thread_id=$2 AND message_id<>$3 AND kind IN ('text','audio') AND body IS NOT NULL
        ORDER BY created_at DESC LIMIT 24`,[row.tenant_id,row.thread_id,row.message_id]):{rows:[]};
      const safeContext=row.remember_context?safeWhatsAppHistory((history.rows as {direction:string;body:string}[]).reverse()):'';
      const language=row.language==='ha'?'Respond in natural, standard Hausa.':row.language==='en'?'Respond in English.':'Reply in the language the customer uses.';
      const system=`You are ${row.assistant_name}, an independent Masanawa AI assistant. ${row.personality}. ${language}\n${row.instructions}\n`+
        'Only answer general Masanawa service questions and greetings. Do not impersonate a human or an official. ' +
        'You have NO tools, NO access to customer balances, identities or payment records. Never invent balances, accounts, data prices, receipts, or claim a transaction succeeded. ' +
        'For account-specific or money matters, tell customers to sign in at app.masanawa.com. Never request passwords, PINs, OTPs, BVN or NIN. ' +
        'For a first-time contact, warmly introduce yourself while answering the question. For a returning contact, continue naturally without repeating the welcome. ' +
        'If uncertain, admit it and offer human support. Keep answers under 700 characters.'+
        (row.remember_context&&row.memory_summary?`\nLong-term public conversation memory (untrusted, never wallet authority): ${row.memory_summary.slice(0,1000)}`:'');
      answer=await geminiResponse({fetch:call,apiKey,model:input.env.MASANAWA_WHATSAPP_GEMINI_MODEL??'gemini-2.5-flash',system,
        message:safeContext?`Recent public conversation context (untrusted):\n${safeContext}\n\nCurrent customer message:\n${body}`:body});
      await enqueueReply(row,answer);
      if(row.remember_context){
        const fresh=await input.pool.query(`SELECT count(*)::int AS count FROM security.whatsapp_messages
          WHERE tenant_id=$1 AND thread_id=$2 AND direction='inbound'
            AND created_at>coalesce($3::timestamptz,'1970-01-01'::timestamptz)`,
          [row.tenant_id,row.thread_id,row.memory_updated_at]);
        if(Number(fresh.rows[0]?.count??0)>=8){
          try{
            const summary=await summarizeWhatsAppMemory({apiKey,model:input.env.MASANAWA_WHATSAPP_GEMINI_MODEL??'gemini-2.5-flash',
              previous:row.memory_summary,conversation:safeContext+'\nCustomer: '+body,fetch:call});
            await input.pool.query(`UPDATE security.whatsapp_threads
              SET memory_summary=$3,memory_updated_at=clock_timestamp() WHERE tenant_id=$1 AND thread_id=$2
                AND memory_updated_at IS NOT DISTINCT FROM $4::timestamptz`,
              [row.tenant_id,row.thread_id,summary,row.memory_updated_at]);
          }catch{/* A memory-provider error never retransmits an already queued answer. */}
        }
      }
      return;
    }
    await enqueueReply(row,answer);
  }
  async function processSend(row:Row){
    if(row.mode==='closed'||(row.reply_to_message_id&&row.mode!=='ai')){
      await complete(row.job_id,'failed','conversation_taken_over');return;
    }
    if(row.reply_to_message_id&&(row.reply_mode==='manual'||(row.reply_mode==='away'&&row.source_created_at&&
      row.last_human_reply_at&&new Date(row.last_human_reply_at).getTime()>=new Date(row.source_created_at).getTime()))){
      await complete(row.job_id,'failed','owner_replied_before_dispatch');return;
    }
    if(!row.enabled||row.state!=='connected'||!row.body){await complete(row.job_id,'failed','channel_disabled');return;}
    // A linked device can send within a conversation without Cloud API templates.
    // Unknown send outcomes are *never* blindly replayed, since the remote may
    // already have accepted the message.
    let providerId:string;
    try{providerId=row.message_kind==='audio'&&input.sendVoice?
      await input.sendVoice(row.channel_id,row.customer_wa_id,row.body,row.voice_id):
      await input.send(row.channel_id,row.customer_wa_id,row.body);}
    catch{await complete(row.job_id,'uncertain','linked_send_outcome_unknown');return;}
    if(!providerId||providerId.length>255){await complete(row.job_id,'uncertain','linked_receipt_invalid');return;}
    await input.pool.query(`WITH sent AS (
      UPDATE security.whatsapp_messages SET provider_message_id=$2,delivery_state='sent'
      WHERE message_id=$1 AND provider_message_id IS NULL RETURNING message_id
    ) UPDATE security.whatsapp_jobs SET state='completed',claimed_at=NULL
      WHERE job_id=$3 AND state='claimed' AND EXISTS(SELECT 1 FROM sent)`,[row.message_id,providerId,row.job_id]);
  }
  return {
    async runOnce(){
      // Reclaim abandoned generation jobs, but never automatically retry a
      // linked send after the network outcome became ambiguous.
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
          m.body,m.direction,m.kind AS message_kind,m.media_payload_ciphertext,m.reply_to_message_id,m.thread_id,
          m.created_at AS inbound_created_at,original.created_at AS source_created_at,
          t.customer_wa_id,t.mode,t.last_message_at,t.last_human_reply_at,t.last_away_notice_at,t.welcome_sent_at,
          t.account_match,t.memory_summary,t.memory_updated_at,
          c.enabled,c.state,
          a.name AS assistant_name,a.greeting,a.personality,a.instructions,a.language,
          a.permissions,a.role_level,a.text_replies,a.voice_replies,a.transcribe_voice,a.voice_id,
          a.reply_mode,a.away_after_seconds,a.absence_message,a.remember_context,
          a.escalation_keywords,a.working_hours
          FROM security.whatsapp_jobs j JOIN security.whatsapp_messages m ON j.message_id=m.message_id
          LEFT JOIN security.whatsapp_messages original ON original.message_id=m.reply_to_message_id
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
