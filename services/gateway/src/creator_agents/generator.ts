import {
  buildCreatorGenerationRequest,
  validateCreatorGeneration,
  type CreatorSeed,
  type GeneratedCreatorAgent,
} from "@masanawa/masana";

/** Keep provider calls replaceable; no user-written skills or prompts. */
export interface CreatorAgentGenerator {
  generate(seed: CreatorSeed): Promise<GeneratedCreatorAgent>;
}

export class CreatorGenerationError extends Error {
  constructor(readonly code: string, readonly statusCode = 503) { super(code); }
}
type Json = Record<string, unknown>;
function obj(v: unknown): Json {
  if (!v || typeof v !== "object" || Array.isArray(v)) throw new CreatorGenerationError("creator.generation_invalid");
  return v as Json;
}
function readText(v: unknown): string {
  const root=obj(v), candidates=root.candidates;
  if (!Array.isArray(candidates) || candidates.length<1) throw new CreatorGenerationError("creator.generation_empty");
  const candidate=obj(candidates[0]), content=obj(candidate.content);
  if (!Array.isArray(content.parts)) throw new CreatorGenerationError("creator.generation_empty");
  const text=content.parts.map((p:unknown)=>obj(p).text).find((p:unknown)=>typeof p==="string" && p.length>0);
  if (typeof text!=="string" || text.length>10000) throw new CreatorGenerationError("creator.generation_invalid");
  return text;
}
/**
 * Bounded Gemini structured-output adapter. Never accepts model-proposed
 * tool privileges; user fields are JSON data rather than instructions.
 */
export function createGeminiCreatorGenerator(input: {
  readonly apiKey: string;
  readonly model: string;
  readonly fetcher?: typeof fetch;
  readonly timeoutMs?: number;
}): CreatorAgentGenerator {
  const key=input.apiKey?.trim(),model=input.model?.trim();
  if (!key || key.length>512 || !model || !/^[a-zA-Z0-9][a-zA-Z0-9._-]{1,99}$/u.test(model)) {
    throw new CreatorGenerationError("creator.gemini_unconfigured");
  }
  const timeout=input.timeoutMs??18000;
  if (!Number.isSafeInteger(timeout) || timeout<1000 || timeout>30000) {
    throw new TypeError("creator.timeout_invalid");
  }
  const fetcher=input.fetcher??fetch;
  return Object.freeze({
    async generate(seed:CreatorSeed): Promise<GeneratedCreatorAgent> {
      const request=buildCreatorGenerationRequest(seed);
      let response: Response;
      try {
        response=await fetcher(
          "https://generativelanguage.googleapis.com/v1beta/models/"+encodeURIComponent(model)+":generateContent",
          {
            method:"POST",
            headers:{"Content-Type":"application/json","x-goog-api-key":key},
            body:JSON.stringify({
              systemInstruction:{parts:[{text:request.instructions}]},
              contents:[{role:"user",parts:[{text:request.inputJson}]}],
              generationConfig:{responseMimeType:"application/json",temperature:0.7,maxOutputTokens:1400},
            }),
            signal:AbortSignal.timeout(timeout),
          }
        );
      } catch {
        throw new CreatorGenerationError("creator.gemini_network");
      }
      if (!response.ok) {
        // Never leak upstream diagnostic payloads, credentials or user-supplied text.
        throw new CreatorGenerationError(response.status===429?"creator.gemini_rate_limit":"creator.gemini_unavailable",response.status===429?429:503);
      }
      let raw:unknown;
      try {raw=await response.json();} catch {throw new CreatorGenerationError("creator.gemini_response_invalid");}
      try {
        return validateCreatorGeneration(seed,JSON.parse(readText(raw)));
      } catch {
        throw new CreatorGenerationError("creator.gemini_response_invalid");
      }
    }
  });
}
