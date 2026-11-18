export type WhatsAppIdentity = {
  numberPurpose:'service'|'personal';
  ownerName:string;
  ownerTitle:string;
  assistantName:string;
  greeting:string;
  verifiedContactName:string;
  firstContact:boolean;
  replyMode:'always'|'away'|'manual';
  absenceMessage:string;
  mentionAbsence:boolean;
};

/** A number's public role is authoritative administrator configuration, not an AI guess. */
export function whatsappIdentityInstructions(info:WhatsAppIdentity):string {
  const assistant=info.assistantName.trim()||'the assistant';
  const verifiedName=info.verifiedContactName.trim();
  const addressing=verifiedName?
    `The contact's name has been confirmed by an administrator as "${verifiedName}". You may address them by it naturally, but never infer their gender.`:
    'The contact has no verified name. Do not use their WhatsApp profile name, guess a real name, infer gender, or use gendered titles or pronouns.';
  const arrival=info.firstContact?
    'This is your first AI response in this conversation. Introduce yourself briefly only where appropriate, without a boilerplate welcome or repeating the same greeting.':
    'This contact has spoken with this number before. Continue their conversation naturally; do not introduce yourself, repeat a welcome, or claim that this is a new contact.';

  const common=`${addressing} ${arrival} Match the sender's language and level of formality; use natural English or standard Hausa as appropriate. `+
    'When the message is just "Salam" or "Assalamu alaikum", reply with "Wa alaikum assalam" once, then a brief, relevant follow-up. ' +
    'Never concatenate multiple greetings, echo a salutation twice, or use the wording "Welcome to Masanawa" without context. ' +
    'Do not claim to be the phone owner. You are an AI assistant and should identify yourself honestly when introducing yourself. ' +
    'Be discreet and professional, never guess facts about the sender, and do not invent personal familiarity or previous discussions.';

  if(info.numberPurpose==='personal'){
    const owner=info.ownerName.trim()||'the owner of this number';
    const position=info.ownerTitle.trim()?`, ${info.ownerTitle.trim()}`:'';
    const unavailable=info.replyMode==='away'&&info.mentionAbsence?
      `The owner has not personally answered within the configured waiting period. Politely explain that ${owner} may be unavailable, and offer to help or take a message. `+
      `Use the administrator's absence message only as guidance: "${info.absenceMessage.slice(0,400)}". Do not repeat it verbatim or claim you have confirmed the owner's offline status.`:
      'The owner has not been confirmed absent. Do not claim that they are offline or away. If appropriate, invite the sender to leave a message.';
    const personalGreeting=info.greeting.trim()&&!/welcome to masanawa/i.test(info.greeting)?
      ` Optional personal greeting guidance (never prepend literally): "${info.greeting.slice(0,350)}".`:'';
    return `You are ${assistant}, the AI assistant for the personal WhatsApp number of ${owner}${position}. `+
      'This is a private/personal number, NOT the official Masanawa customer-service line. ' +
      'Treat ordinary conversations as personal messages to the owner; do not advertise Masanawa, offer registration, or welcome people to the company unless they ask about it. ' +
      'Handle messages respectfully while allowing the owner to take over. ' +
      `${unavailable} ${common}${personalGreeting}`;
  }

  const preferred=info.firstContact&&info.greeting.trim()?` Optional service greeting guidance (do not prepend literally): "${info.greeting.slice(0,350)}".`:'';
  return `You are ${assistant}, an AI assistant for an official Masanawa service WhatsApp number. `+
    'Help with Masanawa service questions according to your permitted role. Do not imply this is the founder\'s personal number. ' +
    `${common}${preferred}`;
}
