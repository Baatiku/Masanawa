import {expect,it,vi} from 'vitest';
import type {Pool} from 'pg';
import {createPostgresMobileShellRepository} from './mobile-shell.js';
it('rolls back a mismatched request and exposes an HTTP conflict without owner details',async()=>{
 const query=vi.fn(async(sql:string)=>({rows:sql.includes('FOR SHARE')?[{user_id:'another-owner'}]:[]}));
 const release=vi.fn();const repository=createPostgresMobileShellRepository({connect:async()=>({query,release})} as unknown as Pool);
 const claim=()=>repository.claimTurn({scope:{tenantId:'tenant',userId:'user',characterId:'character',relationshipId:'relationship'},characterSessionId:'session',requestId:'request',kind:'text',userText:'changed',payloadHash:'changed'} as never);
 await expect(claim()).rejects.toMatchObject({statusCode:409,code:'agents.turn_request_conflict',message:'mobile turn request conflict'});
 expect(query.mock.calls.some(([sql])=>sql==='ROLLBACK')).toBe(true);
 expect(release).toHaveBeenCalledOnce();
});
