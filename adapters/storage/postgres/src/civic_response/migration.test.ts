import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import {describe,it,expect} from 'vitest';

describe('Masanawa Response durable migration',()=>{
  it('installs a bounded incident register, append-only history and sourced contacts',async()=>{
    const db=new PGlite();
    try{
      const sql=await readFile(new URL('../../../../../packages/security/migrations/0133_civic_response_centre.sql',import.meta.url),'utf8');
      await db.exec(sql);
      // Legacy isolated fixtures remove the migration register/security schema
      // but retain independent response records. A safe reset must not fail.
      await db.exec(sql);
      const contacts=await db.query<{id:string;phone:string}>(`SELECT id,phone FROM civic_response.agency_contacts ORDER BY id`);
      expect(contacts.rows).toHaveLength(5);
      expect(contacts.rows.find(row=>row.id==='ng-emergency-112')?.phone).toBe('112');
      await db.exec(await readFile(new URL('../../../../../packages/security/migrations/0134_civic_response_verified_directory.sql',import.meta.url),'utf8'));
      const complete=await db.query<{id:string;address:string}>(`SELECT id,address FROM civic_response.agency_contacts ORDER BY id`);
      expect(complete.rows).toHaveLength(73);
      expect(complete.rows.find(row=>row.id==='ng-icpc-oyo')?.address).toContain('Ibadan');
      expect(complete.rows.find(row=>row.id==='ng-police-command-oyo')?.address).toBeNull();
      await db.exec(await readFile(new URL('../../../../../packages/security/migrations/0135_civic_response_public_feed.sql',import.meta.url),'utf8'));
      const visibility=await db.query<{column_name:string}>(`SELECT column_name FROM information_schema.columns WHERE table_schema='civic_response' AND table_name='incidents' AND column_name IN ('public_consent','publication_status','public_title','public_summary','published_at') ORDER BY column_name`);
      expect(visibility.rows).toHaveLength(5);
      await db.query(`INSERT INTO civic_response.incidents(id,reference,tenant_id,reporter_id,request_key,title,description,category,urgency,location_state,source_mode)
        VALUES('ea46a4b0-4349-4106-bb32-ddb331ed901f','MR-20261120-EA46A4B0','tenant_one','user_one','request_abcdefgh12345678','Unsafe electrical wires','An exposed cable is lying in the street.','infrastructure','urgent','Oyo','typed')`);
      const cross=await db.query(`SELECT count(*)::int AS count FROM civic_response.incidents WHERE tenant_id='tenant_two'`);
      expect(cross.rows[0]).toMatchObject({count:0});
      await expect(db.query(`INSERT INTO civic_response.incidents(id,reference,tenant_id,reporter_id,request_key,title,description,category,urgency,location_state,source_mode)
        VALUES('da46a4b0-4349-4106-bb32-ddb331ed901f','MR-OTHER','tenant_one','user_one','request_abcdefgh12345678','A different report','Someone copied the request key.','crime_security','routine','Oyo','typed')`)).rejects.toThrow();
    }finally{await db.close()}
  });
});
