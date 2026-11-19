import {describe,expect,it} from 'vitest';
import {whatsappIdentityInstructions,type WhatsAppIdentity} from './whatsapp_identity.js';

const base:WhatsAppIdentity={numberPurpose:'personal',ownerName:'Bello Abubakar',ownerTitle:'Founder and CEO',
  assistantName:'Hassan',greeting:'Welcome to Masanawa. How may I help you?',verifiedContactName:'',
  firstContact:true,replyMode:'away',absenceMessage:'I am away',mentionAbsence:true};

describe('WhatsApp conversational identity policy',()=>{
  it('does not treat a private founder account as a service hotline or blindly paste its old welcome',()=>{
    const policy=whatsappIdentityInstructions(base);
    expect(policy).toContain('personal WhatsApp number of Bello Abubakar, Founder and CEO');
    expect(policy).toContain('NOT the official Masanawa customer-service line');
    expect(policy).toContain('Respond appropriately to Islamic greetings');
    expect(policy).toContain('has not personally answered');
    expect(policy).not.toContain('Optional personal greeting guidance (never prepend literally): "Welcome to Masanawa');
    expect(policy).toContain('Do not use their WhatsApp profile name');
    expect(policy).toContain('MUST explicitly identify yourself as an AI assistant');
    expect(policy).toContain('Only offer to relay a message or request human attention when that is what the sender wants');
    expect(policy).toContain('thoughtful and adequately detailed for substantial questions');
  });
  it('does not claim the owner is offline when away-mode conditions were not met',()=>{
    const policy=whatsappIdentityInstructions({...base,replyMode:'always',mentionAbsence:false,firstContact:false});
    expect(policy).toContain('Continue their conversation naturally');
    expect(policy).not.toContain('MUST explicitly identify yourself');
    expect(policy).toContain('Do not claim they are offline or away');
  });
  it('includes a verified contact name without inferring gender',()=>{
    const policy=whatsappIdentityInstructions({...base,verifiedContactName:'Amina'});
    expect(policy).toContain('confirmed by an administrator as "Amina"');
    expect(policy).toContain('never infer their gender');
  });
  it('gives a dedicated service number a distinct Masanawa identity',()=>{
    const policy=whatsappIdentityInstructions({...base,numberPurpose:'service'});
    expect(policy).toContain('official Masanawa service WhatsApp number');
    expect(policy).not.toContain('personal WhatsApp number of Bello');
  });
});
