import { createHmac, randomBytes, timingSafeEqual } from "node:crypto";
import type { GbWalletSnapshot, GbTransferRequest, GbReceipt } from "@masanawa/postgres";

/**
 * Money-like MB transfer must be a two-step, server-bound, review-confirmed
 * flow. A signed quote nonce becomes the final ledger idempotency identity.
 * Reusing the same accepted review can never mint a second transfer.
 */
export interface GbSendActor {
  readonly tenantId: string;
  readonly userId: string;
}
export interface GbSendRecipient {
  readonly userId: string;
  readonly username: string;
  readonly displayName: string;
  readonly active: boolean;
  readonly avatarUrl?: string | null;
}
export interface GbSendPorts {
  readonly authorize: (header: string | undefined) => Promise<GbSendActor>;
  readonly resolveRecipient: (
    actor: GbSendActor, username: string,
  ) => Promise<GbSendRecipient | null>;
  readonly searchRecipients?: (actor:GbSendActor,query:string)=>Promise<readonly GbSendRecipient[]>;
  readonly balance: (actor: GbSendActor) => Promise<GbWalletSnapshot | null>;
  readonly transfer: (request: GbTransferRequest) => Promise<GbReceipt>;
  readonly readTransfer: (actor:GbSendActor,operationId:string) => Promise<GbReceipt|null>;
  /** Server secret only. Must not be a public config, repo value or mobile key. */
  readonly reviewSecret: string;
  readonly now?: () => Date;
  readonly nonce?: () => string;
}
export type GbSendReview = Readonly<{
  tenantId: string;
  actorId: string;
  recipientId: string;
  username: string;
  amountMb: number;
  nonce: string;
  expiresAt: string;
}>;

export class GbSendError extends Error {
  constructor(
    readonly status: 400 | 401 | 403 | 404 | 409 | 410 | 422 | 503,
    readonly code: string,
  ) {
    super(code);
    this.name = "GbSendError";
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
    throw new GbSendError(422, "invalid_username");
  }
  const handle=value.trim().replace(/^@/,"").toLowerCase();
  if (!validHandle(handle)) throw new GbSendError(422,"invalid_username");
  return handle;
}
function checkActor(actor: GbSendActor): void {
  if (!actor || !validAccount(actor.tenantId) || !validAccount(actor.userId)) {
    throw new GbSendError(401,"unauthorized");
  }
}
function mb(amount: number) {
  if (!Number.isSafeInteger(amount) || amount <= 0 || amount > 1_000_000_000) {
    throw new GbSendError(422,"invalid_mb_amount");
  }
  return amount;
}

