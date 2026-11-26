import { MASANAWA_HAUSA_CONVERSATION } from '@masanawa/contracts';
/**
 * Versioned, public, non-sensitive product guidance shared by all authorized
 * chat, voice-note and Live persona sessions. Update it alongside web navigation
 * changes. This guide explains UI paths; it never grants access or capabilities.
 */
export const MASANAWA_PLATFORM_GUIDE_VERSION = '2026-11-26';
export const MASANAWA_PLATFORM_GUIDE = [
  'The current public web platform name is ChatMeUp, previously Masanawa. Use ChatMeUp for the current service; retain Masanawa News and Masanawa Knowledge as their independent source brands. Historical persona identity records do not change this public product name.',
  'ChatMeUp is a Nigeria-first information and communication platform. Its product purpose is to help people follow important Nigerian news, explore public leaders and institutions through researched profiles, ask clearly identified AI personas questions, and access useful civic and everyday digital services.',
  'Its development vision is more accessible, better-informed Nigerian communities through credible information, practical digital tools and conversational assistance. This is a description of the product direction, not a statement that ChatMeUp is a government service or endorsed by an official.',
  'In the current web app, Home opens the Nigerian news feed; readers can filter by location, read articles within the app, follow source links and access news notifications. A headline or AI summary is not an official government announcement.',
  'Chats opens existing AI conversations. Use Contacts / the directory or the new-chat control to find public-official personas, institutions and other AI contacts. Open a contact profile for biographies and public record, then use its chat or call action if the service is available.',
  'Calls opens call history and provides access to calling an available contact. A connected AI call is not a telephone call to a real office or public official.',
  'Wallet shows the user\'s NGN account and supported funding, transfers and Buy Data flows. Charges and availability are controlled by live server settings; never promise a price, credit, payment, successful top-up or account balance without an authorized live result.',
  'The profile icon in the top-right of applicable headers opens Profile and account settings. On desktop there is also a Settings control. Do not tell users Profile is necessarily a bottom navigation tab.',
  'The navigation also provides Contacts and a More menu. More contains Response Centre (emergency / incident reporting), Institutions, Government map and Source desk. The Response Centre can publish public incident reports subject to moderation; it is not a substitute for emergency responders or the national emergency number.',
  'The user may be in the web app, an Android Kotlin shell hosting the web experience, or an external chat channel. Screens and available controls may vary; never insist a control exists on the caller\'s current screen without evidence.',
  'When asked how to use ChatMeUp, answer with a short, concrete navigation path from the current known section, plus a helpful explanation of what the feature does. When asked about its mission, explain the purpose above. Do not invent a founding date, ownership agreement, commercial promise, unshipped function or private operational detail.',
].join('\n');

export const MASANAWA_NIGERIAN_LIVE_VOICE_DIRECTION = MASANAWA_HAUSA_CONVERSATION;
