import { describe,expect,it,vi } from 'vitest';
import type { Pool } from 'pg';
import { PGlite } from '@electric-sql/pglite';
import { readFile } from 'node:fs/promises';
import { createPostgresMobilePushRepository } from './mobile-shell.js';

describe('durable notification acknowledgement',()=>{
  it('uses one tenant+user+event-id constrained idempotent update',async()=>{
    const query=vi.fn(async(_sql:string,_params:unknown[])=>
      ({rows:[{read_at:new Date('2026-10-25T22:00:00Z')}]}));
    const repository=createPostgresMobilePushRepository({query} as unknown as Pool);
    const readAt=await repository.markNoticeRead({tenantId:'tenant-a',
      userId:'owner-a',eventId:'event-a'} as never);
    expect(readAt).toBe('2026-10-25T22:00:00.000Z');
    expect(query).toHaveBeenCalledTimes(1);
    const [sql,params]=query.mock.calls[0]!;
    expect(sql).toContain('read_at=COALESCE(read_at,clock_timestamp())');
    expect(sql).toContain('tenant_id=$1 AND user_id=$2 AND event_id=$3');
    expect(params).toEqual(['tenant-a','owner-a','event-a']);
  });

  it('returns unknown for an absent or another-owner alert',async()=>{
    const query=vi.fn(async()=>({rows:[]}));
    const repository=createPostgresMobilePushRepository({query} as unknown as Pool);
    await expect(repository.markNoticeRead({tenantId:'tenant-a',
      userId:'owner-a',eventId:'someone-elses-event'} as never))
      .resolves.toBeNull();
  });

  it('applies the additive migration and retains one read timestamp across retries',async()=>{
    const db=new PGlite();
    try {
      await db.exec(`CREATE SCHEMA agents;
        CREATE TABLE agents.mobile_notification_history (
          tenant_id text NOT NULL, user_id text NOT NULL,
          event_id text NOT NULL, category text NOT NULL,
          title text NOT NULL, deep_link text,
          created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
          PRIMARY KEY (tenant_id,user_id,event_id));`);
      await db.exec(await readFile(new URL(
        '../../../../../packages/agents/migrations/0015_notification_read_at.sql',
        import.meta.url),'utf8'));
      await db.query(`INSERT INTO agents.mobile_notification_history
        (tenant_id,user_id,event_id,category,title)
        VALUES ('tenant-a','owner-a','notice','wallet','Transfer notice'),
               ('tenant-a','owner-b','notice','wallet','Other owner notice')`);
      const repo=createPostgresMobilePushRepository(db as unknown as Pool);
      const own={tenantId:'tenant-a',userId:'owner-a',eventId:'notice'} as never;
      const first=await repo.markNoticeRead(own);
      expect(first).toMatch(/^\d{4}-\d{2}-\d{2}T/);
      expect(await repo.markNoticeRead(own)).toBe(first);
      expect(await repo.markNoticeRead({tenantId:'other-tenant',
        userId:'owner-a',eventId:'notice'} as never)).toBeNull();
      const rows=await repo.listNotices({tenantId:'tenant-a',userId:'owner-b'} as never);
      expect(rows).toHaveLength(1);
      expect(rows[0]!.readAt).toBeNull();
    } finally {await db.close();}
  });
});
