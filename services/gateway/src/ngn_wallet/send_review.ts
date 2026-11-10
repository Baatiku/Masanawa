import { createHmac, randomBytes, timingSafeEqual } from "node:crypto";
import type { NgnSpendBalance, NgnTransferRequest, NgnTransferReceipt } from "@masanawa/postgres";

/**
 * NGN cash transfer must be a two-step, server-bound, review-confirmed
 * flow. A signed quote nonce becomes the final ledger idempotency identity.
 * Reusing the same accepted review can never mint a second transfer.
 */
export interface NgnSendActor {
  readonly tenantId: string;
  readonly userId: string;
}
export interface NgnSendRecipient {
  readonly userId: string;
  readonly username: string;
  readonly displayName: string;
  readonly active: boolean;
  readonly avatarUrl?: string | null;
}
export interface NgnSendPorts {
  readonly authorize: (header: string | undefined) => Promise<NgnSendActor>;
  readonly resolveRecipient: (
    actor: NgnSendActor, username: string,
  ) => Promise<NgnSendRecipient | null>;
  readonly searchRecipients?: (actor:NgnSendActor,query:string)=>Promise<readonly NgnSendRecipient[]>;
  readonly balance: (actor: NgnSendActor) => Promise<NgnSpendBalance | null>;
  readonly transfer: (request: NgnTransferRequest) => Promise<NgnTransferReceipt>;
  readonly readTransfer: (actor:NgnSendActor,operationId:string) => Promise<NgnTransferReceipt|null>;
  /** Server secret only. Must not be a public config, repo value or mobile key. */
  readonly reviewSecret: string;
  readonly now?: () => Date;
  readonly nonce?: () => string;
}
export type NgnSendReview = Readonly<{
  currency: "NGN";
  tenantId: string;
  actorId: string;
  recipientId: string;
  username: string;
  amountKobo: number;
  nonce: string;
  expiresAt: string;
}>;

export class NgnSendError extends Error {
  constructor(
    readonly status: 400 | 401 | 403 | 404 | 409 | 410 | 422 | 503,
    readonly code: string,
  ) {
    super(code);
    this.name = "NgnSendError";
  }
}
const validAccount = (text: string) =>
  /^[A-Za-z0-9][A-Za-z0-9_.:-]{0,159}$/.test(text);
const validHandle = (text: string) =>
  /^[a-z0-9_][a-z0-9_.-]{1,63}$/.test(text);
const validNonce = (text: string) =>
  /^[A-Za-z0-9_-]{22,128}$/.test(text);

function normalizeHandle(value: string): string {
  if (typeof value !== "string" || value.length > 80) {
    throw new NgnSendError(422, "invalid_username");
  }
  const handle=value.trim().replace(/^@/,"").toLowerCase();
  if (!validHandle(handle)) throw new NgnSendError(422,"invalid_username");
  return handle;
}
function checkActor(actor: NgnSendActor): void {
  if (!actor || !validAccount(actor.tenantId) || !validAccount(actor.userId)) {
    throw new NgnSendError(401,"unauthorized");
  }
}
function validKobo(amount: number) {
  if (!Number.isSafeInteger(amount) || amount <= 0 || amount > 1_000_000_000) {
    throw new NgnSendError(422,"invalid_ngn_amount");
  }
  return amount;
}

