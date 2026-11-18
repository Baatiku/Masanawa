import {describe,expect,it,vi} from 'vitest';
import {createWhatsAppWorker} from './whatsapp.js';

const row={job_id:'job-1',kind:'reply',message_id:'message-1',tenant_id:'tenant-1',channel_id:'channel-1',
  thread_id:'thread-1',customer_wa_id:'2348012345678@s.whatsapp.net',mode:'ai',body:'Hello',direction:'inbound',
  message_kind:'text',reply_to_message_id:null,media_payload_ciphertext:null,
  inbound_created_at:'2026-11-18T08:00:00Z',last_human_reply_at:null,last_away_notice_at:null,
  welcome_sent_at:null,account_match:'unregistered',memory_summary:'',memory_updated_at:null,
  verified_contact_name:'',number_purpose:'service',owner_name:'',owner_title:'',
  enabled:true,state:'connected',assistant_name:'Assistant',personality:'Helpful',instructions:'',greeting:'Welcome',language:'en',
  permissions:['greet','faq'],role_level:1,text_replies:true,voice_replies:false,transcribe_voice:false,voice_id:null,
  reply_mode:'always',away_after_seconds:120,absence_message:'I am away',remember_context:true,
  escalation_keywords:['human'],last_message_at:'2026-11-18T08:00:00Z',
  working_hours:{timezone:'Africa/Lagos',days:[0,1,2,3,4,5,6],start:'00:00',end:'23:59'},
};

function setup(overrides:Record<string,unknown>,options:{env?:Record<string,string>;fetch?:typeof fetch}={}){
  const calls:{sql:string;parameters:unknown[]}[]=[];
  const pool={query:async(sql:string,params:unknown[]=[])=>{
    calls.push({sql,parameters:params});
    if(sql.includes('RETURNING j.job_id'))return {rows:[{job_id:'job-1'}]};
    if(sql.includes('SELECT j.job_id,j.kind'))return {rows:[{...row,...overrides}]};
    if(sql.includes('created_at>$3'))return {rows:[]};
    if(sql.includes('count(*)::int'))return {rows:[{count:1}]};
    return {rows:[]};
  }};
  const send=vi.fn(async()=> 'wa-receipt');
  const sendVoice=vi.fn(async()=> 'wa-voice-receipt');
  return {calls,send,sendVoice,worker:createWhatsAppWorker({pool:pool as never,env:options.env??{},
    ...(options.fetch?{fetch:options.fetch}:{}),send,sendVoice})};
}

