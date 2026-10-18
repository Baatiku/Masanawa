export type MasanaSocialPlatform =
  "whatsapp"|"telegram"|"youtube"|"tiktok"|"facebook"|"instagram"|"x";
export interface MasanaSocialChannel {
  readonly platform:MasanaSocialPlatform;
  readonly url:string;
}
const allowedChannels:Readonly<Record<MasanaSocialPlatform,readonly string[]>>=Object.freeze({
  whatsapp:["wa.me"],
  telegram:["t.me"],
  youtube:["youtube.com","www.youtube.com"],
  tiktok:["www.tiktok.com","tiktok.com"],
  facebook:["www.facebook.com","facebook.com"],
  instagram:["www.instagram.com","instagram.com"],
  x:["x.com","www.x.com"],
});
/** Only safe, account-specific, HTTPS links. Admin revision approval is
 * required separately: this validator does not certify account ownership. */
export function validateMasanaSocialChannels(value:unknown):readonly MasanaSocialChannel[] {
  if(value==null)return Object.freeze([]);
  if(!Array.isArray(value)||value.length>7)throw new TypeError("invalid_socialChannels");
  const seen=new Set<string>();
  return Object.freeze(value.map((raw:unknown):MasanaSocialChannel=>{
    if(!raw||typeof raw!=="object"||Array.isArray(raw))
      throw new TypeError("invalid_socialChannel");
    const r=raw as Record<string,unknown>;
    if(typeof r.platform!=="string"||!Object.hasOwn(allowedChannels,r.platform)||
       typeof r.url!=="string"||r.url.length>256)
      throw new TypeError("invalid_socialChannel");
    const platform=r.platform as MasanaSocialPlatform;
    let url:URL;
    try{url=new URL(r.url);}catch{throw new TypeError("invalid_socialUrl");}
    if(url.protocol!=="https:"||url.username||url.password||url.port||
       url.hash||url.search||!allowedChannels[platform].includes(url.hostname)||
       !r.url.startsWith("https://"))
      throw new TypeError("invalid_socialUrl");
    const path=url.pathname;
    const valid=platform==="whatsapp"?/^\/[1-9][0-9]{6,15}\/?$/.test(path):
      platform==="telegram"?/^\/[a-zA-Z0-9_]{5,32}\/?$/.test(path):
      platform==="youtube"?/^\/@[a-zA-Z0-9._-]{3,80}\/?$/.test(path):
      /^\/@?[a-zA-Z0-9._-]{3,80}\/?$/.test(path);
    if(!valid||seen.has(platform))throw new TypeError("invalid_socialUrl");
    seen.add(platform);
    return Object.freeze({platform,url:url.href});
  }));
}

export type MasanaRevisionState = "draft" | "approved" | "retired";
export interface MasanaProfile {
  readonly handle: string;
  readonly displayName: string;
  readonly profession: string;
  readonly biography: string;
  readonly lifeStory: string;
  readonly languages: readonly string[];
  readonly talents: readonly string[];
  readonly goals: readonly string[];
  readonly roomId: string | null;
  readonly portraitMediaId: string | null;
  readonly bannerMediaId: string | null;
  readonly socialChannels?: readonly MasanaSocialChannel[];
}
export interface PublishedMasana {
  readonly characterId: string;
  readonly revision: number;
  readonly profile: MasanaProfile;
  readonly followerCount: number;
  readonly following: boolean;
}
/** One canonical profile contract; no human, clone, or legacy Twin projection. */
export function validateMasanaProfile(value: unknown): MasanaProfile {
  if (typeof value !== "object" || value === null || Array.isArray(value)) {
    throw new TypeError("invalid_profile");
  }
  const p = value as Record<string, unknown>;
  const field = (key: string, max: number) => {
    const v = p[key];
    if (typeof v !== "string" || !v.trim() || v.length > max ||
        /[\u0000-\u001f\u007f-\u009f\u202a-\u202e\u2066-\u2069]/u.test(v)) {
      throw new TypeError("invalid_" + key);
    }
    return v.trim();
  };
  const list = (key: string) => {
    const raw = p[key];
    if (!Array.isArray(raw) || raw.length > 20) throw new TypeError("invalid_" + key);
    return Object.freeze(raw.map((v: unknown) => {
      if (typeof v !== "string" || !v.trim() || v.length > 120 ||
          /[\u0000-\u001f\u007f-\u009f\u202a-\u202e\u2066-\u2069]/u.test(v))
        throw new TypeError("invalid_" + key);
      return v.trim();
    })) as readonly string[];
  };
  const maybe = (key: string) => {
    const v = p[key];
    if (v === null || v === undefined) return null;
    if (typeof v !== "string" || v.length > 160 || !/^[a-zA-Z0-9_-]+$/.test(v))
      throw new TypeError("invalid_" + key);
    return v;
  };
  const handle = field("handle", 40).toLowerCase();
  if (!/^[a-z0-9][a-z0-9._-]{1,39}$/.test(handle)) throw new TypeError("invalid_handle");
  return Object.freeze({
    handle,
    displayName: field("displayName", 100),
    profession: field("profession", 100),
    biography: field("biography", 800),
    lifeStory: field("lifeStory", 8000),
    languages: list("languages"),
    talents: list("talents"),
    goals: list("goals"),
    roomId: maybe("roomId"),
    portraitMediaId: maybe("portraitMediaId"),
    bannerMediaId: maybe("bannerMediaId"),
    socialChannels: validateMasanaSocialChannels(p.socialChannels),
  });
}

export * from "./creator-agent.js";
export * from "./creator-policy.js";
