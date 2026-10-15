import type { P2pActor, P2pService } from "./service.js";

/**
 * A buyer screenshot/claim is never release authority.
 * Only an authenticated SELLER deliberately acknowledging the exact locked
 * order and fiat amount can authorize release. This is separate from any
 * additional platform step-up authorization callback.
 *
 * The custody-backed token authority remains mandatory and unconfigured;
 * passing this guard alone cannot issue, transfer or release any MSNW.
 */
export async function sellerConfirmedReceipt(
  service: P2pService,
  actor: P2pActor,
  orderId: string,
  supplied: unknown,
): Promise<boolean> {
  if(!supplied || typeof supplied!=="object" || Array.isArray(supplied))
    return false;
  const body=supplied as Record<string,unknown>;
  if(Object.keys(body).sort().join(",")!=="attestation,fiatKobo,orderId" ||
    body.attestation!=="I HAVE RECEIVED PAYMENT" ||
    body.orderId!==orderId || typeof body.fiatKobo!=="string" ||
    !/^[1-9][0-9]*$/.test(body.fiatKobo)) return false;
  const order=await service.order(actor,orderId);
  return order.seller_id===actor.userId &&
    order.tenant_id===actor.tenantId &&
    order.state==="payment_claimed" &&
    order.fiat_kobo===body.fiatKobo;
}
