/** Google's prebuilt Gemini speech voices. Keep this in sync with the Ops
 * validation and the Web management selector. Custom voice IDs are separate. */
export const WHATSAPP_LIVE_VOICES = [
  'Zephyr', 'Puck', 'Charon', 'Kore', 'Fenrir', 'Leda', 'Orus', 'Aoede',
  'Callirrhoe', 'Autonoe', 'Enceladus', 'Iapetus', 'Umbriel', 'Algieba',
  'Despina', 'Erinome', 'Algenib', 'Rasalgethi', 'Laomedeia', 'Achernar',
  'Alnilam', 'Schedar', 'Gacrux', 'Pulcherrima', 'Achird', 'Zubenelgenubi',
  'Vindemiatrix', 'Sadachbia', 'Sadaltager', 'Sulafat',
] as const;

const known = new Set<string>(WHATSAPP_LIVE_VOICES);

/** Never silently send an unsupported value to Gemini's prebuilt voice API. */
export function resolveWhatsAppLiveVoice(value: string): string {
  return known.has(value) ? value : 'Kore';
}
