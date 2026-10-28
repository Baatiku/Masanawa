import { readFile } from "node:fs/promises";
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
        CREATE TABLE gb_wallet.accounts(tenant_id text,account_kind text,account_id text,
          purchased_mb bigint,welcome_mb bigint,reserved_purchased_mb bigint,reserved_welcome_mb bigint);
        CREATE TABLE gb_wallet.ngn_accounts(tenant_id text,account_id text,balance_kobo bigint,debt_kobo bigint);
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
  },30000);
  it("reconciles one PostgreSQL snapshot including held MB, releases and reversal debt",async()=>{
    const db=new PGlite();
    try{
      for(const file of ["0200_gb_wallet_foundation.sql","0205_ngn_funding_wallet.sql"])
        await db.exec(await readFile(new URL(`../../../../../packages/commerce/migrations/${file}`,import.meta.url),"utf8"));
      const hash="a".repeat(64);
      await db.exec(`
        INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id,purchased_mb,welcome_mb,reserved_purchased_mb,reserved_welcome_mb)
          VALUES('a','human','fan_a',900,100,200,50),('b','human','fan_a',999999,0,0,0);
        INSERT INTO gb_wallet.ngn_accounts(tenant_id,account_id,balance_kobo,debt_kobo)
          VALUES('a','fan_a',0,90000),('b','fan_a',999999,0);
      `);
      for(const [tenant,id,kind,amount,state] of [
        ["a","fund","verified_deposit",1400,"completed"],
        ["a","welcome","welcome_grant",100,"completed"],
        ["a","cash_exchange","ngn_exchange",1800,"completed"],
        ["a","usage","connected_call",2300,"completed"],
        ["a","held","connected_call",250,"reserved"],
        ["a","released","reply",100,"failed"],
        ["b","neighbor","verified_deposit",999999,"completed"],
      ])await db.query(`INSERT INTO gb_wallet.operations(tenant_id,operation_id,actor_id,idempotency_key,request_sha256,operation_kind,amount_mb,state)
        VALUES($1,$2,'fan_a',$2,$3,$4,$5,$6)`,[tenant,id,hash,kind,amount,state]);
      await db.exec(`
        INSERT INTO gb_wallet.movements(tenant_id,operation_id,from_kind,from_id,to_kind,to_id,source_bucket,target_bucket,amount_mb,created_at) VALUES
          ('a','fund','issuance','backing','human','fan_a','issuance','purchased',1400,'2026-10-01T00:00:00Z'),
          ('a','welcome','issuance','welcome','human','fan_a','issuance','welcome',100,'2026-10-01T00:00:00Z'),
          ('a','cash_exchange','issuance','ngn','human','fan_a','issuance','purchased',1800,'2026-10-25T00:00:00Z'),
          ('a','usage','human','fan_a','usage','call','purchased','usage',2300,'2026-10-25T00:00:00Z'),
          ('b','neighbor','issuance','backing','human','fan_a','issuance','purchased',999999,'2026-10-25T00:00:00Z');
        INSERT INTO gb_wallet.reservations(tenant_id,operation_id,account_kind,account_id,purchased_mb,welcome_mb,state,resolved_at) VALUES
          ('a','held','human','fan_a',200,50,'reserved',NULL),
          ('a','released','human','fan_a',100,0,'released','2026-10-25T00:00:00Z');
        INSERT INTO gb_wallet.ngn_entries(tenant_id,operation_id,account_id,kind,delta_kobo,request_sha256,amount_mb,rate_version,reverses_operation_id,created_at) VALUES
          ('a','cash_seed','fan_a','deposit',100000,'${hash}',NULL,NULL,NULL,'2026-10-01T00:00:00Z'),
          ('a','cash_exchange','fan_a','exchange',-90000,'${hash}',1800,'rate-v1',NULL,'2026-10-25T00:00:00Z'),
          ('a','cash_reversal','fan_a','deposit_reversal',-100000,'${hash}',NULL,NULL,'cash_seed','2026-10-25T00:00:00Z'),
          ('b','cash_other','fan_a','deposit',999999,'${hash}',NULL,NULL,NULL,'2026-10-25T00:00:00Z');
      `);
      const repo=createGbWalletActivityRepository(db as unknown as Pick<Pool,"query">);
      const actor={tenantId:"a",userId:"fan_a"};
      const result=await repo.summary(actor,7,new Date("2026-10-26T00:00:00Z"));
      expect(result.MB).toEqual({received:1800,spent:2300,net:-500});
      expect(result.NGN).toEqual({received:0,spent:190000,net:-190000});
      expect(result.reconciliation?.MB).toEqual({state:"matched",opening:1500,closing:1000,
        recordedBalance:1000,reserved:250,available:750,debt:0});
      expect(result.reconciliation?.NGN).toEqual({state:"matched",opening:100000,closing:-90000,
        recordedBalance:-90000,reserved:0,available:0,debt:90000});
      const absent=await repo.summary({tenantId:"a",userId:"unknown"},7);
      expect(absent.reconciliation?.MB).toMatchObject({state:"uninitialized",recordedBalance:null,available:null});
      expect(absent.reconciliation?.NGN.state).toBe("uninitialized");
      const own=await repo.summary({tenantId:"b",userId:"fan_a"},7,new Date("2026-10-26T00:00:00Z"));
      expect(own.reconciliation?.MB.closing).toBe(999999);
      await db.exec("UPDATE gb_wallet.accounts SET purchased_mb=901 WHERE tenant_id='a' AND account_id='fan_a'");
      expect((await repo.summary(actor,7)).reconciliation?.MB.state).toBe("mismatch");
      await db.exec("SET TIME ZONE 'America/New_York'");
      const dst=await repo.summary(actor,7,new Date("2026-11-03T00:00:00Z"));
      expect(new Date(dst.toAt).getTime()-new Date(dst.fromAt).getTime()).toBe(7*86400000);
    }finally{await db.close();}
  },30000);

});