/** Standalone contract: no routes until an approved username resolver exists. */
export function createGbSendReviewService(ports: GbSendPorts) {
  if (typeof ports.reviewSecret !== "string" ||
      Buffer.byteLength(ports.reviewSecret,"utf8") < 32) {
    throw new TypeError("Server-only signed-review key requires at least 32 bytes");
  }
  const now=ports.now ?? (()=>new Date());
  const nonce=ports.nonce ?? (()=>randomBytes(24).toString("base64url"));
  const mac=(payload: string) =>
    createHmac("sha256",ports.reviewSecret).update(payload).digest("base64url");
  const issue=(review:GbSendReview)=> {
    const payload=Buffer.from(JSON.stringify(review),"utf8").toString("base64url");
    return payload+"."+mac(payload);
  };
  const verify=(token:string,actor:GbSendActor):GbSendReview=>{
    if (typeof token!=="string" || token.length>4096) {
      throw new GbSendError(422,"invalid_review_token");
    }
    const parts=token.split(".");
    if (parts.length!==2 || !/^[A-Za-z0-9_-]+$/.test(parts[0]??"") ||
        !/^[A-Za-z0-9_-]{43}$/.test(parts[1]??"")) {
      throw new GbSendError(422,"invalid_review_token");
    }
    const expected=Buffer.from(mac(parts[0]!));
    const actual=Buffer.from(parts[1]!);
    if (actual.length!==expected.length ||
        !timingSafeEqual(actual,expected)) {
      throw new GbSendError(403,"review_signature_invalid");
    }
    let data:unknown;
    try {data=JSON.parse(Buffer.from(parts[0]!,"base64url").toString("utf8"));} catch {
      throw new GbSendError(422,"invalid_review_token");
    }
    if (!data || typeof data!=="object" || Array.isArray(data)) {
      throw new GbSendError(422,"invalid_review_token");
    }
    const r=data as Partial<GbSendReview>;
    if (r.tenantId!==actor.tenantId || r.actorId!==actor.userId ||
        typeof r.recipientId!=="string" || !validAccount(r.recipientId) ||
        typeof r.username!=="string" || !validHandle(r.username) ||
        typeof r.nonce!=="string" || !validNonce(r.nonce) ||
        typeof r.amountMb!=="number" ||
        !Number.isSafeInteger(r.amountMb) || r.amountMb<1 ||
        r.amountMb>1_000_000_000 ||
        typeof r.expiresAt!=="string" ||
        !Number.isFinite(Date.parse(r.expiresAt))) {
      throw new GbSendError(403,"review_account_mismatch");
    }
    return r as GbSendReview;
  };
  return {
    async quote(
      actor: GbSendActor, username: string, amountMb: number,
    ) {
      checkActor(actor);
      const normalized=normalizeHandle(username);
      const amount=mb(amountMb);
      const recipient=await ports.resolveRecipient(actor,normalized);
      if (!recipient?.active || recipient.username.toLowerCase()!==normalized ||
          !validAccount(recipient.userId)) {
        throw new GbSendError(404,"recipient_not_found");
      }
      if (recipient.userId===actor.userId) {
        throw new GbSendError(422,"self_send_not_allowed");
      }
      const wallet=await ports.balance(actor);
      if (!wallet || wallet.frozen) throw new GbSendError(503,"wallet_unavailable");
      const spendable=wallet.purchasedMb-wallet.reservedPurchasedMb;
      if (!Number.isSafeInteger(spendable) || spendable<0 ||
          spendable<amount) {
        throw new GbSendError(409,"insufficient_purchased_mb");
      }
      const randomNonce=nonce();
      if (!validNonce(randomNonce)) throw new TypeError("Invalid server nonce");
      const expiresAt=new Date(now().getTime()+5*60_000).toISOString();
      const review:GbSendReview={
        tenantId:actor.tenantId, actorId:actor.userId,
        recipientId:recipient.userId, username:normalized,
        amountMb:amount, nonce:randomNonce, expiresAt,
      };
      return {
        recipient:{id:recipient.userId,username:recipient.username,
          displayName:recipient.displayName},
        amountMb:amount, feeMb:0, expiresAt,
        operationId:"send_"+randomNonce,
        reviewToken:issue(review),
        requiresConfirmation:true as const,
      };
    },
    async confirm(actor:GbSendActor, reviewToken:string) {
      checkActor(actor);
      const review=verify(reviewToken,actor);
      // A completed original transfer is immutable even after expiry, recipient
      // rename/revocation or a later balance restriction. Never submit it twice.
      const old=await ports.readTransfer(actor,"send_"+review.nonce);
      if(old){
        if(old.state!=="completed"||old.amountMb!==review.amountMb||old.operationId!=="send_"+review.nonce)
          throw new GbSendError(503,"send_unavailable");
        return old;
      }
      if(Date.parse(review.expiresAt)<=now().getTime())throw new GbSendError(410,"review_expired");
      // Resolve AGAIN on confirmation so an expired/renamed/suspended user
      // cannot receive funds based on an earlier display-only name.
      const live=await ports.resolveRecipient(actor,review.username);
      if (!live || !live.active || live.userId!==review.recipientId ||
          live.username.toLowerCase()!==review.username) {
        throw new GbSendError(409,"recipient_changed");
      }
      // One unique server-generated nonce permanently binds operationId and
      // idempotencyKey. Even a new client request cannot double-spend it.
      return ports.transfer({
        tenantId:actor.tenantId, userId:actor.userId,
        recipientId:review.recipientId,amountMb:review.amountMb,
        operationId:"send_"+review.nonce,
        idempotencyKey:"send_"+review.nonce,
      });
    },
  };
}
