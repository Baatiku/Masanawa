import { createHash } from "node:crypto";
import type { Pool, PoolClient } from "pg";
import { withTransaction } from "../transaction.js";

/**
 * Internal reservation/settlement authority; no public route or provider
 * callback directly invokes these methods. Caller must establish the server-
 * authenticated actor and independently verify delivery before capture.
 */
export type GbReservedUse = "reply" | "connected_call" | "redeem";
export type ReservationState = "reserved" | "completed" | "failed";
export interface GbUsageReservation {
  readonly tenantId: string;
  readonly userId: string;
  readonly operationId: string;
  readonly idempotencyKey: string;
  readonly use: GbReservedUse;
  readonly amountMb: number;
}
export interface GbUsageReceipt {
  readonly operationId: string;
  readonly state: ReservationState;
  readonly amountMb: number;
  readonly welcomeReservedMb: number;
  readonly purchasedReservedMb: number;
}

const validId = (s: string) => /^[a-zA-Z0-9][a-zA-Z0-9_:.-]{0,159}$/.test(s);
const assertId = (s: string) => {
  if (!validId(s)) throw new TypeError("Invalid wallet identity/reference");
};
const safeMb = (n: number) => {
  if (!Number.isSafeInteger(n) || n <= 0) {
    throw new TypeError("MB must be a positive safe integer");
  }
};
const asMb = (v: string | number) => {
  const amount = BigInt(v);
  if (amount < 0n || amount > BigInt(Number.MAX_SAFE_INTEGER)) {
    throw new RangeError("MB exceeds supported bounds");
  }
  return Number(amount);
};

async function serializable<T>(action: () => Promise<T>): Promise<T> {
  for (let n=0; n<4; n++) {
    try { return await action(); }
    catch (e) {
      const code = (e as {code?:unknown} | null)?.code;
      if ((code!=="40001" && code!=="40P01") || n===3) throw e;
    }
  }
  throw new Error("gb.wallet.serialization_exhausted");
}

type Operation = {
  operation_id:string;
  actor_id:string;
  request_sha256:string;
  operation_kind:GbReservedUse;
  amount_mb:string;
  state:string;
};
type LockedAccount = {
  purchased_mb:string;
  welcome_mb:string;
  reserved_purchased_mb:string;
  reserved_welcome_mb:string;
  frozen:boolean;
};
type Reserved = {
  purchased_mb:string;
  welcome_mb:string;
  state:string;
};