/** Standalone contract: no routes until an approved username resolver exists. */
export function createNgnSendReviewService(ports: NgnSendPorts) {
  if (typeof ports.reviewSecret !== "string" ||
      Buffer.byteLength(ports.reviewSecret,"utf8") < 32) {
    throw new TypeError("Server-only signed-review key requires at least 32 bytes");
  }
  const now=ports.now ?? (()=>new Date());
  const nonce=ports.nonce ?? (()=>randomBytes(24).toString("base64url"));
  const mac=(payload: string) =>
    createHmac("sha256",ports.reviewSecret).update("masanawa:ngn-send:v1\0").update(payload).digest("base64url");
  const issue=(review:NgnSendReview)=> {
    const payload=Buffer.from(JSON.stringify(review),"utf8").toString("base64url");
    return payload+"."+mac(payload);
  };
  const verify=(token:string,actor:NgnSendActor):NgnSendReview=>{
    if (typeof token!=="string" || token.length>4096) {
      throw new NgnSendError(422,"invalid_review_token");
    }
    const parts=token.split(".");
    if (parts.length!==2 || !/^[A-Za-z0-9_-]+$/.test(parts[0]??"") ||
        !/^[A-Za-z0-9_-]{43}$/.test(parts[1]??"")) {
      throw new NgnSendError(422,"invalid_review_token");
    }
    const expected=Buffer.from(mac(parts[0]!));
    const actual=Buffer.from(parts[1]!);
    if (actual.length!==expected.length ||
        !timingSafeEqual(actual,expected)) {
      throw new NgnSendError(403,"review_signature_invalid");
    }
    let data:unknown;
    try {data=JSON.parse(Buffer.from(parts[0]!,"base64url").toString("utf8"));} catch {
      throw new NgnSendError(422,"invalid_review_token");
    }
    if (!data || typeof data!=="object" || Array.isArray(data)) {
      throw new NgnSendError(422,"invalid_review_token");
    }
    const r=data as Partial<NgnSendReview>;
    if (r.currency!=="NGN" || r.tenantId!==actor.tenantId || r.actorId!==actor.userId ||
        typeof r.recipientId!=="string" || !validAccount(r.recipientId) ||
        typeof r.username!=="string" || !validHandle(r.username) ||
        typeof r.nonce!=="string" || !validNonce(r.nonce) ||
        typeof r.amountKobo!=="number" ||
        !Number.isSafeInteger(r.amountKobo) || r.amountKobo<1 ||
        r.amountKobo>1_000_000_000 ||
        typeof r.expiresAt!=="string" ||
        !Number.isFinite(Date.parse(r.expiresAt))) {
      throw new NgnSendError(403,"review_account_mismatch");
    }
    return r as NgnSendReview;
  };
  return {
    async quote(
      actor: NgnSendActor, username: string, amountKobo: number,
    ) {
      checkActor(actor);
      const normalized=normalizeHandle(username);
      const amount=validKobo(amountKobo);
      const recipient=await ports.resolveRecipient(actor,normalized);
      if (!recipient?.active || recipient.username.toLowerCase()!==normalized ||
          !validAccount(recipient.userId)) {
        throw new NgnSendError(404,"recipient_not_found");
      }
      if (recipient.userId===actor.userId) {
        throw new NgnSendError(422,"self_send_not_allowed");
      }
      const wallet=await ports.balance(actor);
      if (!wallet || wallet.frozen) throw new NgnSendError(503,"wallet_unavailable");
      const spendable=wallet.availableKobo;
      if (!Number.isSafeInteger(spendable) || spendable<0 ||
          spendable<amount) {
        throw new NgnSendError(409,"insufficient_balance");
      }
      const randomNonce=nonce();
      if (!validNonce(randomNonce)) throw new TypeError("Invalid server nonce");
      const expiresAt=new Date(now().getTime()+5*60_000).toISOString();
      const review:NgnSendReview={
        currency:"NGN",tenantId:actor.tenantId, actorId:actor.userId,
        recipientId:recipient.userId, username:normalized,
        amountKobo:amount, nonce:randomNonce, expiresAt,
      };
      return {
        recipient:{id:recipient.userId,username:recipient.username,
          displayName:recipient.displayName},
        amountKobo:amount, feeKobo:0, currency:"NGN" as const, unit:"kobo" as const, expiresAt,
        operationId:"send_"+randomNonce,
        reviewToken:issue(review),
        requiresConfirmation:true as const,
      };
    },
    async confirm(actor:NgnSendActor, reviewToken:string) {
      checkActor(actor);
      const review=verify(reviewToken,actor);
      // A completed original transfer is immutable even after expiry, recipient
      // rename/revocation or a later balance restriction. Never submit it twice.
      const old=await ports.readTransfer(actor,"send_"+review.nonce);
      if(old){
        if(old.state!=="completed"||old.amountKobo!==review.amountKobo||old.operationId!=="send_"+review.nonce)
          throw new NgnSendError(503,"send_unavailable");
        return old;
      }
      if(Date.parse(review.expiresAt)<=now().getTime())throw new NgnSendError(410,"review_expired");
      // Resolve AGAIN on confirmation so an expired/renamed/suspended user
      // cannot receive funds based on an earlier display-only name.
      const live=await ports.resolveRecipient(actor,review.username);
      if (!live || !live.active || live.userId!==review.recipientId ||
          live.username.toLowerCase()!==review.username) {
        throw new NgnSendError(409,"recipient_changed");
      }
      // One unique server-generated nonce permanently binds operationId and
      // idempotencyKey. Even a new client request cannot double-spend it.
      return ports.transfer({
        tenantId:actor.tenantId, userId:actor.userId,
        recipientId:review.recipientId,amountKobo:review.amountKobo,
        operationId:"send_"+review.nonce,
        idempotencyKey:"send_"+review.nonce,
      });
    },
  };
}
