import Fastify from 'fastify';
import { expect, it } from 'vitest';
import { registerMsnwCustodyRoutes } from './custody_routes.js';
import { MsnwCustodyError } from './custody_send.js';
it('authenticates account and recipient reads, derives scope server-side and forbids caching',async()=>{
 const app=Fastify(), seen:unknown[]=[];
 registerMsnwCustodyRoutes(app,{authorizer:{async authorize({authorizationHeader}){
   if(authorizationHeader!=='Bearer trusted')throw new Error('denied');
   return{tenantId:'tenant',userId:'sender'};
 }},ledger:{async account(owner:unknown){seen.push(owner);return{accountNumber:'8000000001'};},
 async lookupRecipient(owner:unknown,query:string){seen.push(owner,query);
   if(query==='missing')throw new MsnwCustodyError('msnw.recipient_not_found',404);
   return{found:true,userId:'receiver',displayName:'Recipient',handle:null,accountNumber:'8000000002'};
 }} as any});
 try{
   for(const url of ['/v1/wallet/account','/v1/wallet/lookup?query=8000000002'])expect((await app.inject(url)).statusCode).toBe(401);
   expect(seen).toEqual([]);
   const headers={authorization:'Bearer trusted'};
   const account=await app.inject({url:'/v1/wallet/account?userId=other',headers});
   expect(account.statusCode).toBe(200); expect(account.headers['cache-control']).toBe('private, no-store');
   expect(account.json()).toEqual({accountNumber:'8000000001'});
   const lookup=await app.inject({url:'/v1/wallet/lookup?query=8000000002&tenantId=other',headers});
   expect(lookup.statusCode).toBe(200);expect(lookup.headers['cache-control']).toBe('private, no-store');
   expect(seen).toEqual([{tenantId:'tenant',userId:'sender'},{tenantId:'tenant',userId:'sender'},'8000000002']);
   expect((await app.inject({url:'/v1/wallet/lookup',headers})).statusCode).toBe(400);
   expect((await app.inject({url:'/v1/wallet/lookup?query=missing',headers})).statusCode).toBe(404);
 }finally{await app.close();}
});
