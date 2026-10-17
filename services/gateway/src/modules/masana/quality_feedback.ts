import type {Pool} from "@masanawa/postgres";

export const MASANA_QUALITY_REASONS=[
  "factual_error","off_topic","repetition","unhelpful","unprofessional",
] as const;
export type MasanaQualityReason=typeof MASANA_QUALITY_REASONS[number];
export interface MasanaQualityFeedbackPort {
  submit(input:{tenantId:string;fanId:string;characterId:string;
    reason:MasanaQualityReason}):Promise<{accepted:true}>;
  summary(input:{tenantId:string;characterId:string}):Promise<{
    characterId:string;windowDays:30;
    counts:Record<MasanaQualityReason,number>;
  }>;
}
const baseCounts=():Record<MasanaQualityReason,number>=>({
  factual_error:0,off_topic:0,repetition:0,unhelpful:0,unprofessional:0,
});

/** Minimal scoped feedback. This is a report of a possible problem, not an
 * automatic truth/falsity judgment. Only approved active platform Masana may
 * be reviewed, and one report per category per fan/day is retained.
 * No messages, media, phone or free-form text is stored or logged. */
export function createMasanaQualityFeedbackPort(db:Pick<Pool,"query">):
  MasanaQualityFeedbackPort {
  return Object.freeze({
    async submit({tenantId,fanId,characterId,reason}){
      if(!MASANA_QUALITY_REASONS.includes(reason))
        throw new TypeError("invalid_quality_reason");
      await db.query(`
        INSERT INTO masana.professional_quality_feedback
          (tenant_id,fan_user_id,character_id,reason)
        SELECT $1,$2,$3,$4 FROM identity.users fan
        JOIN identity.characters c ON c.tenant_id=fan.tenant_id
          AND c.character_id=$3 AND c.state='active'
        JOIN identity.character_ownership owner
          ON owner.tenant_id=c.tenant_id AND owner.character_id=c.character_id
          AND owner.kind='platform'
        JOIN masana.character_revisions approved
          ON approved.tenant_id=c.tenant_id AND approved.character_id=c.character_id
          AND approved.state='approved'
        WHERE fan.tenant_id=$1 AND fan.user_id=$2 AND fan.state='active'
        ON CONFLICT DO NOTHING`,
        [tenantId,fanId,characterId,reason]);
      // Identical result for duplicate reports and unavailable characters:
      // no existence oracle, no user-specific feedback data in the response.
      return {accepted:true as const};
    },
    async summary({tenantId,characterId}){
      const rows=await db.query(`
        SELECT reason,count(*)::int AS total
        FROM masana.professional_quality_feedback
        WHERE tenant_id=$1 AND character_id=$2
          AND created_at>=now()-INTERVAL '30 days'
        GROUP BY reason`,[tenantId,characterId]);
      const counts=baseCounts();
      for(const raw of rows.rows){
        const row=raw as {reason?:unknown;total?:unknown};
        if(typeof row.reason==="string" &&
           MASANA_QUALITY_REASONS.some(x=>x===row.reason)){
          const total=Number(row.total);
          if(Number.isSafeInteger(total)&&total>=0)
            counts[row.reason as MasanaQualityReason]=total;
        }
      }
      return {characterId,windowDays:30 as const,counts};
    },
  });
}
