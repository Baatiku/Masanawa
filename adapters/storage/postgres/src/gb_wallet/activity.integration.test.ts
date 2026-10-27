import { PGlite } from "@electric-sql/pglite";
import type { Pool } from "pg";
import { describe, expect, it } from "vitest";
import { createGbWalletActivityRepository } from "./activity.js";

describe("real PostgreSQL activity chronology and fan isolation",()=>{
  it("uses posted MB movements and separate NGN entries, never a neighboring account",async()=>{
    const db=new PGlite();
    try {
      await db.exec(`
        CREATE SCHEMA gb_wallet;
        CREATE SCHEMA talks;CREATE SCHEMA agents;
        CREATE TABLE talks.public_profiles(tenant_id text,user_id text,display_name text,handle text,
          PRIMARY KEY(tenant_id,user_id));
        CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,display_name text,
          visible_in_user_app boolean,PRIMARY KEY(tenant_id,character_id));
        INSERT INTO talks.public_profiles VALUES('a','fan_b','Public Fan B','fan_b'),
          ('b','fan_b','Other tenant name','private_other_tenant');
        CREATE TABLE gb_wallet.operations(
          tenant_id text,operation_id text,operation_kind text,state text);
        CREATE TABLE gb_wallet.movements(
          movement_id bigint GENERATED ALWAYS AS IDENTITY,
          tenant_id text,operation_id text,from_kind text,from_id text,
          to_kind text,to_id text,amount_mb bigint,created_at timestamptz);
        CREATE TABLE gb_wallet.ngn_entries(
          tenant_id text,account_id text,operation_id text,kind text,
          delta_kobo bigint,created_at timestamptz);
      `);
      for(const [tenant,id,kind,state] of [
        ["a","sent","send","completed"],
        ["a","received","send","completed"],
        ["a","neighbor","send","completed"],
        ["b","other_tenant","send","completed"],
      ]){
        await db.query("INSERT INTO gb_wallet.operations VALUES($1,$2,$3,$4)",[tenant,id,kind,state]);
      }
      for(const [tenant,operation,from,to,amount,time] of [
        ["a","sent","fan_a","fan_b",500,"2026-10-25T12:02:00Z"],
        ["a","received","fan_b","fan_a",300,"2026-10-25T12:01:00Z"],
        ["a","neighbor","fan_b","fan_c",800,"2026-10-25T12:04:00Z"],
        ["b","other_tenant","fan_a","fan_b",900,"2026-10-25T12:05:00Z"],
      ]){
        await db.query(`INSERT INTO gb_wallet.movements
          (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,amount_mb,created_at)
          VALUES($1,$2,'human',$3,'human',$4,$5,$6)`,
          [tenant,operation,from,to,amount,time]);
      }
      await db.query(`INSERT INTO gb_wallet.ngn_entries VALUES
        ('a','fan_a','deposit_a','deposit',500050,'2026-10-25T12:03:00Z'),
        ('a','fan_b','deposit_b','deposit',700000,'2026-10-25T12:06:00Z')`);
      const repository=createGbWalletActivityRepository(db as unknown as Pick<Pool,"query">);
      const actor={tenantId:"a",userId:"fan_a"};
      const first=await repository.list(actor,2,null);
      expect(first.map(x=>[x.unit,x.amount,x.operationId])).toEqual([
        ["NGN",500050,"deposit_a"], ["MB",-500,"sent"],
      ]);
      const all={purpose:"all" as const,status:"all" as const,
        direction:"all" as const,days:"all" as const,
        reference:"",snapshotAt:"2026-10-26T00:00:00.000Z"};
      expect((await repository.list(actor,10,null,"all",{
        ...all,purpose:"funding"})).map(x=>x.operationId)).toEqual(["deposit_a"]);
      expect((await repository.list(actor,10,null,"all",{
        ...all,purpose:"transfers",direction:"outgoing"})).map(x=>x.operationId))
        .toEqual(["sent"]);
      expect((await repository.list(actor,10,null,"all",{
        ...all,status:"reversed"}))).toEqual([]);
      expect((await repository.list(actor,10,null,"all",{
        ...all,reference:"received"})).map(x=>x.operationId)).toEqual(["received"]);
      expect((await repository.list(actor,10,null,"all",{
        ...all,reference:"neighbor"}))).toEqual([]);
      expect((await repository.list(actor,10,null,"all",{
        ...all,days:"7"}))).toHaveLength(3);
      expect((await repository.list(actor,10,null,"all",{
        ...all,days:"7",snapshotAt:"2026-11-20T00:00:00.000Z"}))).toEqual([]);
      const summary=await repository.summary(actor,7,new Date("2026-10-26T00:00:00.000Z"));
      expect(summary.MB).toEqual({received:300,spent:500,net:-200});
      expect(summary.NGN).toEqual({received:500050,spent:0,net:500050});
      const outsider=await repository.summary({tenantId:"a",userId:"fan_b"},7,
        new Date("2026-10-26T00:00:00.000Z"));
      expect(outsider.NGN.received).toBe(700000);
      const old=await repository.summary(actor,7,new Date("2026-11-20T00:00:00.000Z"));
      expect(old.MB).toEqual({received:0,spent:0,net:0});
      expect((await repository.list(actor,5,null,"MB")).every(x=>x.unit==="MB")).toBe(true);
      expect((await repository.list(actor,5,null,"NGN")).every(x=>x.unit==="NGN")).toBe(true);
      expect((await repository.list(actor,5,null,"NGN")).map(x=>x.operationId))
        .toEqual(["deposit_a"]);
      expect(await repository.find(actor,first[0]!.entryId)).toEqual(first[0]);
      expect(await repository.find(actor,first[1]!.entryId)).toEqual(first[1]);
      expect(await repository.find({tenantId:"a",userId:"fan_b"},first[0]!.entryId)).toBeNull();
      expect(await repository.find({tenantId:"b",userId:"fan_a"},first[0]!.entryId)).toBeNull();
      const second=await repository.list(actor,2,{createdAt:first[1]!.createdAt,
        entryId:first[1]!.entryId});
      expect(second.map(x=>[x.unit,x.amount,x.operationId])).toEqual([
        ["MB",300,"received"],
      ]);
      expect(await repository.list({tenantId:"x",userId:"fan_a"},20,null)).toEqual([]);
      expect((await repository.find(actor,first[1]!.entryId))?.details)
        .toMatchObject({counterpartyKind:"human",counterpartyId:"fan_b",counterpartyName:'Public Fan B',counterpartyHandle:'fan_b'});
      expect(JSON.stringify(first)).not.toContain('Other tenant name');
      await db.exec(`ALTER TABLE gb_wallet.ngn_entries ADD COLUMN amount_mb bigint,
        ADD COLUMN rate_version text,ADD COLUMN reverses_operation_id text;
        ALTER TABLE gb_wallet.movements ADD COLUMN source_bucket text,ADD COLUMN target_bucket text;
        INSERT INTO gb_wallet.operations VALUES('a','exchange_a','ngn_exchange','completed');
        INSERT INTO gb_wallet.ngn_entries VALUES('a','fan_a','exchange_a','exchange',-500050,
          '2026-10-25T12:07:00Z',1050,'rate-v1',NULL);
        INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
          amount_mb,created_at,source_bucket,target_bucket) VALUES
          ('a','exchange_a','issuance','ngn','human','fan_a',1050,'2026-10-25T12:07:00Z','issuance','purchased');`);
      const rich=await repository.list(actor,10,null,'all',{...all,reference:'exchange_a'});
      expect(rich).toHaveLength(2);
      for(const entry of rich)expect(entry.details).toMatchObject({counterpartyKind:'service',
        exchangedMb:1050,exchangeKobo:500050,rateVersion:'rate-v1'});
      expect(rich.find(x=>x.unit==='MB')?.details).toMatchObject({sourceBucket:'issuance',targetBucket:'purchased'});
    } finally {await db.close();}
  },15000);
});
