import type { FastifyInstance } from "fastify";
import { decimalGbFromMb } from "./pricing.js";

/** Read-only projection of the NEW MB ledger; old MSNW/Credits never appear. */
export interface AuthoritativeMbBuckets {
  readonly purchasedMb: number;
  readonly welcomeMb: number;
  readonly reservedPurchasedMb: number;
  readonly reservedWelcomeMb: number;
  readonly frozen: boolean;
}
export interface AuthenticatedGbActor {
  readonly tenantId: string;
  readonly userId: string;
}
export interface GbWalletSummaryPorts {
  readonly authorize: (authorizationHeader: string | undefined) =>
    Promise<AuthenticatedGbActor>;
  readonly read: (actor: AuthenticatedGbActor) =>
    Promise<AuthoritativeMbBuckets | null>;
}

export function projectGbWalletSummary(balance: AuthoritativeMbBuckets) {
  const amounts = [
    balance.purchasedMb, balance.welcomeMb,
    balance.reservedPurchasedMb, balance.reservedWelcomeMb,
  ];
  if (amounts.some(value => !Number.isSafeInteger(value) || value < 0) ||
      balance.reservedPurchasedMb > balance.purchasedMb ||
      balance.reservedWelcomeMb > balance.welcomeMb ||
      !Number.isSafeInteger(balance.purchasedMb + balance.welcomeMb) ||
      !Number.isSafeInteger(balance.reservedPurchasedMb + balance.reservedWelcomeMb) ||
      typeof balance.frozen !== "boolean") {
    throw new TypeError("Malformed authoritative MB ledger snapshot");
  }
  const purchasedAvailableMb = balance.purchasedMb - balance.reservedPurchasedMb;
  const welcomeAvailableMb = balance.welcomeMb - balance.reservedWelcomeMb;
  const totalMb = balance.purchasedMb + balance.welcomeMb;
  const reservedMb = balance.reservedPurchasedMb + balance.reservedWelcomeMb;
  const availableMb = purchasedAvailableMb + welcomeAvailableMb;
  return Object.freeze({
    unit: "MB" as const,
    conversion: "decimal_1000" as const,
    totalMb,
    totalGb: decimalGbFromMb(totalMb),
    availableMb,
    availableGb: decimalGbFromMb(availableMb),
    purchasedAvailableMb,
    welcomeAvailableMb,
    reservedMb,
    reservedPurchasedMb: balance.reservedPurchasedMb,
    reservedWelcomeMb: balance.reservedWelcomeMb,
    canSpendPurchased: !balance.frozen && purchasedAvailableMb > 0,
    canUseForRepliesAndCalls: !balance.frozen && availableMb > 0,
    frozen: balance.frozen,
  });
}

/**
 * Missing ledger does not mean a fabricated 0-MB account or that the user
 * has been successfully granted welcome credit. Return unavailable and
 * suppress caching of another account's private financial projection.
 */
export function registerGbWalletSummaryRoutes(
  app: FastifyInstance, ports: GbWalletSummaryPorts,
): void {
  app.get("/v1/gb/wallet/summary", async (request, reply) => {
    reply.header("cache-control", "no-store");
    let actor: AuthenticatedGbActor;
    try {
      actor = await ports.authorize(request.headers.authorization);
      if (!actor?.tenantId || !actor.userId) throw new Error("unauthorized");
    } catch {
      reply.code(401);
      return { error: { code: "gb.wallet.unauthorized", message: "Authentication required" } };
    }
    try {
      const account = await ports.read(actor);
      if (!account) {
        reply.code(503);
        return { error: { code: "gb.wallet.not_ready", message: "MB wallet balance is unavailable" } };
      }
      return { balance: projectGbWalletSummary(account) };
    } catch {
      reply.code(503);
      return { error: { code: "gb.wallet.not_ready", message: "MB wallet balance is unavailable" } };
    }
  });
}
