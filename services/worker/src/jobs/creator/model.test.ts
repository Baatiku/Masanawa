import {it,expect,vi} from 'vitest';
import {createCreatorStatusModel} from './model.js';
it('uses configured Gemini and excludes hidden thoughts from the reviewed draft',async()=>{
 const fetchImpl=vi.fn(async()=>new Response(JSON.stringify({candidates:[{content:{parts:[{thought:true,text:'hidden'},{text:'An original tip.'}]}}]}),{status:200}));
 const generate=createCreatorStatusModel({credentialsJson:JSON.stringify({keys:['fixture-key']}),fetchImpl});
 expect(await generate({displayName:'Garden guide'},'I own this content')).toBe('An original tip.');
 expect(fetchImpl).toHaveBeenCalledTimes(1);
});
it('missing credentials and failed provider never fabricate a post',async()=>{
 expect(()=>createCreatorStatusModel({})).toThrow('creator_status_credentials_required');
 const generate=createCreatorStatusModel({apiKey:'fixture-key',fetchImpl:async()=>new Response('outage',{status:503})});
 await expect(generate({},'Owner rights')).rejects.toThrow('creator_status_provider_unavailable');
});
