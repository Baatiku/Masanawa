import { createHash, timingSafeEqual } from "node:crypto";
import type { Pool, PoolClient } from "pg";
import {
  createCanonicalId,
  parseCanonicalId,
  toInstant,
  type TenantId,
  type UserId,
} from "@masanawa/contracts";
import type {
  PlatformAuthChannel,
  PlatformAuthProfile,
  PlatformSessionIdentity,
  PlatformSessionRepository,
} from "@masanawa/security";
import {
  createUser,
  linkExternalUserIdentity,
  resolveUserByExternalIdentity,
} from "../identity/repository.js";
import { withTransaction } from "../transaction.js";

interface ProfileRow {
  tenant_id: string;
  user_id: string;
  display_name: string;
  username?: string;
  email: string | null;
  phone: string | null;
  locale: string;
  created_at: Date | string;
}

function profile(row: ProfileRow): PlatformAuthProfile {
  return Object.freeze({
    tenantId: parseCanonicalId("tenant", row.tenant_id),
    userId: parseCanonicalId("user", row.user_id),
    name: row.display_name,
    ...(row.username ? {username:row.username} : {}),
    email: row.email,
    phone: row.phone,
    locale: row.locale,
    createdAt: (row.created_at instanceof Date ? row.created_at : new Date(row.created_at)).toISOString(),
  });
}

function subject(channel: PlatformAuthChannel, identifier: string, observedAt: string) {
  return {
    system: "masanawa",
    namespace: channel,
    value: identifier,
    subjectKind: "user" as const,
    authenticationStrength: "strong" as const,
    observedAt: toInstant(observedAt),
  };
}

async function loadProfile(
  client: PoolClient,
  tenantId: TenantId,
  userId: UserId,
): Promise<PlatformAuthProfile | null> {
  const result = await client.query<ProfileRow>(
    `SELECT p.tenant_id,p.user_id,p.display_name,p.email,p.phone,p.locale,p.created_at,h.handle AS username
       FROM security.platform_user_profiles p
       LEFT JOIN talks.public_profiles h ON h.tenant_id=p.tenant_id AND h.user_id=p.user_id
      WHERE p.tenant_id=$1 AND p.user_id=$2`,
    [tenantId,userId],
  );
  return result.rows[0] ? profile(result.rows[0]) : null;
}

/** One durable, unique handle in the existing public profile authority. */
export async function ensureSignupUsername(client: Pick<PoolClient,"query">, input: Readonly<{
  tenantId: TenantId; userId: UserId; name: string;
}>): Promise<string> {
  const stem=input.name.normalize("NFKD").toLowerCase().replace(/[^a-z0-9]/gu,"").slice(0,12) || "masanawa";
  for(let attempt=0;attempt<8;attempt++) {
    const suffix=createHash("sha256").update(`${input.tenantId}:${input.userId}:${attempt}`).digest("hex").slice(0,16);
    const inserted=await client.query<{handle:string}>(
      `INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name,bio,talks_json,updated_at)
       VALUES($1,$2,$3,$4,'','[]'::jsonb,clock_timestamp()) ON CONFLICT DO NOTHING RETURNING handle`,
      [input.tenantId,input.userId,`${stem}_${suffix}`,input.name]);
    if(inserted.rows[0]) return inserted.rows[0].handle;
    const existing=await client.query<{handle:string}>(
      "SELECT handle FROM talks.public_profiles WHERE tenant_id=$1 AND user_id=$2",[input.tenantId,input.userId]);
    if(existing.rows[0])return existing.rows[0].handle;
  }
  throw new Error("auth.username_allocation_failed");
}

function sameHash(left: string, right: string): boolean {
  if (!/^[0-9a-f]{64}$/u.test(left) || !/^[0-9a-f]{64}$/u.test(right)) return false;
  return timingSafeEqual(Buffer.from(left, "hex"), Buffer.from(right, "hex"));
}

