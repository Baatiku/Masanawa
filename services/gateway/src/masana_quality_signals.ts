/** Privacy-safe low-cost quality signals for Masana text/media responses.
 * These are review candidates, not claims of factual error or malpractice.
 * No user text, answer, conversation history or private identifier is logged.
 */
export type MasanaQualitySignal="short_fallback"|"generic_disclaimer"|"repeated_sentence";
export interface MasanaQualityAssessment {
  readonly version:1;
  readonly answerCharacters:number;
  readonly signals:readonly MasanaQualitySignal[];
}
export function assessMasanaReply(reply:string):MasanaQualityAssessment {
  const normalized=reply.trim();
  const signals:MasanaQualitySignal[]=[];
  if(normalized.length<18) signals.push("short_fallback");
  if(/as an ai (language )?model|i cannot assist with that request/i.test(normalized))
    signals.push("generic_disclaimer");
  // Only literal repeated complete sentences; short word repetition is not
  // a problem in language lessons and must not be flagged as misconduct.
  const sentences=normalized.split(/[.!?]+(?:\s|$)/u)
    .map(v=>v.trim().replace(/\s+/g," ").toLowerCase())
    .filter(v=>v.length>=38);
  if(new Set(sentences).size<sentences.length)signals.push("repeated_sentence");
  return Object.freeze({
    version:1,
    answerCharacters:normalized.length,
    signals:Object.freeze(signals),
  });
}
/** Intentionally aggregates safe metadata only; leave factual/off-topic
 * judgments to explicit review or future evidence-backed evaluations. */
export function recordMasanaQuality(characterId:string,reply:string):void {
  const result=assessMasanaReply(reply);
  console.info(JSON.stringify({
    event:"masana.response_quality",
    version:result.version,
    characterId,
    answerCharacters:result.answerCharacters,
    signals:result.signals,
  }));
}
