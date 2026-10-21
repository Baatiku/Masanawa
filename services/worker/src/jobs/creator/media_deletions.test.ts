import {it,expect,vi} from 'vitest';
import {createCreatorMediaCleanup} from './media_deletions.js';
it('acknowledges only after object deletion and independent absence readback',async()=>{
 for(const visible of [true,false]){
  const query=vi.fn(async(sql:string)=>({rows:sql.startsWith('SELECT')?[{tenant_id:'t',media_id:'m',object_key:'creator/t/c/m.webp'}]:[]}));
  const deleteObject=vi.fn(async()=>{}),statObject=vi.fn(async()=>visible?{bytes:12}:null);
  const result=await createCreatorMediaCleanup({pool:{query} as never,objects:{deleteObject,statObject}}).runOnce();
  expect(deleteObject).toHaveBeenCalledWith('creator/t/c/m.webp');
  expect(result).toEqual(visible?{completed:0,retried:1}:{completed:1,retried:0});
  expect(query.mock.calls.filter(([s])=>s.startsWith('UPDATE'))).toHaveLength(visible?0:1);
 }
});