describe('WhatsApp availability and owner takeover',()=>{
  it('never starts AI generation in manual/off mode',async()=>{
    const mock=setup({reply_mode:'manual'});
    await mock.worker.runOnce();
    expect(mock.send).not.toHaveBeenCalled();
    expect(mock.calls.some(c=>c.sql.includes("SET state=$2,last_error_code")&&c.parameters[1]==='completed')).toBe(true);
  });
  it('cancels away-mode AI when the real owner has replied since the customer message',async()=>{
    const mock=setup({reply_mode:'away',last_human_reply_at:'2026-11-18T08:00:30Z'});
    await mock.worker.runOnce();
    expect(mock.calls.some(c=>c.parameters.includes('owner_replied'))).toBe(true);
    expect(mock.calls.some(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'))).toBe(false);
  });
  it('responds to a first-time contact without duplicating a welcome or advertising signup',async()=>{
    const mock=setup({body:'Hi'});
    await mock.worker.runOnce();
    const outgoing=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'));
    expect(outgoing).toBeDefined();
    expect(outgoing!.parameters[3]).toContain('I am Assistant');
    expect(outgoing!.parameters[3]).not.toContain('Welcome');
    expect(outgoing!.parameters[3]).not.toContain('https://app.masanawa.com');
    expect(mock.send).not.toHaveBeenCalled(); // queued for the outbox
  });
  it('queues a safe customer reply and a precise error code when Gemini rejects the request',async()=>{
    const provider=vi.fn(async()=>new Response('',{status:429})) as unknown as typeof fetch;
    const mock=setup({body:'What does Masanawa offer?',account_match:'registered'},
      {env:{MASANAWA_GEMINI_API_KEY:'test-key'},fetch:provider});
    await mock.worker.runOnce();
    expect(provider).toHaveBeenCalledOnce();
    expect(provider).toHaveBeenCalledWith(expect.stringContaining('/models/gemini-3.8-flash:generateContent'),
      expect.any(Object));
    const outgoing=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'));
    expect(outgoing?.parameters[3]).toContain('I received your message');
    expect(mock.calls.some(c=>c.sql.includes('last_error_code=$2')&&
      c.parameters.includes('gemini_quota_exceeded'))).toBe(true);
    expect(mock.calls.some(c=>c.parameters.includes('reply_generation_unavailable'))).toBe(false);
  });
  it('introduces the assistant after the configured unanswered delay',async()=>{
    const mock=setup({reply_mode:'away',account_match:'registered',body:'Hello'});
    await mock.worker.runOnce();
    const outgoing=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'));
    expect(outgoing).toBeDefined();
    expect(outgoing!.parameters[3]).not.toContain('I am away');
    expect(mock.calls.some(c=>c.sql.includes('last_away_notice_at=clock_timestamp()'))).toBe(true);
  });
  it('lets Gemini compose one coherent personal-number salam without a Masanawa welcome',async()=>{
    const provider=vi.fn(async(_url:unknown,_init?:RequestInit)=>Response.json({candidates:[{content:{parts:[{text:
      'Wa alaikum assalam. I am Hassan, helping Bello with messages. How may I assist?'}]}}]}));
    const mock=setup({body:'Salam',number_purpose:'personal',owner_name:'Bello Abubakar',owner_title:'Founder',
      greeting:'Welcome to Masanawa. How may I help you?',account_match:'unregistered'},
    {env:{MASANAWA_GEMINI_API_KEY:'test-key'},fetch:provider as unknown as typeof fetch});
    await mock.worker.runOnce();
    expect(provider).toHaveBeenCalledOnce();
    const request=provider.mock.calls[0]![1] as RequestInit;
    const payload=JSON.parse(String(request.body));
    const prompt=String(payload.systemInstruction.parts[0].text);
    expect(prompt).toContain('personal WhatsApp number of Bello Abubakar, Founder');
    expect(prompt).toContain('do not advertise Masanawa');
    expect(prompt).not.toContain('Optional personal greeting guidance: "Welcome to Masanawa');
    expect(prompt).toContain('no verified name');
    const outgoing=mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'));
    expect(outgoing?.parameters[3]).toBe('Wa alaikum assalam. I am Hassan, helping Bello with messages. How may I assist?');
    expect(outgoing?.parameters[3]).not.toContain('https://app.masanawa.com');
  });
  it('continues returning conversations with only an administrator-verified name',async()=>{
    const provider=vi.fn(async(_url:unknown,_init?:RequestInit)=>Response.json({candidates:[{content:{parts:[{text:'Certainly, Amina. Here is the answer.'}]}}]}));
    const mock=setup({body:'Can you clarify?',welcome_sent_at:'2026-11-17T12:00:00Z',
      verified_contact_name:'Amina',number_purpose:'personal',owner_name:'Bello Abubakar'},
    {env:{MASANAWA_GEMINI_API_KEY:'test-key'},fetch:provider as unknown as typeof fetch});
    await mock.worker.runOnce();
    const prompt=String(JSON.parse(String((provider.mock.calls[0]![1] as RequestInit).body)).systemInstruction.parts[0].text);
    expect(prompt).toContain('confirmed by an administrator as "Amina"');
    expect(prompt).toContain('do not introduce yourself');
    expect(prompt).toContain('Do not claim that they are offline or away');
    expect(mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'))?.parameters[3])
      .toBe('Certainly, Amina. Here is the answer.');
  });
  it('preserves a delayed reply during a temporary linked-device reconnection',async()=>{
    const mock=setup({reply_mode:'away',state:'degraded'});
    await mock.worker.runOnce();
    expect(mock.calls.some(c=>c.sql.includes("THEN 'failed' ELSE 'pending'")&&
      c.parameters.includes('linked_socket_reconnecting'))).toBe(true);
    expect(mock.calls.some(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'))).toBe(false);
  });
  it('requeues a definitely unsent outbound message when the socket is not ready',async()=>{
    const mock=setup({kind:'send',direction:'outbound',reply_to_message_id:'message-0'});
    mock.send.mockRejectedValueOnce(Error('whatsapp_linked_socket_unavailable'));
    await mock.worker.runOnce();
    expect(mock.calls.some(c=>c.sql.includes("THEN 'failed' ELSE 'pending'")&&
      c.parameters.includes('whatsapp_linked_socket_unavailable'))).toBe(true);
    expect(mock.calls.some(c=>c.parameters.includes('linked_send_outcome_unknown'))).toBe(false);
  });
  it('holds genuinely ambiguous send outcomes for reconciliation, never automatic replay',async()=>{
    const mock=setup({kind:'send',direction:'outbound',reply_to_message_id:'message-0'});
    mock.send.mockRejectedValueOnce(Error('whatsapp_send_receipt_unknown'));
    await mock.worker.runOnce();
    expect(mock.calls.some(c=>c.parameters.includes('linked_send_outcome_unknown'))).toBe(true);
    expect(mock.calls.some(c=>c.sql.includes("THEN 'failed' ELSE 'pending'"))).toBe(false);
  });
  it('allows Gemini up to 45 seconds instead of cancelling 17.5-second responses',async()=>{
    const provider=vi.fn(async()=>Response.json({candidates:[{content:{parts:[{text:'Wa alaikum assalam.'}]}}]}));
    const timer=vi.spyOn(AbortSignal,'timeout');
    try{
      const mock=setup({body:'Salam',number_purpose:'personal',owner_name:'Bello'},
        {env:{MASANAWA_GEMINI_API_KEY:'test-key'},fetch:provider as unknown as typeof fetch});
      await mock.worker.runOnce();
      expect(timer).toHaveBeenCalledWith(45000);
      expect(mock.calls.find(c=>c.sql.includes('INSERT INTO security.whatsapp_messages'))?.parameters[3])
        .toBe('Wa alaikum assalam.');
    }finally{timer.mockRestore();}
  });
  it('backs off an unsent audio reply when provider quota is exhausted',async()=>{
    const mock=setup({kind:'send',direction:'outbound',message_kind:'audio',body:'Wa alaikum assalam.',
      reply_to_message_id:'message-0'});
    mock.sendVoice.mockRejectedValueOnce(Error('whatsapp_voice_quota_exceeded'));
    await mock.worker.runOnce();
    expect(mock.sendVoice).toHaveBeenCalledOnce();
    expect(mock.calls.some(c=>c.sql.includes('300*LEAST(attempts,12)')&&
      c.parameters.includes('whatsapp_voice_quota_exceeded')&&c.parameters.includes(true))).toBe(true);
    expect(mock.calls.some(c=>c.parameters.includes('linked_send_outcome_unknown'))).toBe(false);
  });
});
