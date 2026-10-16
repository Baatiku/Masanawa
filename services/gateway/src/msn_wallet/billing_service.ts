import { formatNgnKobo, type BillingQuoteRepository } from "@masanawa/commerce";
import type { MsnBalanceAuthority } from "./routes.js";
import type { BillingFinancialService } from "../financial_billing.js";
import type { createMsnwBillingFunding } from "./billing_funding.js";
import { MsnwBillingError } from "./billing_funding.js";

type Ledger = ReturnType<typeof createMsnwBillingFunding>;

export function createMsnwBillingService(input: Readonly<{
  authorizer: MsnBalanceAuthority;
  quotes: BillingQuoteRepository;
  funding: Ledger;
  billing: BillingFinancialService;
}>) {
  async function owner(header: string | undefined) {
    try {
      const value=await input.authorizer.authorize({authorizationHeader:header});
      if (!value.tenantId || !value.userId)
        throw new MsnwBillingError("msnw.billing.auth_required",401);
      return value;
    } catch(error) {
      if(error instanceof MsnwBillingError) throw error;
      throw new MsnwBillingError("msnw.billing.auth_required",401);
    }
  }
  async function preview(request: Readonly<{
    authorizationHeader?: string | undefined; quoteId: string; quoteRevision: number;
  }>) {
    const who=await owner(request.authorizationHeader);
    return input.funding.preview(who,request.quoteId,request.quoteRevision);
  }
  async function execute(request: Readonly<{
    authorizationHeader?: string | undefined;
    quoteId: string;
    quoteRevision: number;
    expectedAmountMicro: string;
    expectedRateKoboPerMsnw: string;
  }>) {
    const who=await owner(request.authorizationHeader);
    const prior=await input.funding.reservation(who,request.quoteId);
    if(prior) {
      if(prior.amountMicro!==request.expectedAmountMicro ||
         prior.rateKoboPerMsnw!==request.expectedRateKoboPerMsnw)
        throw new MsnwBillingError("msnw.billing.idempotency_conflict",409);
      // Provider may have accepted the first attempt before a timeout.
      // Only reconcile the same existing fulfillment, NEVER dispatch again.
      return input.billing.readPurchase({
        authorizationHeader:request.authorizationHeader,
        reference:prior.reference,refresh:true,
      });
    }
    const quote=await input.funding.preview(
      who,request.quoteId,request.quoteRevision);
    if(quote.amountMicro!==request.expectedAmountMicro ||
        quote.rateKoboPerMsnw!==request.expectedRateKoboPerMsnw)
      throw new MsnwBillingError("msnw.billing.quote_repriced");
    if(!quote.sufficient)
      throw new MsnwBillingError("msnw.billing.insufficient_funds");
    const approved=await input.quotes.confirmQuote({
      tenantId: who.tenantId as Parameters<BillingQuoteRepository["confirmQuote"]>[0]["tenantId"],
      userId: who.userId as Parameters<BillingQuoteRepository["confirmQuote"]>[0]["userId"],
      quoteId:request.quoteId as Parameters<BillingQuoteRepository["confirmQuote"]>[0]["quoteId"],
      quoteRevision:request.quoteRevision,
      confirmedAt:new Date().toISOString(),
    });
    // The existing Flutterwave orchestration rechecks live catalog and
    // beneficiary, idempotently prepares and dispatches only AFTER reserve.
    if (!input.billing.purchaseMsnwOwned)
      throw new MsnwBillingError("msnw.billing.provider_unavailable",503);
    return input.billing.purchaseMsnwOwned({
      tenantId:who.tenantId,userId:who.userId,
      requestId:"msnw-bill-"+approved.quoteId,
      quoteId:approved.quoteId,
      quoteRevision:approved.revision,
      ...(approved.categoryCode ? {categoryCode:approved.categoryCode}:{}),
      billerCode:approved.billerCode,
      itemCode:approved.itemCode,
      itemName:approved.itemName,
      customerId:approved.customerId,
      amount:formatNgnKobo(approved.serviceAmountKobo),
    });
  }
  async function read(request:Readonly<{
    authorizationHeader?: string | undefined; reference:string;
  }>) {
    await owner(request.authorizationHeader);
    if(!/^msnw-bill-[A-Za-z0-9_-]{5,128}$/.test(request.reference))
      throw new MsnwBillingError("msnw.billing.reference_invalid",400);
    const receipt=await input.billing.readPurchase({
      authorizationHeader:request.authorizationHeader,
      reference:request.reference,
      refresh:true,
    });
    return receipt;
  }
  return Object.freeze({owner,preview,execute,read});
}
