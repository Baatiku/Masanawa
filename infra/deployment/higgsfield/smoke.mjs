/** Staging-only live HTTP read. No real account, OTP delivery or provider key. */
import { createCanonicalId } from '@masanawa/contracts';
import { createPostgresPool, withTransaction } from '@masanawa/postgres';
import { hashPlatformSessionToken, mintPlatformSessionToken } from '@masanawa/security';

const tenantId = 'tenant_01a19863-4871-74c6-a499-43b4520f6110';
const email = 'staging-smoke@example.invalid';
const connectionString = 'postgresql://masanawa@127.0.0.1:55432/masanawa_staging';
const pool = createPostgresPool({ connectionString, applicationName: 'higgsfield-smoke', max: 1 });

async function fetchFeed(baseUrl, bearer) {
  const readiness = await fetch(`${baseUrl}/readyz`, { signal: AbortSignal.timeout(8_000) });
  if (!readiness.ok || (await readiness.json()).status !== 'ready') {
    throw new Error(`Gateway not ready at ${baseUrl}`);
  }
  const news = await fetch(`${baseUrl}/v1/news`, {
    headers: { authorization: `Bearer ${bearer}` },
    signal: AbortSignal.timeout(12_000),
  });
  if (!news.ok) throw new Error(`News API at ${baseUrl}: HTTP ${news.status}`);
  const payload = await news.json();
  if (!Array.isArray(payload.items) || payload.items.length === 0) {
    throw new Error(`News API at ${baseUrl}: no publisher articles`);
  }
  return { baseUrl, httpStatus: news.status, newsCards: payload.items.length };
}

let tokenHash;
try {
  const account = await pool.query(
    'SELECT user_id FROM security.platform_user_profiles WHERE tenant_id=$1 AND email=$2',
    [tenantId, email],
  );
  let userId = account.rows[0]?.user_id;
  if (!userId) {
    userId = createCanonicalId('user');
    await withTransaction(pool, async client => {
      await client.query(
        'INSERT INTO identity.users(tenant_id,user_id,created_at,updated_at) VALUES($1,$2,now(),now())',
        [tenantId, userId],
      );
      await client.query(
        `INSERT INTO security.platform_user_profiles
         (tenant_id,user_id,display_name,email,locale,created_at,updated_at)
         VALUES($1,$2,'Higgsfield staging smoke',$3,'en',now(),now())`,
        [tenantId, userId, email],
      );
    });
  }
  const access = mintPlatformSessionToken('access');
  const refresh = mintPlatformSessionToken('refresh');
  tokenHash = hashPlatformSessionToken(access);
  await pool.query(
    `INSERT INTO security.platform_sessions
     (access_hash,refresh_hash,tenant_id,user_id,access_expires_at,
      refresh_expires_at,created_at,updated_at)
     VALUES($1,$2,$3,$4,now()+interval '5 minutes',
      now()+interval '10 minutes',now(),now())`,
    [tokenHash, hashPlatformSessionToken(refresh), tenantId, userId],
  );

  const results = [await fetchFeed('http://127.0.0.1:3000', access)];
  const publicUrl = process.argv[2]?.trim();
  if (publicUrl) {
    if (!/^https:\/\/[a-z0-9-]+\.trycloudflare\.com$/u.test(publicUrl)) {
      throw new Error('Only an ephemeral trycloudflare.com staging URL is allowed');
    }
    results.push(await fetchFeed(publicUrl, access));
  }
  console.log(JSON.stringify({ status: 'PASS', results }));
} finally {
  // Do not leave a usable staging bearer token behind after the smoke test.
  if (tokenHash) {
    await pool.query(
      'UPDATE security.platform_sessions SET revoked_at=now(),updated_at=now() WHERE access_hash=$1',
      [tokenHash],
    ).catch(() => undefined);
  }
  await pool.end();
}
