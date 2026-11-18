import type { FastifyInstance } from "fastify";
import type { FlutterwaveBillItem } from "@masanawa/providers";
import Type from "typebox";
import {
  GbDataCatalogueError,
  projectVerifiedWholeGbBundles,
  quoteVerifiedWholeGb,
  type ApprovedWholeGbBundle,
  type NigerianNetwork,
} from "./data_catalogue.js";

export interface GbDataCataloguePorts {
  /** Must authenticate the real platform session, not accept a user ID. */
  readonly authorize: (authorizationHeader: string | undefined) =>
    Promise<Readonly<{ tenantId: string; userId: string }>>;
  /** Stored admin-reviewed configuration only; never client submitted. */
  readonly approved: () => Promise<readonly ApprovedWholeGbBundle[]>;
  /** Fresh Flutterwave bill items from the existing credentialed adapter. */
  readonly liveItems: (approved: readonly ApprovedWholeGbBundle[]) =>
    Promise<readonly FlutterwaveBillItem[]>;
  readonly now?: () => Date;
}

/** Read-only catalog and quote; do not create a payment or reserve MB here. */
export function registerGbDataCatalogueRoutes(
  app: FastifyInstance,
  ports: GbDataCataloguePorts,
): void {
  const now = ports.now ?? (() => new Date());
  const deny = (error: unknown, reply: { code(status: number): unknown }) => {
    if (error instanceof GbDataCatalogueError) {
      reply.code(error.code === "invalid_phone" ? 400
        : error.code === "stale_selection" ? 409
        : error.code === "bundle_unavailable" ? 404 : 503);
      return { error: { code: error.code, message: error.message } };
    }
    if (typeof error === "object" && error !== null &&
        "statusCode" in error &&
        ((error as { statusCode?: unknown }).statusCode === 401 ||
         (error as { statusCode?: unknown }).statusCode === 403)) {
      reply.code((error as { statusCode: 401 | 403 }).statusCode);
      return { error: { code: "unauthorized", message: "Authentication required" } };
    }
    if (error instanceof Error && error.message === "gb.data.unauthorized") {
      reply.code(401);
      return { error: { code: "unauthorized", message: "Authentication required" } };
    }
    reply.code(503);
    return { error: { code: "catalog_unavailable", message: "Data bundles are unavailable" } };
  };
  async function fetchAuthorized(
    authorizationHeader: string | undefined,
  ) {
    const identity = await ports.authorize(authorizationHeader);
    if (!identity || !identity.tenantId || !identity.userId) {
      throw new Error("gb.data.unauthorized");
    }
    const approved = await ports.approved();
    const liveItems = await ports.liveItems(approved);
    return { approved, liveItems };
  }
  app.get("/v1/gb/data/bundles", {
    schema: {
      querystring: Type.Object({
        units: Type.Optional(Type.Literal("mb")),
        network: Type.Optional(Type.Union([
          Type.Literal("MTN"), Type.Literal("AIRTEL"),
          Type.Literal("GLO"), Type.Literal("9MOBILE"),
        ])),
      }, { additionalProperties: false }),
    },
  }, async (request, reply) => {
    try {
      const { approved, liveItems } = await fetchAuthorized(request.headers.authorization);
      const {network,units} = request.query as { network?: NigerianNetwork; units?: "mb" };
      const options = projectVerifiedWholeGbBundles(approved, liveItems, now())
        .filter(bundle => (network === undefined || bundle.network === network) &&
          (units === "mb" || (Number.isSafeInteger(bundle.allowanceGb) && bundle.allowanceGb >= 1)));
      return { bundles: options };
    } catch (error) { return deny(error, reply); }
  });

  app.post("/v1/gb/data/quote", {
    schema: {
      body: Type.Object({
        bundleId: Type.String({ minLength: 3, maxLength: 260 }),
        version: Type.String({ minLength: 1, maxLength: 128 }),
        recipientPhone: Type.String({ minLength: 7, maxLength: 24 }),
      }, { additionalProperties: false }),
    },
  }, async (request, reply) => {
    try {
      const { approved, liveItems } = await fetchAuthorized(request.headers.authorization);
      const body = request.body as {
        bundleId: string; version: string; recipientPhone: string;
      };
      return { previewOnly: true as const, quote: quoteVerifiedWholeGb({
        approved, liveItems, itemId: body.bundleId,
        version: body.version, recipientPhone: body.recipientPhone,
        now: now(),
      }) };
    } catch (error) { return deny(error, reply); }
  });
}
