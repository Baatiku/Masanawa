import {
  randomUUID, createHash
}
from 'node:crypto';
import type {
  FastifyInstance
}
from 'fastify';
export interface HumanSql {
  query<R extends Record<string,unknown> = Record<string,unknown>>(sql:string,values?:unknown[]):Promise<{
    rows:R[];
    rowCount:number|null
  }
  >
}
export interface HumanPool extends HumanSql {
  connect():Promise<HumanSql & {
    release():void
  }
  >
}
export interface HumanOptions {
  pool:HumanPool;
  authorizer:{
    authorize(input:{
      authorizationHeader:string|undefined
    }
    ):Promise<{
      tenantId:string;
      userId:string
    }
    >
  }
  ;
  mediaTokens?:{
    mint(input:{
      talkId:string;
      sessionId:string;
      userId:string;
      role:'speaker';
      canPublishAudio:true
    }
    ):Promise<unknown>
  }
  ;
  endMediaRoom?:(roomName:string)=>Promise<void>;
  push?:(input:{
    tenantId:string;
    userId:string;
    eventId:string;
    category:'messages'|'calls';
    title:string;
    body:string;
    deepLink:string;
    urgent:boolean
  }
  )=>Promise<unknown>;
  now?:()=>Date;
}
type Row=Record<string,any>;
type Actor={
  tenantId:string;
  userId:string
}
;
const defaults={
  messages:'everyone',calls:'everyone',roomInvites:'everyone',readReceipts:true,presence:true
}
;
function fail(code:number,message:string):never {
  throw Object.assign(new Error(message),{
    statusCode:code
  }
  )
}
function str(v:unknown,max=200):string {
  if(typeof v!=='string'||!v.trim()||v.length>max)fail(400,'Invalid input');
  return v.trim()
}
const iso=(v:any)=>v?new Date(v).toISOString():null;
export function createHumanCommunicationService(o:HumanOptions){
  const now=()=> (o.now?.()??new Date()).toISOString();
  async function transaction<T>(fn:(db:HumanSql)=>Promise<T>):Promise<T>{
    const db=await o.pool.connect();
    try{
      await db.query('BEGIN');
      const result=await fn(db);
      await db.query('COMMIT');
      return result
    }
    catch(e){
      await db.query('ROLLBACK');
      throw e
    }
    finally{
      db.release()
    }
  }
  async function lock(db:HumanSql,a:Actor,others:string[]=[]){
    await db.query('SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id=ANY($2::text[]) ORDER BY user_id FOR UPDATE',[a.tenantId,[...new Set([a.userId,...others])].sort()]);
  }
  async function privacy(db:HumanSql,a:Actor){
    const r=await db.query('SELECT value FROM talks.human_privacy WHERE tenant_id=$1 AND user_id=$2',[a.tenantId,a.userId]);
    return {
      ...defaults,...(r.rows[0]?.value as object??{
      }
      )
    }
  }
  async function peer(db:HumanSql,a:Actor,user:string){
    const r=await db.query(`SELECT p.* FROM talks.public_profiles p JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id WHERE p.tenant_id=$1 AND p.user_id=$2 AND u.state='active' AND EXISTS(SELECT 1 FROM identity.users me WHERE me.tenant_id=$1 AND me.user_id=$3 AND me.state='active') AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences b WHERE b.tenant_id=$1 AND b.blocked AND ((b.viewer_user_id=$3 AND b.subject_user_id=$2) OR(b.viewer_user_id=$2 AND b.subject_user_id=$3))) AND NOT EXISTS(SELECT 1 FROM talks.safety_enforcement s WHERE s.tenant_id=$1 AND s.target_kind='profile' AND (s.target_id=p.handle OR s.target_id IN(SELECT me.handle FROM talks.public_profiles me WHERE me.tenant_id=$1 AND me.user_id=$3)) AND s.visibility<>'public')`,[a.tenantId,user,a.userId]);
    if(!r.rows[0])fail(404,'Person unavailable');
    return r.rows[0] as Row
  }
  const publicPeer=(p:Row)=>({
    handle:p.handle,displayName:p.display_name,avatarUrl:p.avatar_url
  }
  );
  async function findPeer(db:HumanSql,a:Actor,handle:unknown){
    const r=await db.query('SELECT user_id FROM talks.public_profiles WHERE tenant_id=$1 AND handle=$2',[a.tenantId,str(handle).replace(/^@/,'')]);
    if(!r.rows[0])fail(404,'Person unavailable');
    const id=String(r.rows[0].user_id);
    if(id===a.userId)fail(400,'Cannot contact yourself');
    await peer(db,a,id);
    return id
  }
  async function allowed(db:HumanSql,a:Actor,target:string,kind:'messages'|'calls'){
    await peer(db,a,target);
    const p=await privacy(db,{
      ...a,userId:target
    }
    );
    if(p[kind]==='nobody')fail(403,'Privacy does not allow contact');
    if(p[kind]==='contacts'){
      const r=await db.query(`SELECT 1 FROM talks.follows WHERE tenant_id=$1 AND follower_user_id=$2 AND followed_user_id=$3 UNION ALL SELECT 1 FROM talks.human_conversations WHERE tenant_id=$1 AND state='accepted' AND low_user=LEAST($2,$3) AND high_user=GREATEST($2,$3)`,[a.tenantId,target,a.userId]);
      if(!r.rows.length)fail(403,'Contacts only')
    }
  }
  async function conversation(db:HumanSql,a:Actor,id:string){
    const r=await db.query('SELECT * FROM talks.human_conversations WHERE tenant_id=$1 AND id=$2 AND (low_user=$3 OR high_user=$3)',[a.tenantId,id,a.userId]);
    if(!r.rows[0])fail(404,'Conversation unavailable');
    const c=r.rows[0] as Row;
    await peer(db,a,c.low_user===a.userId?c.high_user:c.low_user);
    return c
  }
  async function idem(db:HumanSql,a:Actor,id:unknown,operation:string,payload:unknown,fn:()=>Promise<any>){
    const key=str(id);
    const fingerprint=createHash('sha256').update(JSON.stringify(payload)).digest('hex');
    const r=await db.query('SELECT * FROM talks.human_requests WHERE tenant_id=$1 AND user_id=$2 AND request_id=$3',[a.tenantId,a.userId,key]);
    if(r.rows[0]){
      if(r.rows[0].operation!==operation||r.rows[0].fingerprint!==fingerprint)fail(409,'Request ID reused');
      return r.rows[0].result
    }
    const result=await fn();
    await db.query('INSERT INTO talks.human_requests VALUES($1,$2,$3,$4,$5,$6)',[a.tenantId,a.userId,key,operation,fingerprint,JSON.stringify(result)]);
    return result
  }
  async function event(db:HumanSql,a:Actor,users:string[],type:string,conversationId:string|null,callId:string|null,push=false){
    for(const user of users){
      const r=await db.query('INSERT INTO talks.human_events(tenant_id,user_id,type,conversation_id,call_id,created_at) VALUES($1,$2,$3,$4,$5,$6) RETURNING sequence',[a.tenantId,user,type,conversationId,callId,now()]);
      if(push&&user!==a.userId)await db.query('INSERT INTO talks.human_outbox(id,tenant_id,user_id,sender_id,event_id,category,conversation_id,call_id,available_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)',[randomUUID(),a.tenantId,user,a.userId,String(r.rows[0]!.sequence),callId?'calls':'messages',conversationId,callId,now()])
    }
  }
  async function attachments(db:HumanSql,a:Actor,id:string){
    const r=await db.query('SELECT * FROM talks.human_media WHERE tenant_id=$1 AND message_id=$2',[a.tenantId,id]);
    return r.rows.map(mediaView)
  }
  function mediaView(m:Row){
    return {
      id:m.id,kind:m.kind,mimeType:m.mime_type,name:m.name,sizeBytes:m.size_bytes,...(m.duration_ms===null?{
      }
      :{
        durationMs:m.duration_ms
      }
      )
    }
  }
  async function messageView(db:HumanSql,a:Actor,m:Row){
    return {
      id:m.id,requestId:m.request_id,conversationId:m.conversation_id,mine:m.user_id===a.userId,text:m.deleted?'':m.text,createdAt:iso(m.created_at),deleted:m.deleted,deliveryStatus:m.read_at?'read':m.delivered_at?'delivered':'sent',replyToId:m.deleted?null:m.reply_to_id,attachments:m.deleted?[]:await attachments(db,a,m.id)
    }
  }
  async function conversationView(db:HumanSql,a:Actor,c:Row){
    const p=await peer(db,a,c.low_user===a.userId?c.high_user:c.low_user);
    const v=(await db.query('SELECT * FROM talks.human_viewers WHERE tenant_id=$1 AND conversation_id=$2 AND user_id=$3',[a.tenantId,c.id,a.userId])).rows[0]??{
    }
    ;
    const last=(await db.query('SELECT * FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 ORDER BY created_at DESC,id DESC LIMIT 1',[a.tenantId,c.id])).rows[0];
    const unread=await db.query('SELECT count(*)::int AS n FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND user_id<>$3 AND NOT deleted AND ($4::timestamptz IS NULL OR created_at>$4)',[a.tenantId,c.id,a.userId,v.read_at??null]);
    return {
      id:c.id,peer:publicPeer(p),state:c.state,initiator:c.initiator===a.userId,unreadCount:unread.rows[0]!.n,updatedAt:iso(c.updated_at),lastMessage:last?await messageView(db,a,last):null,pinned:v.pinned??false,archived:v.archived??false,muted:v.muted??false
    }
  }
  async function call(db:HumanSql,a:Actor,id:string){
    const r=await db.query('SELECT * FROM talks.human_calls WHERE tenant_id=$1 AND id=$2 AND (caller=$3 OR recipient=$3)',[a.tenantId,id,a.userId]);
    if(!r.rows[0])fail(404,'Call unavailable');
    const c=r.rows[0] as Row;
    await peer(db,a,c.caller===a.userId?c.recipient:c.caller);
    return c
  }
  async function callView(db:HumanSql,a:Actor,c:Row){
    return {
      id:c.id,peer:publicPeer(await peer(db,a,c.caller===a.userId?c.recipient:c.caller)),direction:c.caller===a.userId?'outgoing':'incoming',state:c.state,createdAt:iso(c.created_at),answeredAt:iso(c.answered_at),endedAt:iso(c.ended_at),expiresAt:iso(c.expires_at)
    }
  }
  async function terminal(db:HumanSql,a:Actor,c:Row,state:string){
    await db.query('UPDATE talks.human_calls SET state=$3,ended_at=$4,teardown_pending=true WHERE tenant_id=$1 AND id=$2',[a.tenantId,c.id,state,now()]);
    c.state=state;
    c.ended_at=now();
    await event(db,a,[c.caller,c.recipient],'call.updated',null,c.id)
  }
  async function dispatch(a:Actor,method:string,path:string,b:Row={
  }
  ,q:Row={
  }
  ):Promise<any>{
    return transaction(async db=>{
      const pathParts=path.split('/').filter(Boolean);
      let participants:string[]=[];
      if(pathParts[0]==='conversations'&&pathParts[1]){
        const pair=(await db.query('SELECT low_user,high_user FROM talks.human_conversations WHERE tenant_id=$1 AND id=$2',[a.tenantId,pathParts[1]])).rows[0];
        if(pair)participants=[String(pair.low_user),String(pair.high_user)]
      }
      else if(pathParts[0]==='calls'&&pathParts[1]&&pathParts[1]!=='incoming'){
        const pair=(await db.query('SELECT caller,recipient FROM talks.human_calls WHERE tenant_id=$1 AND id=$2',[a.tenantId,pathParts[1]])).rows[0];
        if(pair)participants=[String(pair.caller),String(pair.recipient)]
      }
      else if(b.handle||pathParts[1]==='blocked'){
        const handle=typeof b.handle==='string'?b.handle.replace(/^@/,''):pathParts[2];
        if(handle){
          const target=(await db.query('SELECT user_id FROM talks.public_profiles WHERE tenant_id=$1 AND handle=$2',[a.tenantId,handle])).rows[0];
          if(target)participants=[String(target.user_id)]
        }
      }
      await lock(db,a,participants);
      const self=await db.query("SELECT 1 FROM identity.users WHERE tenant_id=$1 AND user_id=$2 AND state='active'",[a.tenantId,a.userId]);
      if(!self.rows.length)fail(401,'Account unavailable');
      const parts=path.split('/').filter(Boolean);
      const id=parts[1]??'';
      if(parts[0]==='profiles'&&parts[2]==='rooms'&&method==='GET'){
        const subject=(await db.query('SELECT user_id FROM talks.public_profiles WHERE tenant_id=$1 AND handle=$2',[a.tenantId,str(parts[1])])).rows[0];
        if(!subject)fail(404,'Person unavailable');
        const target=String(subject.user_id);
        await peer(db,a,target);
        const rooms=await db.query("SELECT r.room_id,r.profession_title FROM rooms.rooms r JOIN rooms.memberships viewer ON viewer.tenant_id=r.tenant_id AND viewer.room_id=r.room_id AND viewer.user_id=$2 AND viewer.state='active' JOIN rooms.memberships subject ON subject.tenant_id=r.tenant_id AND subject.room_id=r.room_id AND subject.user_id=$3 AND subject.state='active' WHERE r.tenant_id=$1 AND r.state='published' ORDER BY r.room_id LIMIT 50",[a.tenantId,a.userId,target]);
        return {
          items:rooms.rows.map(r=>({
            id:r.room_id,name:r.profession_title
          }
          ))
        }
      }
      if(parts[0]==='privacy'){
        if(parts[1]==='blocked'){
          if(method==='GET'){
            const r=await db.query('SELECT p.* FROM talks.safety_preferences b JOIN talks.public_profiles p ON p.tenant_id=b.tenant_id AND p.user_id=b.subject_user_id WHERE b.tenant_id=$1 AND b.viewer_user_id=$2 AND b.blocked',[a.tenantId,a.userId]);
            return {
              items:r.rows.map(publicPeer)
            }
          }
          if(typeof b.blocked!=='boolean')fail(400,'Invalid blocked value');
          const target=(await db.query('SELECT user_id FROM talks.public_profiles WHERE tenant_id=$1 AND handle=$2',[a.tenantId,str(parts[2])])).rows[0]?.user_id;
          if(!target||target===a.userId)fail(404,'Person unavailable');
          await db.query('INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at) VALUES($1,$2,$3,$4,$5) ON CONFLICT(tenant_id,viewer_user_id,subject_user_id) DO UPDATE SET blocked=$4,updated_at=$5',[a.tenantId,a.userId,target,b.blocked,now()]);
          const threads=await db.query('SELECT id FROM talks.human_conversations WHERE tenant_id=$1 AND low_user=LEAST($2,$3) AND high_user=GREATEST($2,$3)',[a.tenantId,a.userId,target]);for(const thread of threads.rows)await event(db,a,[a.userId,String(target)],'conversation.revoked',String(thread.id),null);
          if(b.blocked){
            const calls=await db.query("SELECT * FROM talks.human_calls WHERE tenant_id=$1 AND state IN ('ringing','accepted') AND ((caller=$2 AND recipient=$3) OR(caller=$3 AND recipient=$2))",[a.tenantId,a.userId,target]);
            for(const c of calls.rows){await terminal(db,a,c,'ended');await event(db,a,[String(c.caller),String(c.recipient)],'call.revoked',null,String(c.id))}
          }
          return {
            ok:true
          }
        }
        const p=await privacy(db,a);
        if(method==='PATCH'){
          for(const [key,value] of Object.entries(b)){
            if(!Object.hasOwn(defaults,key))fail(400,'Unknown privacy field');
            if(['readReceipts','presence'].includes(key)?typeof value!=='boolean':!['everyone','contacts','nobody'].includes(value))fail(400,'Invalid privacy value')
          }
          ;
          Object.assign(p,b);
          await db.query('INSERT INTO talks.human_privacy VALUES($1,$2,$3) ON CONFLICT(tenant_id,user_id) DO UPDATE SET value=$3',[a.tenantId,a.userId,JSON.stringify(p)])
        }
        return p;
      }
      if(parts[0]==='events'){
        const after=Number(q.after??0);
        if(!Number.isSafeInteger(after)||after<0)fail(400,'Invalid cursor');
        const r=await db.query('SELECT * FROM talks.human_events WHERE tenant_id=$1 AND user_id=$2 AND sequence>$3 ORDER BY sequence LIMIT 100',[a.tenantId,a.userId,after]);
        const items=[];
        for(const e of r.rows){
          try{
            if(e.conversation_id&&e.type!=='conversation.revoked')await conversation(db,a,String(e.conversation_id));
            if(e.call_id&&e.type!=='call.revoked')await call(db,a,String(e.call_id));
            items.push({
              sequence:Number(e.sequence),type:e.type,...(e.conversation_id?{
                conversationId:e.conversation_id
              }
              :{
              }
              ),...(e.call_id?{
                callId:e.call_id
              }
              :{
              }
              )
            }
            )
          }
          catch(e){
            if(![403,404].includes((e as any).statusCode))throw e
          }
        }
        return {
          items,cursor:r.rows.length?Number(r.rows.at(-1)!.sequence):after
        }
      }
      if(parts[0]==='calls'){
        if(!id&&method==='POST'){
          if(!o.mediaTokens)fail(503,'Voice calls unavailable');
          const target=await findPeer(db,a,b.handle);
          await allowed(db,a,target,'calls');
          return idem(db,a,b.requestId,'call',{
            handle:b.handle
          }
          ,async()=>{
            const busy=await db.query("SELECT 1 FROM talks.human_calls WHERE tenant_id=$1 AND state IN ('ringing','accepted') AND (caller IN ($2,$3) OR recipient IN ($2,$3))",[a.tenantId,a.userId,target]);
            const state=busy.rows.length?'busy':'ringing';
            const cid=randomUUID();
            await db.query('INSERT INTO talks.human_calls(tenant_id,id,caller,recipient,state,created_at,expires_at,caller_heartbeat,recipient_heartbeat,ended_at) VALUES($1,$2,$3,$4,$5,$6,$7,$6,$6,$8)',[a.tenantId,cid,a.userId,target,state,now(),new Date(Date.parse(now())+60000).toISOString(),state==='busy'?now():null]);
            await event(db,a,[a.userId,target],'call.updated',null,cid,state==='ringing');
            return callView(db,a,await call(db,a,cid))
          }
          )
        }
        if (!id || id === 'incoming') {
          const values: unknown[] = [a.tenantId, a.userId];
          let condition = '';
          if (id === 'incoming') {
            values.push(now());
            condition = "AND recipient=$2 AND state='ringing' AND expires_at>$3";
          } else if (q.after) {
            const anchor = await call(db, a, str(q.after));
            values.push(anchor.created_at, anchor.id);
            condition = 'AND (created_at,id)<($3,$4)';
          }
          const rows = await db.query(`SELECT * FROM talks.human_calls WHERE tenant_id=$1 AND (caller=$2 OR recipient=$2) ${condition} ORDER BY created_at DESC,id DESC`, values);
          const items = [];
          for (const row of rows.rows) {
            try { items.push(await callView(db, a, row)); }
            catch (error) { if (![403,404].includes((error as any).statusCode)) throw error; }
            if (items.length === 51) break;
          }
          return { items: items.slice(0,50), nextCursor: items.length > 50 ? items[49]!.id : null };
        }
        const c=await call(db,a,id);
        if((c.state==='ringing'&&Date.parse(iso(c.expires_at)!)<=Date.parse(now()))||(c.state==='accepted'&&Math.min(Date.parse(iso(c.caller_heartbeat)!),Date.parse(iso(c.recipient_heartbeat)!))<Date.parse(now())-120000))await terminal(db,a,c,c.state==='ringing'?'missed':'ended');
        if(parts[2]==='token'){
          if(c.state!=='accepted')fail(409,'Call is not accepted');
          if(!o.mediaTokens)fail(503,'Voice calls unavailable');
          await allowed(db,{
            ...a,userId:c.caller
          }
          ,c.recipient,'calls');
          return o.mediaTokens.mint({
            talkId:`human_${id}`,sessionId:id,userId:a.userId,role:'speaker',canPublishAudio:true
          }
          )
        }
        if(parts[2]==='heartbeat'){
          if(!['ringing','accepted'].includes(c.state))fail(409,'Call ended');
          await db.query(`UPDATE talks.human_calls SET ${c.caller===a.userId?'caller_heartbeat':'recipient_heartbeat'}=$3 WHERE tenant_id=$1 AND id=$2`,[a.tenantId,id,now()])
        }
        if(parts[2]==='transition'){
          const action=str(b.action);
          if(!['accept','decline','cancel','end'].includes(action))fail(400,'Invalid transition');
          if(['accept','decline'].includes(action)&&c.recipient!==a.userId)fail(403,'Recipient only');
          if(action==='cancel'&&c.caller!==a.userId)fail(403,'Caller only');
          const desired=({
            accept:'accepted',decline:'declined',cancel:'cancelled',end:'ended'
          } as Row)[action];
          if(c.state!==desired){
            if(!['ringing','accepted'].includes(c.state))fail(409,'Call already ended');
            if(action==='accept'){
              if(c.state!=='ringing')fail(409,'Call already answered');
              await allowed(db,{
                ...a,userId:c.caller
              }
              ,c.recipient,'calls');
              await db.query("UPDATE talks.human_calls SET state='accepted',answered_at=$3,caller_heartbeat=$3,recipient_heartbeat=$3 WHERE tenant_id=$1 AND id=$2",[a.tenantId,id,now()]);
              c.state='accepted';
              c.answered_at=now();
              await event(db,a,[c.caller,c.recipient],'call.updated',null,id)
            }
            else{
              if(action==='end'&&c.state!=='accepted')fail(409,'Call not accepted');
              if(action!=='end'&&c.state!=='ringing')fail(409,'Call already answered');
              await terminal(db,a,c,desired)
            }
          }
        }
        return callView(db,a,c);
      }
      if(parts[0]!=='conversations')fail(404,'Not found');
      if(!id){
        if(method==='POST'){
          const target=await findPeer(db,a,b.handle);
          await allowed(db,a,target,'messages');
          return idem(db,a,b.requestId,'conversation',{
            handle:b.handle
          }
          ,async()=>{
            const cid=randomUUID();
            await db.query('INSERT INTO talks.human_conversations VALUES($1,$2,LEAST($3,$4),GREATEST($3,$4),$3,\'pending\',$5) ON CONFLICT(tenant_id,low_user,high_user) DO NOTHING',[a.tenantId,cid,a.userId,target,now()]);
            const c=(await db.query('SELECT * FROM talks.human_conversations WHERE tenant_id=$1 AND low_user=LEAST($2,$3) AND high_user=GREATEST($2,$3)',[a.tenantId,a.userId,target])).rows[0]!;
            for(const user of [a.userId,target])await db.query('INSERT INTO talks.human_viewers(tenant_id,conversation_id,user_id) VALUES($1,$2,$3) ON CONFLICT DO NOTHING',[a.tenantId,c.id,user]);
            return conversationView(db,a,c)
          }
          )
        }
        const query=typeof q.query==='string'?q.query.toLowerCase():'';
        const r=await db.query(`SELECT c.* FROM talks.human_conversations c JOIN talks.human_viewers v ON v.tenant_id=c.tenant_id AND v.conversation_id=c.id AND v.user_id=$2 WHERE c.tenant_id=$1 AND (c.low_user=$2 OR c.high_user=$2) AND NOT v.hidden ${q.filter==='requests'?"AND c.state='pending' AND c.initiator<>$2":''} ORDER BY c.updated_at DESC,c.id DESC`,[a.tenantId,a.userId]);
        const items=[];
        let passed=!q.after;
        for(const c of r.rows){
          if(!passed){
            if(c.id===q.after)passed=true;
            continue
          }
          try{
            const view=await conversationView(db,a,c);
            if(!query||JSON.stringify(view.peer).toLowerCase().includes(query))items.push(view);
            if(items.length===51)break
          }
          catch(e){
            if(![403,404].includes((e as any).statusCode))throw e
          }
        }
        return {
          items:items.slice(0,50),nextCursor:items.length>50?items[49]!.id:null
        }
      }
      const c=await conversation(db,a,id);
      const target=c.low_user===a.userId?c.high_user:c.low_user;
      if(parts.length===2){
        if(method==='PATCH'){
          for(const [key,v] of Object.entries(b)){
            if(!['pinned','archived','muted'].includes(key)||typeof v!=='boolean')fail(400,'Invalid conversation preference');
            await db.query(`UPDATE talks.human_viewers SET ${key}=$4 WHERE tenant_id=$1 AND conversation_id=$2 AND user_id=$3`,[a.tenantId,id,a.userId,v])
          }
        }
        return conversationView(db,a,c)
      }
      if(parts[2]==='decision'){
        return idem(db,a,b.requestId,'decision',{
          id,action:b.action
        }
        ,async()=>{
          if(!['accept','delete','block'].includes(b.action))fail(400,'Invalid decision');
          if(c.initiator===a.userId)fail(403,'Recipient only');
          const prior=await conversationView(db,a,c);
          if(c.state!=='pending'&&!(c.state==='accepted'&&b.action==='accept'))fail(409,'Request already decided');
          if(b.action==='accept'){
            if(c.state==='declined')fail(409,'Request declined');
            c.state='accepted';
            await db.query("UPDATE talks.human_conversations SET state='accepted',updated_at=$3 WHERE tenant_id=$1 AND id=$2",[a.tenantId,id,now()])
          }
          else{
            c.state='declined';
            await db.query("UPDATE talks.human_conversations SET state='declined',updated_at=$3 WHERE tenant_id=$1 AND id=$2",[a.tenantId,id,now()]);
            await db.query('UPDATE talks.human_viewers SET hidden=true WHERE tenant_id=$1 AND conversation_id=$2 AND user_id=$3',[a.tenantId,id,a.userId]);
            if(b.action==='block')await db.query('INSERT INTO talks.safety_preferences(tenant_id,viewer_user_id,subject_user_id,blocked,updated_at) VALUES($1,$2,$3,true,$4) ON CONFLICT(tenant_id,viewer_user_id,subject_user_id) DO UPDATE SET blocked=true,updated_at=$4',[a.tenantId,a.userId,target,now()])
          }
          await event(db,a,[a.userId,target],'conversation.updated',id,null);
          if(b.action==='block'){
            const active=await db.query("SELECT * FROM talks.human_calls WHERE tenant_id=$1 AND state IN ('ringing','accepted') AND ((caller=$2 AND recipient=$3) OR(caller=$3 AND recipient=$2))",[a.tenantId,a.userId,target]);
            for(const activeCall of active.rows)await terminal(db,a,activeCall,'ended');
            await event(db,a,[a.userId,target],'conversation.revoked',id,null);return {
              ...prior,state:'declined'
            }
          }
          return conversationView(db,a,c)
        }
        )
      }
      if(parts[2]==='media'){
        if(method==='POST'){
          await allowed(db,a,target,'messages');
          return idem(db,a,b.requestId,'media',{
            id,...b
          }
          ,async()=>{
            if (c.state === 'declined' || (c.state === 'pending' && c.initiator !== a.userId)) fail(403,'Accept request before uploading');
            if (c.state === 'pending') {
              const submitted = await db.query('SELECT 1 FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2',[a.tenantId,id]);
              if (submitted.rows.length) fail(409,'Wait for request acceptance');
            }
            const orphaned = await db.query('SELECT count(*)::int AS count,COALESCE(sum(size_bytes),0)::bigint AS bytes FROM talks.human_media WHERE tenant_id=$1 AND user_id=$2 AND message_id IS NULL',[a.tenantId,a.userId]);
            if (Number(orphaned.rows[0]?.count) >= 20 || Number(orphaned.rows[0]?.bytes) >= 50000000) fail(429,'Unsent attachment limit reached');
            const kind=str(b.kind),mime=str(b.mimeType),name=str(b.name,180);
            const data=str(b.dataBase64,28000000);
            if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(data))fail(400,'Invalid base64');
            const bytes=Buffer.from(data,'base64');
            if(!bytes.length||bytes.length>20000000)fail(400,'Media too large');if(Number(orphaned.rows[0]?.bytes)+bytes.length>50000000)fail(429,'Unsent attachment limit reached');
            const signature=bytes.subarray(0,16);
            const valid=(kind==='image'&&((mime==='image/png'&&signature.subarray(0,8).equals(Buffer.from([137,80,78,71,13,10,26,10])))||(mime==='image/jpeg'&&signature[0]===255&&signature[1]===216&&signature[2]===255)||(mime==='image/webp'&&signature.toString('ascii',0,4)==='RIFF'&&signature.toString('ascii',8,12)==='WEBP')))||(kind==='doc'&&mime==='application/pdf'&&signature.toString('ascii',0,5)==='%PDF-')||(kind==='video'&&mime==='video/mp4'&&signature.toString('ascii',4,8)==='ftyp')||(kind==='voice'&&((['audio/mp4','audio/m4a','audio/aac'].includes(mime)&&signature.toString('ascii',4,8)==='ftyp')||(mime==='audio/ogg'&&signature.toString('ascii',0,4)==='OggS')||(mime==='audio/webm'&&signature.subarray(0,4).equals(Buffer.from([26,69,223,163])))));
            if(!valid)fail(400,'Unsupported media signature');
            if(b.durationMs!==undefined&&(!Number.isInteger(b.durationMs)||b.durationMs<1||b.durationMs>600000))fail(400,'Invalid duration');
            const mid=randomUUID();
            await db.query('INSERT INTO talks.human_media(tenant_id,id,conversation_id,user_id,message_id,kind,mime_type,name,size_bytes,duration_ms,data_base64) VALUES($1,$2,$3,$4,NULL,$5,$6,$7,$8,$9,$10)',[a.tenantId,mid,id,a.userId,kind,mime,name,bytes.length,b.durationMs??null,data]);
            return mediaView((await db.query('SELECT * FROM talks.human_media WHERE tenant_id=$1 AND id=$2',[a.tenantId,mid])).rows[0]!)
          }
          )
        }
        const m=(await db.query('SELECT m.* FROM talks.human_media m LEFT JOIN talks.human_messages x ON x.tenant_id=m.tenant_id AND x.id=m.message_id WHERE m.tenant_id=$1 AND m.id=$2 AND m.conversation_id=$3 AND ((m.user_id=$4 AND m.message_id IS NULL) OR (x.id IS NOT NULL AND NOT x.deleted))',[a.tenantId,parts[3],id,a.userId])).rows[0];
        if(!m)fail(404,'Media unavailable');
        return {
          ...mediaView(m),dataBase64:m.data_base64
        }
        ;
      }
      if(parts[2]==='read'){
        const m=(await db.query('SELECT * FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND id=$3 AND NOT deleted',[a.tenantId,id,str(b.messageId)])).rows[0];
        if(!m)fail(404,'Message unavailable');
        await db.query('UPDATE talks.human_viewers SET read_at=GREATEST(COALESCE(read_at,$4),$4) WHERE tenant_id=$1 AND conversation_id=$2 AND user_id=$3',[a.tenantId,id,a.userId,m.created_at]);
        if((await privacy(db,a)).readReceipts){
          const changed=await db.query('UPDATE talks.human_messages SET read_at=$4 WHERE tenant_id=$1 AND conversation_id=$2 AND user_id<>$3 AND created_at<=$5 AND NOT deleted AND read_at IS NULL RETURNING id',[a.tenantId,id,a.userId,now(),m.created_at]);
          if(changed.rows.length)await event(db,a,[target],'messages.read',id,null)
        }
        return {
          ok:true
        }
      }
      if(parts[2]!=='messages')fail(404,'Not found');
      if(parts[3]){
        const m=(await db.query('SELECT * FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND id=$3',[a.tenantId,id,parts[3]])).rows[0];
        if(!m)fail(404,'Message unavailable');
        if(parts[4]==='report')return idem(db,a,b.requestId,'report',{
          id,messageId:m.id,reason:b.reason
        }
        ,async()=>{
          await db.query('INSERT INTO talks.human_reports VALUES($1,$2,$3,$4,$5,$6)',[a.tenantId,randomUUID(),a.userId,m.id,str(b.reason,2000),now()]);
          return {
            ok:true
          }
        }
        );
        if(method!=='DELETE')fail(404,'Not found');
        if(m.user_id!==a.userId)fail(403,'Sender only');
        await db.query("UPDATE talks.human_messages SET text='',deleted=true,reply_to_id=NULL WHERE tenant_id=$1 AND id=$2",[a.tenantId,m.id]);
        await db.query("UPDATE talks.human_media SET data_base64='' WHERE tenant_id=$1 AND message_id=$2",[a.tenantId,m.id]);await db.query("UPDATE talks.human_requests SET result=jsonb_set(result,'{lastMessage}',(result->'lastMessage') || '{\"deleted\":true,\"text\":\"\",\"attachments\":[],\"replyToId\":null}'::jsonb) WHERE tenant_id=$1 AND result->'lastMessage'->>'id'=$2",[a.tenantId,m.id]);
        await db.query("UPDATE talks.human_requests SET result=result || '{\"deleted\":true,\"text\":\"\",\"attachments\":[],\"replyToId\":null}'::jsonb WHERE tenant_id=$1 AND operation='message' AND result->>'id'=$2",[a.tenantId,m.id]);
        await event(db,a,[a.userId,target],'message.deleted',id,null);
        return {
          ok:true
        }
      }
      if(method==='POST'){
        await allowed(db,a,target,'messages');
        return idem(db,a,b.requestId,'message',{
          id,...b
        }
        ,async()=>{
          if(c.state==='declined')fail(403,'Request declined');
          if(c.state==='pending'){
            if(c.initiator!==a.userId)fail(403,'Accept request before replying');
            const count=await db.query('SELECT 1 FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2',[a.tenantId,id]);
            if(count.rows.length)fail(409,'Wait for request acceptance')
          }
          const text=typeof b.text==='string'?b.text.trim():'';
          if(text.length>10000||!Array.isArray(b.attachments??[]))fail(400,'Invalid message');
          const refs=b.attachments??[];
          if(refs.length>10||(!text&&!refs.length))fail(400,'Empty or oversized message');
          if(b.replyToId){
            const reply=await db.query('SELECT 1 FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND id=$3 AND NOT deleted',[a.tenantId,id,str(b.replyToId)]);
            if(!reply.rows.length)fail(404,'Reply unavailable')
          }
          const mid=randomUUID();
          for(const ref of refs){
            if(!ref||typeof ref!=='object')fail(400,'Invalid attachment');
            const media=await db.query('SELECT 1 FROM talks.human_media WHERE tenant_id=$1 AND id=$2 AND conversation_id=$3 AND user_id=$4 AND message_id IS NULL',[a.tenantId,str(ref.id),id,a.userId]);
            if(!media.rows.length)fail(403,'Attachment unavailable');
            await db.query('UPDATE talks.human_media SET message_id=$3 WHERE tenant_id=$1 AND id=$2',[a.tenantId,ref.id,mid])
          }
          await db.query('INSERT INTO talks.human_messages(tenant_id,id,conversation_id,user_id,request_id,text,reply_to_id,created_at) VALUES($1,$2,$3,$4,$5,$6,$7,$8)',[a.tenantId,mid,id,a.userId,b.requestId,text,b.replyToId??null,now()]);
          await db.query('UPDATE talks.human_conversations SET updated_at=$3 WHERE tenant_id=$1 AND id=$2',[a.tenantId,id,now()]);
          await event(db,a,[a.userId,target],'message.created',id,null,true);
          return messageView(db,a,(await db.query('SELECT * FROM talks.human_messages WHERE tenant_id=$1 AND id=$2',[a.tenantId,mid])).rows[0]!)
        }
        )
      }
      const query=typeof q.query==='string'?q.query:'';
      const params:unknown[]=[a.tenantId,id,query];
      let cursor='';
      if(q.before){
        const before=(await db.query('SELECT created_at,id FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND id=$3',[a.tenantId,id,str(q.before)])).rows[0];
        if(!before)fail(400,'Invalid cursor');
        params.push(before.created_at,before.id);
        cursor='AND (created_at,id)<($4,$5)'
      }
      const r=await db.query(`SELECT * FROM talks.human_messages WHERE tenant_id=$1 AND conversation_id=$2 AND ($3='' OR position(lower($3) in lower(text))>0) ${cursor} ORDER BY created_at DESC,id DESC LIMIT 51`,params);
      const page=r.rows.slice(0,50);
      if(page.length){
        const delivered=await db.query('UPDATE talks.human_messages SET delivered_at=$4 WHERE tenant_id=$1 AND conversation_id=$2 AND user_id<>$3 AND delivered_at IS NULL AND id=ANY($5::text[]) RETURNING id',[a.tenantId,id,a.userId,now(),page.map(m=>m.id)]);
        if(delivered.rows.length)await event(db,a,[target],'messages.delivered',id,null)
      }
      return {
        items:await Promise.all(page.reverse().map(m=>messageView(db,a,m))),nextCursor:r.rows.length>50?page[0]!.id:null
      }
      ;
    }
    )
  }
  async function recover(){
    await o.pool.query("DELETE FROM talks.human_media WHERE message_id IS NULL AND created_at<$1",[new Date(Date.parse(now())-86400000).toISOString()]);
    const active=await o.pool.query("SELECT * FROM talks.human_calls WHERE state IN ('ringing','accepted') ORDER BY tenant_id,id");
    for(const c of active.rows){
      await transaction(async db=>{
        const actor={
          tenantId:String(c.tenant_id),userId:String(c.caller)
        }
        ;
        await lock(db,actor,[String(c.recipient)]);
        const fresh=(await db.query('SELECT * FROM talks.human_calls WHERE tenant_id=$1 AND id=$2',[c.tenant_id,c.id])).rows[0]!;
        if(!['ringing','accepted'].includes(String(fresh.state)))return;
        let revoked=false;
        try{
          await allowed(db,actor,String(c.recipient),'calls')
        }
        catch(e){
          if([401,403,404].includes((e as any).statusCode))revoked=true;
          else throw e
        }
        const expired=fresh.state==='ringing'?Date.parse(iso(fresh.expires_at)!)<=Date.parse(now()):Math.min(Date.parse(iso(fresh.caller_heartbeat)!),Date.parse(iso(fresh.recipient_heartbeat)!))<=Date.parse(now())-120000;
        if(revoked||expired){await terminal(db,actor,fresh,revoked?'ended':fresh.state==='ringing'?'missed':'ended');if(revoked)await event(db,actor,[String(fresh.caller),String(fresh.recipient)],'call.revoked',null,String(fresh.id))}
      }
      );
    }
    const teardown=await o.pool.query('SELECT * FROM talks.human_calls WHERE teardown_pending');
    for(const c of teardown.rows){
      try{
        if(o.endMediaRoom)await o.endMediaRoom(`human_${c.id}`);
        else if(o.mediaTokens)continue;
        await o.pool.query('UPDATE talks.human_calls SET teardown_pending=false WHERE tenant_id=$1 AND id=$2',[c.tenant_id,c.id])
      }
      catch{
      }
    }
    if(!o.push)return;
    const rows=await o.pool.query(`UPDATE talks.human_outbox SET lease_until=$2,attempts=attempts+1 WHERE id IN (SELECT id FROM talks.human_outbox WHERE sent_at IS NULL AND available_at<=$1 AND (lease_until IS NULL OR lease_until<$1) ORDER BY available_at LIMIT 50 FOR UPDATE SKIP LOCKED) RETURNING *`,[now(),new Date(Date.parse(now())+60000).toISOString()]);
    for(const item of rows.rows){
      try{
        const a={
          tenantId:String(item.tenant_id),userId:String(item.sender_id)
        }
        ;
        await allowed(o.pool,a,String(item.user_id),item.category==='calls'?'calls':'messages');
        if(item.conversation_id){
          await conversation(o.pool,a,String(item.conversation_id));
          const muted=await o.pool.query('SELECT muted,hidden FROM talks.human_viewers WHERE tenant_id=$1 AND conversation_id=$2 AND user_id=$3',[item.tenant_id,item.conversation_id,item.user_id]);
          if(muted.rows[0]?.muted||muted.rows[0]?.hidden)fail(403,'Muted')
        }
        if(item.call_id){
          const c=await call(o.pool,a,String(item.call_id));
          if(c.state!=='ringing')fail(403,'Call expired')
        }
        await o.push({
          tenantId:a.tenantId,userId:String(item.user_id),eventId:String(item.event_id),category:item.category==='calls'?'calls':'messages',title:item.category==='calls'?'Incoming call':'New message',body:item.category==='calls'?'Someone is calling you':'Open your conversation',deepLink:item.call_id?`/human/call/${item.call_id}`:`/human/chat/${item.conversation_id}`,urgent:item.category==='calls'
        }
        );
        await o.pool.query('UPDATE talks.human_outbox SET sent_at=$2,lease_until=NULL WHERE id=$1',[item.id,now()])
      }
      catch(e){
        if([403,404].includes((e as any).statusCode))await o.pool.query('UPDATE talks.human_outbox SET sent_at=$2,lease_until=NULL WHERE id=$1',[item.id,now()]);
        else await o.pool.query('UPDATE talks.human_outbox SET lease_until=NULL,available_at=$2 WHERE id=$1',[item.id,new Date(Date.parse(now())+Math.min(3600000,1000*2**Math.min(Number(item.attempts),12))).toISOString()])
      }
    }
  }
  return {
    authorize:o.authorizer.authorize.bind(o.authorizer),dispatch,recover,async close(){
    }
  }
};
export type HumanCommunicationService=ReturnType<typeof createHumanCommunicationService>;
export function registerHumanCommunicationRoutes(app:FastifyInstance,service:HumanCommunicationService){
 const streams=new Set<import("node:http").ServerResponse>();
 app.addHook("preClose",async()=>{for(const response of streams)response.end();streams.clear()});
  app.route({
    method:['GET','POST','PATCH','PUT','DELETE'],url:'/v1/human/*',bodyLimit:29000000,handler:async(req,reply)=>{
      reply.header('Cache-Control','private, no-store');
      const a=await service.authorize({
        authorizationHeader:req.headers.authorization
      }
      );
      const path=(req.params as {
        '*':string
      }
      )['*'];
      const query=(req.query??{
      }
      ) as Row;
      if(path==='events/stream'){
        await service.dispatch(a,'GET','events',{
        }
        ,query);
        reply.hijack();
        streams.add(reply.raw);reply.raw.on("close",()=>streams.delete(reply.raw));
        reply.raw.writeHead(200,{
          'Content-Type':'text/event-stream','Cache-Control':'private, no-store','Connection':'keep-alive'
        }
        );
        let cursor=Number(query.after??0),busy=false;
        const poll=async()=>{
          if(busy||reply.raw.destroyed)return;
          busy=true;
          try{
            const current=await service.authorize({
              authorizationHeader:req.headers.authorization
            }
            );
            if(current.tenantId!==a.tenantId||current.userId!==a.userId)fail(401,'Session changed');
            const page=await service.dispatch(a,'GET','events',{
            }
            , {
              after:cursor
            }
            );
            for(const e of page.items)reply.raw.write(`id: ${e.sequence}\ndata: ${JSON.stringify(e)}\n\n`);
            cursor=page.cursor;
            reply.raw.write(': heartbeat\n\n')
          }
          catch{
            reply.raw.end()
          }
          finally{
            busy=false
          }
        }
        ;
        const timer=setInterval(()=>void poll(),2000);
        timer.unref();
        reply.raw.on('close',()=>clearInterval(timer));
        await poll();
        return
      }
      return service.dispatch(a,req.method,path,(req.body??{
      }
      ) as Row,query)
    }
  }
  );
}
