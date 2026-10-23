import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},member={tenantId:'t',userId:'bob'};
type Page={paginationVersion:1;nextCursor:string|null;items:{id:string;name:string;description:string;pinned:boolean;visibility:string;role:string|null}[]};
beforeEach(async()=>{
 db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));
 await db.exec(`INSERT INTO rooms.rooms(tenant_id,room_id,slug,profession_title,description,state,visibility,owner_user_id,updated_at)
  SELECT 't','room_page_'||lpad(n::text,3,'0'),'room-page-'||n,'Room '||lpad(n::text,3,'0'),CASE WHEN n=13 THEN 'A 100%_# guide' ELSE 'Topic '||n END,
   'published',CASE WHEN n%10=0 THEN 'private' ELSE 'public' END,'alice','2026-01-01T00:00:00Z'::timestamptz+(n/3*interval '1 microsecond') FROM generate_series(0,109) n;
  INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role,pinned) SELECT tenant_id,room_id,'alice','owner',right(room_id,3)::int<5 FROM rooms.rooms;
  INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role) SELECT tenant_id,room_id,'bob','member' FROM rooms.rooms WHERE right(room_id,3)::int%3=0;`);
 const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});
},30000);
afterEach(async()=>{await db.close();});
it('pages every joined Room with stable pinned and microsecond/tie ordering',async()=>{
 let cursor:string|null=null;const ids:string[]=[],pins:boolean[]=[];
 do{
  const result:Page=await service.dispatch(owner,'GET','mine',{limit:17,...(cursor?{cursor}:{})});
  expect(result.paginationVersion).toBe(1);ids.push(...result.items.map(v=>v.id));pins.push(...result.items.map(v=>v.pinned));cursor=result.nextCursor;
 }while(cursor);
 expect(ids).toHaveLength(110);expect(new Set(ids).size).toBe(110);
 expect(pins.slice(0,5)).toEqual(Array(5).fill(true));expect(pins.slice(5).every(v=>v===false)).toBe(true);
 expect(ids[0]).toBe('room_page_004');expect(ids.at(-1)).toBe('room_page_005');
});
it('searches all authorized names/descriptions beyond the initial 100 and treats wildcard characters literally',async()=>{
 const initial:Page=await service.dispatch(owner,'GET','mine');expect(initial.items).toHaveLength(100);expect(initial.items.map(v=>v.id)).not.toContain('room_page_005');
 expect((await service.dispatch(owner,'GET','mine',{search:'room 005'})).items.map((v:any)=>v.id)).toEqual(['room_page_005']);
 expect((await service.dispatch(owner,'GET','mine',{search:'100%_#'})).items.map((v:any)=>v.id)).toEqual(['room_page_013']);
 expect((await service.dispatch(owner,'GET','mine',{search:'%'})).items).toHaveLength(1);
 expect((await service.dispatch(owner,'GET','mine',{search:'missing'})).items).toEqual([]);
});
it('keeps private/foreign/banned Rooms out of discovery and only active memberships in Joined',async()=>{
 let cursor:string|null=null;const visible:string[]=[];
 do{const page:Page=await service.dispatch(member,'GET','discover',{limit:20,...(cursor?{cursor}:{})});visible.push(...page.items.map(v=>v.id));cursor=page.nextCursor;}while(cursor);
 expect(visible).toHaveLength(99);expect(visible).not.toContain('room_page_000');
 expect((await service.dispatch(member,'GET','mine')).items.map((v:any)=>v.id)).toContain('room_page_000');
 await db.query("UPDATE rooms.memberships SET state='banned' WHERE user_id='bob' AND room_id='room_page_003'");
 expect((await service.dispatch(member,'GET','discover',{search:'Room 003'})).items).toEqual([]);
 expect((await service.dispatch(member,'GET','mine',{search:'Room 003'})).items).toEqual([]);
 expect((await service.dispatch({...member,tenantId:'other'},'GET','discover')).items).toEqual([]);
});
it('binds a cursor to exact search, collection and viewer, with bounded input failures',async()=>{
 const first:Page=await service.dispatch(owner,'GET','mine',{limit:3,search:'Room'});
 for(const [actor,path,input] of [[owner,'discover',{cursor:first.nextCursor,search:'Room'}],[owner,'mine',{cursor:first.nextCursor,search:'Topic'}],[member,'mine',{cursor:first.nextCursor,search:'Room'}],[owner,'mine',{limit:0}],[owner,'mine',{limit:101}],[owner,'mine',{search:'x'.repeat(101)}],[owner,'mine',{cursor:'not-a-valid-page'}]] as const){
  await expect(service.dispatch(actor,'GET',path,input)).rejects.toMatchObject({statusCode:422,message:'invalid_room_page'});
 }
});
it('rechecks membership, retirement and block authority on subsequent pages',async()=>{
 const first:Page=await service.dispatch(member,'GET','mine',{limit:5});
 await db.exec("UPDATE rooms.memberships SET state='left' WHERE user_id='bob' AND room_id='room_page_000';UPDATE rooms.rooms SET state='retired' WHERE room_id='room_page_003'");
 const rest:Page=await service.dispatch(member,'GET','mine',{cursor:first.nextCursor});
 expect(rest.items.map(v=>v.id)).not.toContain('room_page_000');
 expect(rest.items.map(v=>v.id)).not.toContain('room_page_003');
 const discover:Page=await service.dispatch(member,'GET','discover',{limit:5});
 await db.exec("INSERT INTO talks.safety_preferences VALUES('t','bob','alice',true)");
 expect((await service.dispatch(member,'GET','discover',{cursor:discover.nextCursor})).items).toEqual([]);
});
it('new/updated arrivals do not shift an older cursor into duplicate results',async()=>{
 const first:Page=await service.dispatch(owner,'GET','mine',{limit:10});
 await service.dispatch(owner,'POST','',{name:'Brand new Room',requestId:'new-room'});
 const next:Page=await service.dispatch(owner,'GET','mine',{limit:10,cursor:first.nextCursor});
 expect(next.items.some(v=>first.items.some(old=>old.id===v.id))).toBe(false);
 expect((await service.dispatch(owner,'GET','mine',{search:'Brand new'})).items).toHaveLength(1);
});
it('rejects syntactically valid but PostgreSQL-invalid year-zero cursors before SQL',async()=>{
 const first:Page=await service.dispatch(owner,'GET','mine',{limit:3});
 const value=JSON.parse(Buffer.from(first.nextCursor!,'base64url').toString('utf8'));value.time='0000-01-01T00:00:00.000000Z';
 await expect(service.dispatch(owner,'GET','mine',{cursor:Buffer.from(JSON.stringify(value)).toString('base64url')})).rejects.toMatchObject({statusCode:422,message:'invalid_room_page'});
});
it('keeps pin ordering and metadata scoped to the actual viewer',async()=>{
 expect((await service.dispatch(member,'GET','mine')).items.every((v:any)=>v.pinned===false)).toBe(true);
 await service.dispatch(member,'PATCH','room_page_006/community/preferences',{pinned:true});
 expect((await service.dispatch(member,'GET','mine')).items[0]).toMatchObject({id:'room_page_006',pinned:true,role:'member'});
 expect((await service.dispatch(owner,'GET','mine',{search:'Room 006'})).items[0]).toMatchObject({id:'room_page_006',pinned:false,role:'owner'});
});
