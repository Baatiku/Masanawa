import {describe,expect,it} from 'vitest';
import {resolveWhatsAppLiveVoice,WHATSAPP_LIVE_VOICES} from './whatsapp_voices.js';

describe('Gemini Live voice selection',()=>{
  it('supports the complete 30-name prebuilt voice catalog',()=>{
    expect(WHATSAPP_LIVE_VOICES).toHaveLength(30);
    expect(new Set(WHATSAPP_LIVE_VOICES).size).toBe(30);
    for(const voice of WHATSAPP_LIVE_VOICES)expect(resolveWhatsAppLiveVoice(voice)).toBe(voice);
  });
  it('rejects impersonated or unknown prebuilt voices without sending them to Google',()=>{
    expect(resolveWhatsAppLiveVoice('Aljeva')).toBe('Kore');
    expect(resolveWhatsAppLiveVoice('Garuks')).toBe('Kore');
  });
});
