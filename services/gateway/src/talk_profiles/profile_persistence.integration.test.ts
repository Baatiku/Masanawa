import { afterAll, beforeAll, expect, it } from "vitest";
import { readFile } from "node:fs/promises";
import { PGlite } from "@electric-sql/pglite";
import Fastify from "fastify";
import { createPostgresTalkProfileRepository, type TalkProfileSqlPool } from "./postgres_repository.js";
import { createTalkProfileService } from "./service.js";
import { registerTalkProfileRoutes } from "../talk_profile_routes.js";
import { createAccountDataExports } from "../account_data_exports.js";
import type { PlatformCustomerSessionAuthorizer } from "../customer_auth.js";
import type { Pool } from "@masanawa/postgres";

const db = new PGlite();
const pool = { query: (sql: string, values?: unknown[]) => db.query(sql, values) };
const sessions = {
  async authorize({ authorizationHeader }: { authorizationHeader?: string }) {
    if (authorizationHeader !== 'Bearer owner' && authorizationHeader !== 'Bearer other-tenant') throw Object.assign(new Error('unauthorized'), { statusCode: 401 });
    return { tenantId: authorizationHeader === 'Bearer owner' ? 'tenant' : 'other-tenant', userId: 'owner', profile: { name: 'Masanawa member' } };
  },
} as unknown as PlatformCustomerSessionAuthorizer;
function application() {
  const app = Fastify();
  registerTalkProfileRoutes(app, createTalkProfileService({
    repository: createPostgresTalkProfileRepository(pool as TalkProfileSqlPool),
    authorizer: sessions,
  }));
  return app;
}
beforeAll(async () => {
  await db.exec('CREATE SCHEMA talks');
  await db.exec(await readFile(new URL('../../../../packages/talks/migrations/0003_talk_profiles.sql', import.meta.url), 'utf8'));
  await db.exec(`CREATE TABLE talks.safety_enforcement(tenant_id text,target_kind text,target_id text,visibility text);
    CREATE SCHEMA security;
    CREATE SCHEMA identity;
    CREATE TABLE security.platform_user_profiles(tenant_id text,user_id text,display_name text,email text,phone text);
    CREATE TABLE identity.users(tenant_id text,user_id text,state text);
    CREATE TABLE identity.account_deletion_requests(tenant_id text,user_id text,phase text);
    CREATE TABLE security.platform_account_controls(tenant_id text,user_id text,state text,until_at timestamptz);
    CREATE TABLE security.platform_auth_events(tenant_id text,user_id text,action text,at timestamptz);
    INSERT INTO security.platform_user_profiles VALUES('tenant','owner','Masanawa member',NULL,'+2348012345678');
    INSERT INTO identity.users VALUES('tenant','owner','active');`);
}, 30_000);
afterAll(async () => db.close());

it('persists authenticated profile creation and edits across fresh service instances and completion reads', async () => {
  const headers = { authorization: 'Bearer owner' };
  const first = application();
  try {
    expect((await first.inject({ url: '/profiles/me', headers })).statusCode).toBe(404);
    const created = await first.inject({ method: 'PUT', url: '/profiles/me', headers,
      payload: { handle: 'amina', displayName: 'Amina Yusuf', bio: 'Hello' } });
    expect(created.statusCode).toBe(201);
    expect(created.json()).toMatchObject({ displayName: 'Amina Yusuf', bio: 'Hello' });
    const changed = await first.inject({ method: 'PATCH', url: '/profiles/me', headers,
      payload: { displayName: 'Amina Bello', bio: 'Updated bio' } });
    expect(changed.statusCode).toBe(200);
  } finally { await first.close(); }
  const reopened = application();
  try {
    const response = await reopened.inject({ url: '/profiles/me', headers });
    expect(response.statusCode).toBe(200);
    expect(response.json()).toMatchObject({ handle: 'amina', displayName: 'Amina Bello', bio: 'Updated bio' });
    expect((await reopened.inject({ url: '/profiles/me' })).statusCode).toBe(401);
    expect((await reopened.inject({ url: '/profiles/me',
      headers: { authorization: 'Bearer other-tenant' } })).statusCode).toBe(404);
  } finally { await reopened.close(); }
  const summary = await createAccountDataExports(pool as unknown as Pool, sessions).summary({ authorizationHeader: 'Bearer owner' });
  expect(summary.profileCompletion.displayName).toBe(true);
  // A public display name must not mutate login or verified identity claims.
  expect((await db.query('SELECT display_name FROM security.platform_user_profiles')).rows)
    .toEqual([{ display_name: 'Masanawa member' }]);
});
