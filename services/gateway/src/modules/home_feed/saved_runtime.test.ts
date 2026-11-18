import {afterEach,describe,expect,it,vi} from 'vitest';
import {createGatewayApp} from '../../app.js';
const apps:ReturnType<typeof createGatewayApp>[]=[];
afterEach(async()=>{await Promise.all(apps.splice(0).map(app=>app.close()));});
describe('retained saved Masana Status route',()=>{
 it('uses authenticated tenant/account, private caching and bounded opaque cursor',async()=>{
  const list=vi.fn(async()=>({items:[],nextCursor:null}));
  const app=createGatewayApp({status:{
   sessions:{authorize:async({authorizationHeader})=>{
    if(authorizationHeader!=='Bearer current')throw Object.assign(new Error('auth'),{status:401});
    return {tenantId:'tenant-one',userId:'fan-one'};
   }},feed:{} as never,editorial:{} as never,saved:{list},
  }});apps.push(app);
  expect((await app.inject({url:'/v1/saved'})).statusCode).toBe(401);
  const response=await app.inject({url:'/v1/saved?cursor=opaque',headers:{authorization:'Bearer current'}});
  expect(response.statusCode).toBe(200);
  expect(response.headers['cache-control']).toBe('private, no-store');
  expect(list).toHaveBeenCalledWith({kind:'fan',tenantId:'tenant-one',id:'fan-one'},'opaque');
  for(const suffix of ['?cursor=a&cursor=b','?userId=other','?cursor='+ 'a'.repeat(241)])
   expect((await app.inject({url:'/v1/saved'+suffix,headers:{authorization:'Bearer current'}})).statusCode).toBe(422);
  expect(list).toHaveBeenCalledTimes(1);
 });
});
