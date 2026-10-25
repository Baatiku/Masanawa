import { describe,expect,it,vi } from 'vitest';
import type { Pool } from 'pg';
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
});