export function createGbUsageReservations(pool: Pool, transactionClient?: PoolClient) {
  // A caller completing a durable reply can settle its hold in the SAME
  // transaction. The outer transaction owns retries, commit and rollback.
  const transaction = <T>(action: (client: PoolClient) => Promise<T>, options: {isolation: "serializable"}) =>
    transactionClient ? action(transactionClient) : withTransaction(pool, action, options);
  const retry = <T>(action: () => Promise<T>) => transactionClient ? action() : serializable(action);
  const checkActor = (v: Pick<GbUsageReservation,
  "tenantId"|"userId"|"operationId">) => {
    assertId(v.tenantId);
    assertId(v.userId);
    assertId(v.operationId);
  };
  const readOperation = async (tenantId:string,operationId:string,userId:string) => {
    const result=await (transactionClient ?? pool).query<Operation>(
      `SELECT operation_id,actor_id,request_sha256,operation_kind,
              amount_mb::text,state
       FROM gb_wallet.operations
       WHERE tenant_id=$1 AND operation_id=$2 AND actor_id=$3`,
      [tenantId,operationId,userId],
    );
    return result.rows[0] ?? null;
  };
  return {
    async reserve(input: GbUsageReservation): Promise<GbUsageReceipt> {
      checkActor(input);
      assertId(input.idempotencyKey);
      safeMb(input.amountMb);
      if (!(["reply","connected_call","redeem"] as string[]).includes(input.use)) {
        throw new TypeError("Unsupported MB use");
      }
      const fingerprint=createHash("sha256")
        .update(JSON.stringify([input.userId,input.use,input.amountMb]))
        .digest("hex");
      return retry(() => transaction( async client => {
        await client.query(
          `INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id)
           VALUES ($1,'human',$2) ON CONFLICT DO NOTHING`,
          [input.tenantId,input.userId],
        );
        const existingAccount=await client.query<LockedAccount>(
          `SELECT purchased_mb::text,welcome_mb::text,
                  reserved_purchased_mb::text,reserved_welcome_mb::text,frozen
           FROM gb_wallet.accounts
           WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2 FOR UPDATE`,
          [input.tenantId,input.userId],
        );
        const account=existingAccount.rows[0]!;
        const old=await client.query<Operation>(
          `SELECT operation_id,actor_id,request_sha256,operation_kind,
                  amount_mb::text,state
           FROM gb_wallet.operations
           WHERE tenant_id=$1 AND actor_id=$2 AND idempotency_key=$3`,
          [input.tenantId,input.userId,input.idempotencyKey],
        );
        if (old.rows[0]) {
          const previous=old.rows[0];
          if (previous.operation_id!==input.operationId ||
              previous.request_sha256!==fingerprint ||
              previous.operation_kind!==input.use) {
            throw new Error("gb.wallet.idempotency_conflict");
          }
          const reservation=await client.query<Reserved>(
            `SELECT purchased_mb::text,welcome_mb::text,state
             FROM gb_wallet.reservations
             WHERE tenant_id=$1 AND operation_id=$2`,
            [input.tenantId,input.operationId],
          );
          const row=reservation.rows[0];
          if (!row) throw new Error("gb.wallet.reservation_missing");
          return {
            operationId:input.operationId,
            state:previous.state==="completed"?"completed" as const:
              previous.state==="failed"?"failed" as const:"reserved" as const,
            amountMb:asMb(previous.amount_mb),
            welcomeReservedMb:asMb(row.welcome_mb),
            purchasedReservedMb:asMb(row.purchased_mb),
          };
        }
        if (account.frozen) throw new Error("gb.wallet.account_frozen");
        const purchased=BigInt(account.purchased_mb)-BigInt(account.reserved_purchased_mb);
        const welcome=BigInt(account.welcome_mb)-BigInt(account.reserved_welcome_mb);
        const allowWelcome=input.use!=="redeem";
        const welcomeReservation=allowWelcome
          ? (welcome<BigInt(input.amountMb)?welcome:BigInt(input.amountMb)) : 0n;
        const purchasedReservation=BigInt(input.amountMb)-welcomeReservation;
        if (purchasedReservation>purchased) throw new RangeError("gb.wallet.insufficient_mb");
        await client.query(
          `INSERT INTO gb_wallet.operations(
             tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
             operation_kind,amount_mb,state
           ) VALUES($1,$2,$3,$4,$5,$6,$7,'reserved')`,
          [input.tenantId,input.operationId,input.userId,input.idempotencyKey,
          fingerprint,input.use,input.amountMb],
        );
        await client.query(
          `UPDATE gb_wallet.accounts
           SET reserved_welcome_mb=reserved_welcome_mb+$3,
               reserved_purchased_mb=reserved_purchased_mb+$4,version=version+1
           WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [input.tenantId,input.userId,
           welcomeReservation.toString(),purchasedReservation.toString()],
        );
        await client.query(
          `INSERT INTO gb_wallet.reservations
             (tenant_id,operation_id,account_kind,account_id,
              purchased_mb,welcome_mb,state)
           VALUES($1,$2,'human',$3,$4,$5,'reserved')`,
          [input.tenantId,input.operationId,input.userId,
           purchasedReservation.toString(),welcomeReservation.toString()],
        );
        return {
          operationId:input.operationId,
          state:"reserved" as const,
          amountMb:input.amountMb,
          welcomeReservedMb:Number(welcomeReservation),
          purchasedReservedMb:Number(purchasedReservation),
        };
      }, {isolation:"serializable"}));
    },

    /**
     * Capture only after provider-confirmed success. For calls pass actual
     * started connected seconds, never an untrusted client duration.
     * Unused reserved MB are atomically released.
     */
    async capture(
      actor: {tenantId:string;userId:string;operationId:string},
      actualMb: number,
    ): Promise<GbUsageReceipt> {
      checkActor(actor);
      safeMb(actualMb);
      return retry(() => transaction( async client => {
        const row=await client.query<Reserved & { state:string }>(
          `SELECT r.purchased_mb::text,r.welcome_mb::text,r.state
             FROM gb_wallet.reservations r
             JOIN gb_wallet.operations o
               ON o.tenant_id=r.tenant_id AND o.operation_id=r.operation_id
           WHERE r.tenant_id=$1 AND r.operation_id=$2
             AND r.account_kind='human' AND r.account_id=$3
             AND o.actor_id=$3
           FOR UPDATE OF r`,
          [actor.tenantId,actor.operationId,actor.userId],
        );
        const reservation=row.rows[0];
        if (!reservation) throw new Error("gb.wallet.reservation_not_found");
        const original=await client.query<Operation>(
          `SELECT amount_mb::text,state,operation_id,actor_id,
                  request_sha256,operation_kind
           FROM gb_wallet.operations
           WHERE tenant_id=$1 AND operation_id=$2 AND actor_id=$3 FOR UPDATE`,
          [actor.tenantId,actor.operationId,actor.userId],
        );
        const operation=original.rows[0]!;
        if(reservation.state==="captured"&&operation.state==="completed"){
          if(asMb(operation.amount_mb)!==actualMb) {
            throw new Error("gb.wallet.capture_changed");
          }
          return {
            operationId:actor.operationId,state:"completed" as const,
            amountMb:actualMb,welcomeReservedMb:asMb(reservation.welcome_mb),
            purchasedReservedMb:asMb(reservation.purchased_mb),
          };
        }
        if (reservation.state!=="reserved"||operation.state!=="reserved") {
          throw new Error("gb.wallet.reservation_not_open");
        }
        const reservedWelcome=BigInt(reservation.welcome_mb);
        const reservedPurchased=BigInt(reservation.purchased_mb);
        if (BigInt(actualMb)>reservedWelcome+reservedPurchased) {
          throw new RangeError("gb.wallet.capture_exceeds_reservation");
        }
        const fromWelcome=reservedWelcome<BigInt(actualMb)
          ?reservedWelcome:BigInt(actualMb);
        const fromPurchased=BigInt(actualMb)-fromWelcome;
        await client.query(
          `UPDATE gb_wallet.accounts
           SET purchased_mb=purchased_mb-$3, welcome_mb=welcome_mb-$4,
               reserved_purchased_mb=reserved_purchased_mb-$5,
               reserved_welcome_mb=reserved_welcome_mb-$6,
               version=version+1
           WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [actor.tenantId,actor.userId,fromPurchased.toString(),
           fromWelcome.toString(),reservedPurchased.toString(),
           reservedWelcome.toString()],
        );
        for(const [bucket,spent] of [
          ["welcome",fromWelcome],["purchased",fromPurchased],
        ] as const){
          if(spent>0n) await client.query(
            `INSERT INTO gb_wallet.movements(
             tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
             source_bucket,target_bucket,amount_mb)
             VALUES($1,$2,'human',$3,'usage',$4,$5,'usage',$6)`,
            [actor.tenantId,actor.operationId,actor.userId,
             operation.operation_kind,bucket,spent.toString()],
          );
        }
        await client.query(
          `UPDATE gb_wallet.reservations
           SET state='captured',resolved_at=statement_timestamp()
           WHERE tenant_id=$1 AND operation_id=$2`,
          [actor.tenantId,actor.operationId],
        );
        await client.query(
          `UPDATE gb_wallet.operations
           SET state='completed',amount_mb=$3,updated_at=statement_timestamp()
           WHERE tenant_id=$1 AND operation_id=$2`,
          [actor.tenantId,actor.operationId,actualMb],
        );
        return {operationId:actor.operationId,state:"completed" as const,
          amountMb:actualMb,welcomeReservedMb:Number(reservedWelcome),
          purchasedReservedMb:Number(reservedPurchased)};
      }, {isolation:"serializable"}));
    },

    /** Definitive failure only. An unknown provider outcome stays reserved. */
    async release(actor: {tenantId:string;userId:string;operationId:string}):
      Promise<boolean> {
      checkActor(actor);
      return retry(() => transaction(async client=>{
        const r=await client.query<Reserved>(
          `SELECT r.purchased_mb::text,r.welcome_mb::text,r.state
           FROM gb_wallet.reservations r
           JOIN gb_wallet.operations o
             ON o.tenant_id=r.tenant_id AND o.operation_id=r.operation_id
           WHERE r.tenant_id=$1 AND r.operation_id=$2
             AND r.account_kind='human' AND r.account_id=$3 AND o.actor_id=$3
           FOR UPDATE OF r`,
          [actor.tenantId,actor.operationId,actor.userId],
        );
        const row=r.rows[0];
        if(!row) throw new Error("gb.wallet.reservation_not_found");
        if(row.state==="released")return false;
        if(row.state!=="reserved")throw new Error("gb.wallet.already_captured");
        await client.query(
          `UPDATE gb_wallet.accounts
           SET reserved_purchased_mb=reserved_purchased_mb-$3,
               reserved_welcome_mb=reserved_welcome_mb-$4,version=version+1
           WHERE tenant_id=$1 AND account_kind='human' AND account_id=$2`,
          [actor.tenantId,actor.userId,row.purchased_mb,row.welcome_mb],
        );
        await client.query(
          `UPDATE gb_wallet.reservations
           SET state='released',resolved_at=statement_timestamp()
           WHERE tenant_id=$1 AND operation_id=$2`,
          [actor.tenantId,actor.operationId],
        );
        await client.query(
          `UPDATE gb_wallet.operations SET state='failed',
           updated_at=statement_timestamp()
           WHERE tenant_id=$1 AND operation_id=$2 AND actor_id=$3`,
          [actor.tenantId,actor.operationId,actor.userId],
        );
        return true;
      },{isolation:"serializable"}));
    },
    /** Durable status lookup after timeout; returns server-authoritative state. */
    read: readOperation,
  };
}