export function createPostgresPlatformSessionRepository(pool: Pool): PlatformSessionRepository {
  return Object.freeze<PlatformSessionRepository>({
    async putOtpChallenge(input) {
      await withTransaction(pool, async (client) => {
        await client.query("SELECT pg_advisory_xact_lock(hashtext($1))", [
          `auth:otp:${input.tenantId}:${input.channel}:${input.identifier}`,
        ]);
        const current = await client.query<{ resend_after: Date | string; consumed_at: Date | string | null }>(
          `SELECT resend_after,consumed_at
             FROM security.platform_otp_challenges
            WHERE tenant_id=$1 AND channel=$2 AND identifier=$3 FOR UPDATE`,
          [input.tenantId,input.channel,input.identifier],
        );
        const row = current.rows[0];
        if (row && row.consumed_at === null &&
            new Date(row.resend_after).getTime() > Date.parse(input.createdAt)) {
          throw new Error("auth.otp.cooldown");
        }
        await client.query(
          `INSERT INTO security.platform_otp_challenges(
             tenant_id,channel,identifier,code_hash,attempts,max_attempts,
             created_at,expires_at,resend_after,consumed_at
           ) VALUES ($1,$2,$3,$4,0,$5,$6,$7,$8,NULL)
           ON CONFLICT (tenant_id,channel,identifier) DO UPDATE
             SET code_hash=EXCLUDED.code_hash,attempts=0,max_attempts=EXCLUDED.max_attempts,
                 created_at=EXCLUDED.created_at,expires_at=EXCLUDED.expires_at,
                 resend_after=EXCLUDED.resend_after,consumed_at=NULL`,
          [
            input.tenantId,input.channel,input.identifier,input.codeHash,input.maxAttempts,
            input.createdAt,input.expiresAt,input.resendAfter,
          ],
        );
      });
    },

    async cancelOtpChallenge(input) {
      await pool.query(
        `DELETE FROM security.platform_otp_challenges
          WHERE tenant_id=$1 AND channel=$2 AND identifier=$3
            AND code_hash=$4 AND consumed_at IS NULL`,
        [input.tenantId,input.channel,input.identifier,input.codeHash],
      );
    },

    async consumeOtpChallenge(input) {
      return withTransaction(pool, async (client) => {
        const result = await client.query<{
          code_hash: string;
          attempts: number;
          max_attempts: number;
          expires_at: Date | string;
          consumed_at: Date | string | null;
        }>(
          `SELECT code_hash,attempts,max_attempts,expires_at,consumed_at
             FROM security.platform_otp_challenges
            WHERE tenant_id=$1 AND channel=$2 AND identifier=$3 FOR UPDATE`,
          [input.tenantId,input.channel,input.identifier],
        );
        const row = result.rows[0];
        if (!row) return "missing" as const;
        if (row.consumed_at !== null || row.attempts >= row.max_attempts) return "locked" as const;
        if (new Date(row.expires_at).getTime() <= Date.parse(input.consumedAt)) return "expired" as const;
        if (!sameHash(row.code_hash, input.codeHash)) {
          await client.query(
            `UPDATE security.platform_otp_challenges
                SET attempts=attempts+1
              WHERE tenant_id=$1 AND channel=$2 AND identifier=$3`,
            [input.tenantId,input.channel,input.identifier],
          );
          return row.attempts + 1 >= row.max_attempts ? "locked" as const : "invalid" as const;
        }
        if (input.consume !== false) {
          await client.query(
            `UPDATE security.platform_otp_challenges
                SET consumed_at=$4
              WHERE tenant_id=$1 AND channel=$2 AND identifier=$3`,
            [input.tenantId,input.channel,input.identifier,input.consumedAt],
          );
        }
        return "accepted" as const;
      });
    },

    async resolveProfile(input) {
      return withTransaction(pool, async (client) => {
        const userId = await resolveUserByExternalIdentity(
          client,
          input.tenantId,
          subject(input.channel,input.identifier,input.observedAt),
        );
        return userId ? loadProfile(client,input.tenantId,userId) : null;
      }, { isolation: "repeatable read", readOnly: true });
    },

    async createProfile(input) {
      const name = input.name.trim();
      if (!name || name.length > 160) throw new TypeError("auth.name_invalid");
      return withTransaction(pool, async (client) => {
        await client.query("SELECT pg_advisory_xact_lock(hashtext($1))", [
          `auth:identity:${input.tenantId}:${input.channel}:${input.identifier}`,
        ]);
        // Public customer onboarding may be the first writer for the platform
        // tenant. Provision that canonical Identity owner idempotently before
        // creating a User so first signup cannot fail its tenant FK.
        await client.query(
          `INSERT INTO identity.tenants(tenant_id,created_at,updated_at)
           VALUES ($1,$2,$2)
           ON CONFLICT (tenant_id) DO NOTHING`,
          [input.tenantId,input.createdAt],
        );
        const tenant = await client.query<{ state: string }>(
          `SELECT state FROM identity.tenants WHERE tenant_id=$1 FOR SHARE`,
          [input.tenantId],
        );
        if (tenant.rows[0]?.state !== "active") {
          throw new Error("auth.tenant_inactive");
        }
        const external = subject(input.channel,input.identifier,input.createdAt);
        const existingUser = await resolveUserByExternalIdentity(client,input.tenantId,external);
        if (existingUser) {
          const existingProfile = await loadProfile(client,input.tenantId,existingUser);
          if (existingProfile) return existingProfile;
          throw new Error("auth.profile_missing_for_linked_identity");
        }
        const userId = createCanonicalId("user");
        await createUser(client,{ tenantId: input.tenantId,userId,createdAt: toInstant(input.createdAt) });
        await linkExternalUserIdentity(client,{
          tenantId: input.tenantId,userId,subject: external,linkedAt: toInstant(input.createdAt),
        });
        const inserted = await client.query<ProfileRow>(
          `INSERT INTO security.platform_user_profiles(
             tenant_id,user_id,display_name,email,phone,locale,created_at,updated_at
           ) VALUES ($1,$2,$3,$4,$5,$6,$7,$7)
           RETURNING tenant_id,user_id,display_name,email,phone,locale,created_at`,
          [
            input.tenantId,userId,name,
            input.channel === "email" ? input.identifier : null,
            input.channel === "sms" ? input.identifier : null,
            input.locale,input.createdAt,
          ],
        );
        const username=await ensureSignupUsername(client,{tenantId:input.tenantId,userId,name});
        return profile({...inserted.rows[0]!,username});
      });
    },

    async setPasswordCredential(input) {
      await pool.query(
        `INSERT INTO security.platform_device_passwords(
           tenant_id,user_id,password_hash,attempts,max_attempts,
           locked_until,created_at,updated_at
         ) VALUES ($1,$2,$3,0,5,NULL,$4,$4)
         ON CONFLICT (tenant_id,user_id) DO UPDATE
           SET password_hash=EXCLUDED.password_hash,attempts=0,
               locked_until=NULL,updated_at=EXCLUDED.updated_at`,
        [input.tenantId,input.userId,input.passwordHash,input.createdAt],
      );
    },

    async verifyPasswordCredential(input) {
      return withTransaction(pool, async (client) => {
        const result = await client.query<{
          password_hash: string;
          attempts: number;
          max_attempts: number;
          locked_until: Date | string | null;
        }>(
          `SELECT password_hash,attempts,max_attempts,locked_until
             FROM security.platform_device_passwords
            WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE`,
          [input.tenantId,input.userId],
        );
        const row = result.rows[0];
        if (!row) return "missing" as const;
        if (row.locked_until !== null &&
            new Date(row.locked_until).getTime() > Date.parse(input.at)) {
          return "locked" as const;
        }
        if (row.attempts >= row.max_attempts) {
          // Previous code made the five-attempt lock permanent.
          if (row.locked_until === null ||
              new Date(row.locked_until).getTime() > Date.parse(input.at)) return "locked" as const;
          await client.query(
            `UPDATE security.platform_device_passwords SET attempts=0,locked_until=NULL,updated_at=$3
               WHERE tenant_id=$1 AND user_id=$2`,
            [input.tenantId,input.userId,input.at],
          );
          row.attempts = 0;
        }
        if (!sameHash(row.password_hash, input.passwordHash)) {
          await client.query(
            `UPDATE security.platform_device_passwords
                SET attempts=attempts+1,updated_at=$3,
                    locked_until=CASE WHEN attempts+1>=max_attempts THEN $4
                         WHEN attempts+1>=3 THEN $5 ELSE NULL END
              WHERE tenant_id=$1 AND user_id=$2`,
            [
              input.tenantId,input.userId,input.at,
              new Date(Date.parse(input.at) + 15 * 60 * 1000).toISOString(),
              new Date(Date.parse(input.at) + (row.attempts === 2 ? 10 : 60) * 1000).toISOString(),
            ],
          );
          const attempts = row.attempts + 1;
          return attempts >= row.max_attempts ? "locked" as const : "invalid" as const;
        }
        await client.query(
          `UPDATE security.platform_device_passwords
              SET attempts=0,locked_until=NULL,updated_at=$3
            WHERE tenant_id=$1 AND user_id=$2`,
          [input.tenantId,input.userId,input.at],
        );
        return "accepted" as const;
      });
    },

    async registerDevice(input) {
      await pool.query(
        `INSERT INTO security.platform_auth_devices(
           tenant_id,user_id,device_id,created_at,last_seen_at
         ) VALUES ($1,$2,$3,$4,$4)
         ON CONFLICT (tenant_id,user_id,device_id) DO UPDATE
           SET last_seen_at=EXCLUDED.last_seen_at`,
        [input.tenantId,input.userId,input.deviceId,input.at],
      );
    },

    async isDeviceKnown(input) {
      const result = await pool.query<{ one: number }>(
        `SELECT 1 AS one
           FROM security.platform_auth_devices
          WHERE tenant_id=$1 AND user_id=$2 AND device_id=$3`,
        [input.tenantId,input.userId,input.deviceId],
      );
      return (result.rowCount ?? 0) > 0;
    },

    async attachIdentity(input) {
      return withTransaction(pool, async (client) => {
        await client.query("SELECT pg_advisory_xact_lock(hashtext($1))", [
          `auth:identity:${input.tenantId}:${input.channel}:${input.identifier}`,
        ]);
        const external = subject(input.channel,input.identifier,input.linkedAt);
        const existing = await resolveUserByExternalIdentity(
          client,input.tenantId,external,
        );
        if (existing && existing !== input.userId) {
          throw new Error("auth.identity_taken");
        }
        if (!existing) {
          await linkExternalUserIdentity(client,{
            tenantId: input.tenantId,userId: input.userId,
            subject: external,linkedAt: toInstant(input.linkedAt),
          });
        }
        await client.query(
          `UPDATE security.platform_user_profiles
              SET email=CASE WHEN $3='email' THEN $4 ELSE email END,
                  phone=CASE WHEN $3='sms' THEN $4 ELSE phone END,
                  updated_at=$5
            WHERE tenant_id=$1 AND user_id=$2`,
          [input.tenantId,input.userId,input.channel,input.identifier,input.linkedAt],
        );
        return loadProfile(client,input.tenantId,input.userId);
      });
    },

    async issueSession(input) {
      await withTransaction(pool, async (client) => {
        // Serialize issuance against the deletion revoker's canonical User
        // UPDATE. A session inserted first is revoked by that transaction;
        // a revoker that wins first makes this request fail closed.
        const current = await client.query<{ state: string }>(
          `SELECT state FROM identity.users
            WHERE tenant_id=$1 AND user_id=$2 FOR SHARE`,
          [input.identity.tenantId,input.identity.userId],
        );
        if (current.rows[0]?.state !== "active") {
          throw new Error("auth.account_inactive");
        }
        await client.query(
          `INSERT INTO security.platform_sessions(
             access_hash,refresh_hash,tenant_id,user_id,access_expires_at,
             refresh_expires_at,revoked_at,created_at,updated_at,device_id
           ) VALUES ($1,$2,$3,$4,$5,$6,NULL,$7,$7,$8)`,
          [
            input.accessHash,input.refreshHash,input.identity.tenantId,input.identity.userId,
            input.accessExpiresAt,input.refreshExpiresAt,input.issuedAt,input.deviceId ?? null,
          ],
        );
        await client.query(
          `INSERT INTO security.platform_auth_events(tenant_id,user_id,action,at)
           VALUES($1,$2,'session_created',$3)`,
          [input.identity.tenantId,input.identity.userId,input.issuedAt],
        );
      });
    },

    async resolveAccess(input) {
      return withTransaction(pool, async (client) => {
        const result = await client.query<{ tenant_id: string; user_id: string }>(
          `SELECT s.tenant_id,s.user_id
             FROM security.platform_sessions s
             JOIN identity.users u
               ON u.tenant_id=s.tenant_id AND u.user_id=s.user_id
             JOIN identity.tenants t
               ON t.tenant_id=s.tenant_id
            WHERE s.access_hash=$1 AND s.revoked_at IS NULL
              AND s.access_expires_at>$2 AND s.refresh_expires_at>$2
              AND u.state='active' AND t.state='active'`,
          [input.accessHash,input.at],
        );
        const row = result.rows[0];
        if (!row) return null;
        const tenantId = parseCanonicalId("tenant",row.tenant_id);
        const userId = parseCanonicalId("user",row.user_id);
        const loaded = await loadProfile(client,tenantId,userId);
        return loaded ? Object.freeze({ tenantId,userId,profile: loaded }) : null;
      }, { isolation: "repeatable read", readOnly: true });
    },

    async rotateRefresh(input) {
      return withTransaction(pool, async (client) => {
        const result = await client.query<{ tenant_id: string; user_id: string }>(
          `UPDATE security.platform_sessions s
              SET access_hash=$2,refresh_hash=$3,access_expires_at=$4,
                  refresh_expires_at=$5,updated_at=$6
            WHERE s.refresh_hash=$1
              AND s.revoked_at IS NULL
              AND s.refresh_expires_at>$6
              AND EXISTS (
                SELECT 1
                  FROM identity.users u
                  JOIN identity.tenants t ON t.tenant_id=u.tenant_id
                 WHERE u.tenant_id=s.tenant_id
                   AND u.user_id=s.user_id
                   AND u.state='active'
                   AND t.state='active'
              )
            RETURNING s.tenant_id,s.user_id`,
          [
            input.refreshHash,input.nextAccessHash,input.nextRefreshHash,
            input.accessExpiresAt,input.refreshExpiresAt,input.rotatedAt,
          ],
        );
        const row = result.rows[0];
        if (!row) return null;
        const tenantId = parseCanonicalId("tenant",row.tenant_id);
        const userId = parseCanonicalId("user",row.user_id);
        const loaded = await loadProfile(client,tenantId,userId);
        return loaded ? Object.freeze({ tenantId,userId,profile: loaded }) : null;
      });
    },

    async listSessions(input) {
      const result=await pool.query<{
        session_id:string;device_id:string|null;
        created_at:Date|string;updated_at:Date|string;current:boolean;
      }>(
        `SELECT session_id::text,device_id,created_at,updated_at,(access_hash=$3) AS current
           FROM security.platform_sessions
          WHERE tenant_id=$1 AND user_id=$2 AND revoked_at IS NULL AND refresh_expires_at>$4
          ORDER BY created_at DESC LIMIT 100`,
        [input.tenantId,input.userId,input.accessHash,input.at],
      );
      return result.rows.map(row=>Object.freeze({
        sessionId:row.session_id,deviceId:row.device_id,
        createdAt:new Date(row.created_at).toISOString(),
        lastAccessAt:new Date(row.updated_at).toISOString(),current:row.current,
      }));
    },
    async revokeSession(input) {
      const result=await pool.query(
        `UPDATE security.platform_sessions SET revoked_at=$4,updated_at=$4
          WHERE tenant_id=$1 AND user_id=$2 AND session_id=$3::uuid AND revoked_at IS NULL`,
        [input.tenantId,input.userId,input.sessionId,input.revokedAt],
      );
      return (result.rowCount??0)>0;
    },
    async revokeAllSessions(input) {
      const result=await pool.query(
        `UPDATE security.platform_sessions SET revoked_at=$3,updated_at=$3
          WHERE tenant_id=$1 AND user_id=$2 AND revoked_at IS NULL`,
        [input.tenantId,input.userId,input.revokedAt],
      );
      return result.rowCount??0;
    },
    async listAuthEvents(input) {
      const result=await pool.query<{action:string;at:Date|string}>(
        `SELECT action,at FROM security.platform_auth_events
          WHERE tenant_id=$1 AND user_id=$2 ORDER BY at DESC LIMIT $3`,
        [input.tenantId,input.userId,input.limit],
      );
      return result.rows.map(row=>Object.freeze({
        action:row.action,at:new Date(row.at).toISOString(),
      }));
    },
    async recordAuthEvent(input) {
      await pool.query(
        `INSERT INTO security.platform_auth_events(tenant_id,user_id,action,at)
          VALUES($1,$2,$3,$4)`,
        [input.tenantId,input.userId,input.action,input.at],
      );
    },
    async revokeAccess(input) {
      await pool.query(
        `UPDATE security.platform_sessions
            SET revoked_at=COALESCE(revoked_at,$2),updated_at=$2
          WHERE access_hash=$1`,
        [input.accessHash,input.revokedAt],
      );
    },
  });
}
