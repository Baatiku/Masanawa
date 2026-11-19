import {describe,expect,it,vi} from 'vitest';
import {safeWhatsAppHistory,summarizeWhatsAppMemory} from './whatsapp_memory.js';

describe('WhatsApp returning-contact memory',()=>{
  it('retains general Hausa context but excludes private wallet and contact details',()=>{
    const history=safeWhatsAppHistory([
      {direction:'inbound',body:'Sannu, ina son koyon yadda Masanawa ke aiki.'},
      {direction:'inbound',body:'My wallet balance is ₦500 and my PIN is 1234'},
      {direction:'inbound',body:'Please call +2348012345678 for explanations'},
      {direction:'outbound',body:'Masanawa helps you with AI conversations.'},
    ]);
    expect(history).toContain('Sannu, ina son koyon');
    expect(history).toContain('[private detail]');
    expect(history).not.toContain('₦500');
    expect(history).not.toContain('2348012345678');
    expect(history).not.toContain('PIN');
  });
  it('updates a bounded long-term summary without asking the model for account identity',async()=>{
    const call=vi.fn(async(_url:string,options:RequestInit)=>{
      expect(JSON.stringify(options.body)).toContain('unresolved general questions');
      return {ok:true,json:async()=>({candidates:[{content:{parts:[{text:'Prefers Hausa and is learning about the Masanawa app.'}]}}]})};
    });
    const summary=await summarizeWhatsAppMemory({apiKey:'test',model:'gemini-2.5-flash',conversation:'Customer: Sannu',fetch:call as never});
    expect(summary).toMatch(/Prefers Hausa/);
  });
  it('rejects model-produced financial memory',async()=>{
    await expect(summarizeWhatsAppMemory({apiKey:'test',model:'test',conversation:'Hello',
      fetch:async()=>({ok:true,json:async()=>({candidates:[{content:{parts:[{text:'Wallet balance is ₦1,000'}]}}]})}) as never})).rejects.toThrow('memory_response_invalid');
  });
});
