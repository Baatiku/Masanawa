import { registerTalkSafetyRoutes } from './talk_safety_routes.js';
import { registerHistoricalFinancialCallbacks } from './historical_financial_callbacks.js';
import {
  DEFAULT_RECHARGE_RATE_BOOK,
  quotePackage,
  quoteVerifiedDeposit,
  validateRechargeRateBook,
  type RechargeRateBook,
} from "./gb_wallet/pricing.js";
import { registerGbDataCatalogueRoutes, type GbDataCataloguePorts } from "./gb_data/data_catalogue_routes.js";
import { registerGbWalletSummaryRoutes, type GbWalletSummaryPorts } from "./gb_wallet/summary_routes.js";
import { registerMobileDiagnosticsRoutes, type MobileDiagnosticsPorts } from "./mobile_diagnostics.js";
import { registerAuthEmailRoutes } from "./auth_email_routes.js";
import { streamConversationReply } from "./conversation_stream.js";
import { GeminiProviderError } from "./gemini_failure.js";
import { registerStatusRuntime, type StatusRuntime } from "./modules/home_feed/runtime.js";
import { registerMasanaInboxRoutes, type MasanaInboxRoutesDeps } from "./modules/masana_chat/inbox_routes.js";
import {registerMasanaRoutes} from "./modules/masana/service.js";
import Fastify from "fastify";
import type { Instant } from "@masanawa/contracts";
import { nowInstant, parseCanonicalId } from "@masanawa/contracts";
import type { AgentDirectoryService } from "./agent_directory.js";
import type { AgentConversationService } from "./agent_conversation_contract.js";
import type { CreatorCloneService } from "./creator_clone.js";
import type { CreatorEconomyService } from "./creator_economy.js";
import type { CreatorSkillService } from "./creator_skills.js";
import type { CommerceCatalogService } from "./commerce_catalog.js";
import type { CommerceFulfillmentService } from "./commerce_fulfillment.js";
import type {
  AgentShellService,
  LiveVoiceTokenService,
} from "./agent_shell_contract.js";
import { registerAgentShellRoutes } from "./agent_shell_routes.js";
import { registerPrivateChatMediaRoutes } from "./private_chat_media_routes.js";
import type { createPrivateChatMediaService } from "./private_chat_media.js";
import type { createMsnwUsdtConversion } from "./msn_wallet/usdt_conversion.js";
import type { createMsnwBillingService } from "./msn_wallet/billing_service.js";
import type { TalkReplayService } from "./talk_replay/service.js";
import type { TalkModerationService } from "./talk_moderation/service.js";
import type { TalkAiSeatService } from "./talk_ai_seats/service.js";
import type { TalkLiveService } from "./talk_live/service.js";
import { registerTalkProfileRoutes } from "./talk_profile_routes.js";
import type { TalkProfileService } from "./talk_profiles/service.js";
import type { TalkActivityService } from "./talk_activity/service.js";
import type { TalkSearchService } from "./talk_search/service.js";
import type { TalkLibraryService } from "./talk_library/service.js";
import type { TalkGiftService } from "./talk_gifts/service.js";
import type { TalkPollService } from "./talk_polls/service.js";
import type { TalkSafetyService } from "./talk_safety/service.js";
import type { DirectTwinService } from "./talk_direct_twin/service.js";
import type { TalkService } from "./talks/service.js";
import type { TwinProductionRuntime } from "./twin_production_runtime.js";
import { registerAccountDeletionRoutes } from "./account_deletion_routes.js";
import type { AccountDeletionService } from "./account_deletion.js";
import { type MsnBalanceAuthority, type MsnBalanceReader } from "./msn_wallet/routes.js";
import { type MsnFundingStatusReader } from "./msn_wallet/funding_routes.js";
import type { MsnwPaystackEnrollmentService } from "./msn_wallet/paystack_customer_enrollment.js";
import type { MsnwPaystackDvaService } from "./msn_wallet/paystack_dva.js";
import type { MsnwOnchainBalanceDependencies } from "./msn_wallet/msnw_onchain_balance.js";
import type { createMsnwCustodyService } from "./msn_wallet/custody_send.js";
import type { MsnwPaystackFiatService } from "./msn_wallet/paystack_fiat_evidence.js";
import { type P2pRoutesDependencies } from "./p2p/routes.js";
import { registerTwinSafetyRoutes } from "./twin_safety_routes.js";
import type { BillingCheckoutService } from "./billing_checkout.js";
import type { BillingFinancialService } from "./financial_billing.js";
import type { BillingWalletService } from "./billing_wallet.js";
import type { MobilePushRegistrationService } from "./mobile_push.js";
import type { AccountNotificationService } from "./notification_preferences.js";
import type { FinancialService } from "./financial_service.js";
import {
  CustomerAuthError,
  type CustomerAuthService,
} from "./customer_auth.js";
import { registerGatewayRequestCorrelation } from "./request_correlation.js";
import { requiresFinancialCustomerState } from "./financial_mutation_guard.js";
import { authClientLabel } from "./auth_client_label.js";
import { AccountExportError, type AccountDataExports } from "./account_data_exports.js";
import type { TypeBoxTypeProvider } from "@fastify/type-provider-typebox";
import Type from "typebox";
import { registerCallHistoryRoutes } from "./call_history/routes.js";
import type { CallHistoryService } from "./call_history/service.js";

export interface ReadinessCheck {
  readonly name: string;
  check(): Promise<{ readonly ready: boolean; readonly reason?: string }>;
}

export interface GatewayAppOptions {
  /** Staged product-gate; enable only after all retained MB routes qualify. */
  readonly productScope?: "legacy" | "masana-lite";
  readonly status?: StatusRuntime;
  /** Canonical approved Masana profiles and immutable editor-controlled revisions. */
  readonly masana?: Parameters<typeof registerMasanaRoutes>[1];
  /** Owner-scoped creator Masana service. May return provider unavailable, never mock success. */
  /** One canonical session and PostgreSQL-backed inbox; no parallel journal. */
  readonly masanaInbox?: MasanaInboxRoutesDeps;
  readonly callHistory?: CallHistoryService;
  readonly readinessChecks?: readonly ReadinessCheck[];
  readonly now?: () => Instant;
  readonly isDraining?: () => boolean;
  readonly agentDirectory?: AgentDirectoryService;
  readonly agentConversation?: AgentConversationService;
  readonly creatorClone?: CreatorCloneService;
  readonly creatorEconomy?: CreatorEconomyService;
  readonly creatorSkills?: CreatorSkillService;
  readonly commerceCatalog?: CommerceCatalogService;
  readonly commerceFulfillment?: CommerceFulfillmentService;
  readonly agentShell?: AgentShellService;
  readonly privateChatMedia?: ReturnType<typeof createPrivateChatMediaService>;
  readonly liveVoiceTokens?: LiveVoiceTokenService;
  readonly mobilePush?: MobilePushRegistrationService;
  readonly mobileNotifications?: AccountNotificationService;
  readonly customerAuth?: CustomerAuthService;
  readonly mobileDiagnostics?: MobileDiagnosticsPorts;
  readonly accountDataExports?: AccountDataExports;
  readonly accountDeletion?: AccountDeletionService;
  readonly talks?: TalkService;
  readonly talkReplay?: TalkReplayService;
  readonly talkModeration?: TalkModerationService;
  readonly talkAiSeats?: TalkAiSeatService;
  readonly talkLive?: TalkLiveService;
  readonly talkProfiles?: TalkProfileService;
  readonly talkActivity?: TalkActivityService;
  readonly talkSearch?: TalkSearchService;
  readonly talkLibrary?: TalkLibraryService;
  readonly talkGifts?: TalkGiftService;
  readonly talkPolls?: TalkPollService;
  readonly talkSafety?: TalkSafetyService;
  readonly directTwin?: DirectTwinService;
  readonly billingCheckout?: BillingCheckoutService;
  readonly billingFinancial?: BillingFinancialService;
  readonly billingWallet?: BillingWalletService;
  readonly msnwBilling?: ReturnType<typeof createMsnwBillingService>;
  readonly msnwConversion?: {
    authorizer: MsnBalanceAuthority;
    service: ReturnType<typeof createMsnwUsdtConversion>;
  };
  readonly financial?: FinancialService;
  readonly twinProduction?: TwinProductionRuntime;
  /** Read-only off-chain MSN. No issuance authority in a customer route. */
  readonly msnBalance?: Readonly<{ authorizer: MsnBalanceAuthority; ledger: MsnBalanceReader }>;
  /** Funding-status read only, intentionally OFF until the staged schema is installed. */
  readonly msnFunding?: Readonly<{ authorizer: MsnBalanceAuthority; reader: MsnFundingStatusReader }>;
  /** Paystack DVA is consent and KYC gated; it does not credit MSNW. */
  readonly msnwPaystackDva?: MsnwPaystackDvaService;
  readonly msnwPaystackEnrollment?: MsnwPaystackEnrollmentService;
  /** Finalized, identity-verified ERC20 MSNW customer balance (no legacy MSN). */
  readonly msnwOnchainBalance?: MsnwOnchainBalanceDependencies;
  /** Fiat verification journal only: no MSNW issuance permission. */
  readonly msnwPaystackFiat?: MsnwPaystackFiatService;
  readonly msnwCustody?: {
    authorizer: MsnBalanceAuthority;
    ledger: ReturnType<typeof createMsnwCustodyService>;
  };
  readonly p2p?: P2pRoutesDependencies;
  /** Independently versioned MB package prices; never authorizes deposit credit. */
  readonly gbRechargeRateBook?: RechargeRateBook;
  readonly gbWalletSummary?: GbWalletSummaryPorts;
  /** Optional, qualified whole-GB read-only data catalogue, never a checkout. */
  readonly gbDataCatalogue?: GbDataCataloguePorts;

  /** Operator-verified legacy Credit Send; never inferred from Wallet mount. */
  readonly walletCreditSendEnabled?: boolean;
}

const HealthResponseSchema = Type.Object(
  {
    service: Type.Literal("gateway"),
    status: Type.Literal("ok"),
    time: Type.String(),
  },
  { additionalProperties: false },
);

const ReadinessCheckSchema = Type.Object(
  {
    name: Type.String(),
    ready: Type.Boolean(),
    reason: Type.Optional(Type.String()),
  },
  { additionalProperties: false },
);


const AgentDirectoryEntrySchema = Type.Object(
  {
    characterId: Type.String(),
    characterVersionId: Type.String(),
    displayName: Type.String(),
    roleLabel: Type.String(),
    about: Type.String(),
    greeting: Type.Union([Type.String(), Type.Null()]),
    presence: Type.Union([
      Type.Literal("available"),
      Type.Literal("listening"),
      Type.Literal("working"),
      Type.Literal("on_call"),
      Type.Literal("offline"),
      Type.Literal("unknown"),
    ]),
    activeWorkCount: Type.Integer({ minimum: 0 }),
    supportAgent: Type.Boolean(),
    defaultPlatformAgent: Type.Boolean(),
    voiceProvider: Type.Union([Type.String(), Type.Null()]),
    voiceName: Type.Union([Type.String(), Type.Null()]),
  },
  { additionalProperties: false },
);

const AgentDirectoryResponseSchema = Type.Object(
  {
    agents: Type.Array(AgentDirectoryEntrySchema),
  },
  { additionalProperties: false },
);


const AgentSessionOpenBodySchema = Type.Object(
  { characterId: Type.String() },
  { additionalProperties: false },
);

const AgentSessionOpenResponseSchema = Type.Object(
  { characterSessionId: Type.String() },
  { additionalProperties: false },
);

const AgentSessionParamsSchema = Type.Object(
  { characterSessionId: Type.String() },
  { additionalProperties: false },
);

const AgentTurnBodySchema = Type.Object(
  {
    characterId: Type.String(),
    text: Type.String({ minLength: 1, maxLength: 32000 }),
  },
  { additionalProperties: false },
);


const AgentMediaTurnBodySchema = Type.Object(
  {
    characterId: Type.String(),
    caption: Type.String({ maxLength: 32000 }),
    mimeType: Type.String({ minLength: 3, maxLength: 160 }),
    dataBase64: Type.String({ minLength: 1, maxLength: 12000000 }),
  },
  { additionalProperties: false },
);

const AgentMediaSetTurnBodySchema = Type.Object(
  {
    characterId: Type.String(),
    caption: Type.String({ maxLength: 32000 }),
    media: Type.Array(
      Type.Object(
        {
          mimeType: Type.String({ minLength: 3, maxLength: 160 }),
          dataBase64: Type.String({ minLength: 1, maxLength: 12000000 }),
          name: Type.Optional(Type.String({ maxLength: 240 })),
        },
        { additionalProperties: false },
      ),
      { minItems: 2, maxItems: 8 },
    ),
  },
  { additionalProperties: false },
);

const AgentTurnResponseSchema = Type.Object(
  {
    reply: Type.String(),
    agentRunId: Type.String(),
    parts: Type.Array(Type.Unknown()),
    audioBase64: Type.Optional(Type.String()),
    audioMimeType: Type.Optional(Type.String()),
    audioDurationMs: Type.Optional(Type.Number()),
    audioTranscript: Type.Optional(Type.String()),
  },
  { additionalProperties: false },
);

const ReadinessResponseSchema = Type.Object(
  {
    service: Type.Literal("gateway"),
    status: Type.Union([Type.Literal("ready"), Type.Literal("not-ready")]),
    time: Type.String(),
    checks: Type.Array(ReadinessCheckSchema),
  },
  { additionalProperties: false },
);

export function createGatewayApp(options: GatewayAppOptions = {}) {
  const app = Fastify({
    logger: false,
    bodyLimit: 1_048_576,
    requestTimeout: 30_000,
  }).withTypeProvider<TypeBoxTypeProvider>();

  const now = options.now ?? nowInstant;
  const checks = options.readinessChecks ?? [];

  app.setErrorHandler((error, request, reply) => {
    if(error instanceof CustomerAuthError) {
      void reply.code(error.statusCode).send({error:{code:error.code,message:error.code}});
      return;
    }
    if (error instanceof GeminiProviderError) {
      void reply.code(error.statusCode).send({ error: { code: error.code, message: error.message } });
      return;
    }
    if (error instanceof Error && error.message === "financial.auth.unauthorized") {
      void reply.code(401).send({
        error: {
          code: "financial.auth.unauthorized",
          message: "Authentication required",
        },
      });
      return;
    }
    const statusCode =
      typeof error === "object" &&
      error !== null &&
      "statusCode" in error &&
      typeof (error as { readonly statusCode?: unknown }).statusCode === "number"
        ? (error as { readonly statusCode: number }).statusCode
        : 500;
    if (statusCode >= 400 && statusCode < 500) {
      void reply.code(statusCode).send({
        error: {
          code: statusCode === 400 ? "gateway.invalid_request" : "gateway.request_rejected",
          message: statusCode === 400 ? "Invalid request" : "Request rejected",
        },
      });
      return;
    }
    request.log.error(error);
    void reply.code(500).send({
      error: {
        code: "gateway.internal_error",
        message: "Internal server error",
      },
    });
  });

  registerGatewayRequestCorrelation(app);
  registerHistoricalFinancialCallbacks(app, options);
  // Apply to all money-affecting HTTP writes regardless of the individual
  // service's route registration. Reads and non-financial account recovery
  // remain available for restricted customers. Refuse new financial actions
  // during the first 24h after a password reset.
  app.addHook("preHandler",async(request)=>{
    // A provider-signed callback must reconcile even if the customer's
    // login is restricted or recovering. The callback handler separately
    // authenticates the provider signature against the original payload.
    // Unknown/retired URLs have no mutation handler and must remain 404.
    if (!request.routeOptions.url) return;
    if(!requiresFinancialCustomerState(request.method,request.url))return;
    // A missing customer-auth component is a production configuration failure,
    // not permission to spend. Never silently bypass suspended/recovery holds.
    if (!options.customerAuth) {
      throw new CustomerAuthError("AUTH_UNAVAILABLE", 503);
    }
    await options.customerAuth.authorizeSensitiveMutation({
      authorizationHeader:request.headers.authorization,
    });
  });



  if (options.accountDeletion) {
    registerAccountDeletionRoutes(app, options.accountDeletion);
  }

  // READ-ONLY discovery and pricing preview. No user-provided amount ever
  // creates a balance, payment intent, verified deposit or wallet receipt.
  // Callers must re-quote against an immutable effective rate version before
  // using verified provider events in the future MB ledger.
  const rechargeBook = options.gbRechargeRateBook ?? DEFAULT_RECHARGE_RATE_BOOK;
  validateRechargeRateBook(rechargeBook);
  app.get("/v1/gb/recharge/packages", async () => ({
    version: rechargeBook.version,
    packages: rechargeBook.tiers.map((tier) => quotePackage(tier.sizeGb, rechargeBook)),
    settlement: "verified_bank_deposit_only" as const,
  }));
  app.get("/v1/gb/recharge/preview", {
    schema: {
      querystring: Type.Object({
        amountKobo: Type.Integer({ minimum: 1, maximum: Number.MAX_SAFE_INTEGER }),
      }, { additionalProperties: false }),
    },
  }, async (request) => ({
    previewOnly: true as const,
    ...quoteVerifiedDeposit(request.query.amountKobo, rechargeBook),
  }));

  if (options.gbDataCatalogue) {
    registerGbDataCatalogueRoutes(app, options.gbDataCatalogue);
  }

  if (options.gbWalletSummary) registerGbWalletSummaryRoutes(app,options.gbWalletSummary);
  registerAuthEmailRoutes(app);
  if (options.mobileDiagnostics) registerMobileDiagnosticsRoutes(app, options.mobileDiagnostics);

  if(options.accountDataExports) {
    const exports=options.accountDataExports;
    const fail=(error:unknown,reply:{code(statusCode:number):unknown})=>{
      const status=error instanceof AccountExportError?error.statusCode:
        error instanceof CustomerAuthError?error.statusCode:
        error instanceof Error&&error.message==="wallet.export_range_too_large"?413:503;
      reply.code(status);
      return {code:status===413?"EXPORT_TOO_LARGE":status===503?"EXPORT_UNAVAILABLE":
        error instanceof AccountExportError?error.code:"UNAUTHORIZED"};
    };
    app.get("/v1/account/summary",async(request,reply)=>{
      try{return await exports.summary({authorizationHeader:request.headers.authorization});}
      catch(error){return fail(error,reply);}
    });
    app.get("/v1/account/exports/profile",async(request,reply)=>{
      try{return await exports.personalData({
        authorizationHeader:request.headers.authorization,
      });}catch(error){return fail(error,reply);}
    });
    app.get("/v1/account/exports/conversations",{
      schema:{querystring:Type.Object({
        cursor:Type.Optional(Type.String({maxLength:512})),
      },{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await exports.conversations({
        authorizationHeader:request.headers.authorization,
        ...(request.query.cursor?{cursor:request.query.cursor}:{}),
      });}catch(error){return fail(error,reply);}
    });
    app.get("/v1/account/exports/financial",{
      schema:{querystring:Type.Object({
        from:Type.Optional(Type.String({maxLength:10})),
        to:Type.Optional(Type.String({maxLength:10})),
      },{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await exports.financialStatement({
        authorizationHeader:request.headers.authorization,
        ...request.query,
      });}catch(error){return fail(error,reply);}
    });
  }

  if (options.customerAuth) {
    const auth = options.customerAuth;
    const authError = (
      error: unknown,
      reply: { code(statusCode: number): unknown },
    ) => {
      if (error instanceof CustomerAuthError) {
        reply.code(error.statusCode);
        return { code: error.code, message: error.code };
      }
      reply.code(503);
      return { code: "AUTH_UNAVAILABLE", message: "AUTH_UNAVAILABLE" };
    };

    app.get("/auth/capabilities", async () => auth.capabilities());

    app.post(
      "/auth/otp",
      {
        schema: {
          body: Type.Object(
            {
              phone: Type.Optional(Type.String({ minLength: 7, maxLength: 40 })),
              email: Type.Optional(Type.String({ minLength: 3, maxLength: 320 })),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.sendOtp({
            ...(request.body.phone === undefined
              ? {}
              : { phone: request.body.phone }),
            ...(request.body.email === undefined
              ? {}
              : { email: request.body.email }),
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post(
      "/auth/verify",
      {
        schema: {
          body: Type.Object(
            {
              phone: Type.Optional(Type.String({ minLength: 7, maxLength: 40 })),
              email: Type.Optional(Type.String({ minLength: 3, maxLength: 320 })),
              code: Type.String({ minLength: 6, maxLength: 6 }),
              name: Type.Optional(Type.String({ minLength: 1, maxLength: 160 })),
              deviceId: Type.Optional(Type.String({minLength:32,maxLength:32})),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.verifyOtp({
            ...(request.body.phone === undefined
              ? {}
              : { phone: request.body.phone }),
            ...(request.body.email === undefined
              ? {}
              : { email: request.body.email }),
            code: request.body.code,
            ...(request.body.name === undefined
              ? {}
              : { name: request.body.name }),
            ...(request.body.deviceId===undefined?{}:{deviceId:request.body.deviceId}),
            clientLabel:authClientLabel({
              platformHeader:request.headers["x-masanawa-client-platform"],
              userAgent:request.headers["user-agent"],
            }),
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.get(
      "/v1/auth/account/status",
      {
        schema: {
          querystring: Type.Object(
            {
              phone: Type.String({ minLength: 7, maxLength: 40 }),
              deviceId: Type.String({ minLength: 32, maxLength: 32 }),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.accountStatus({
            phone: request.query.phone,
            deviceId: request.query.deviceId,
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post(
      "/v1/auth/device/restore",
      {
        schema: {
          body: Type.Object(
            {
              phone: Type.String({ minLength: 7, maxLength: 40 }),
              deviceId: Type.String({ minLength: 32, maxLength: 32 }),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.deviceRestore({
            phone: request.body.phone,
            deviceId: request.body.deviceId,
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post(
      "/v1/auth/password/verify",
      {
        schema: {
          body: Type.Object(
            {
              phone: Type.String({ minLength: 7, maxLength: 40 }),
              deviceId: Type.String({ minLength: 32, maxLength: 32 }),
              password: Type.String({ minLength: 6, maxLength: 6 }),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.passwordVerify({
            phone: request.body.phone,
            deviceId: request.body.deviceId,
            password: request.body.password,
            clientLabel:authClientLabel({
              platformHeader:request.headers["x-masanawa-client-platform"],
              userAgent:request.headers["user-agent"],
            }),
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post(
      "/v1/auth/password/setup",
      {
        schema: {
          body: Type.Object(
            {
              phone: Type.String({ minLength: 7, maxLength: 40 }),
              deviceId: Type.String({ minLength: 32, maxLength: 32 }),
              password: Type.String({ minLength: 6, maxLength: 6 }),
              name: Type.String({ minLength: 1, maxLength: 160 }),
              email: Type.Optional(Type.String({ minLength: 3, maxLength: 320 })),
            },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.passwordSetup({
            phone: request.body.phone,
            deviceId: request.body.deviceId,
            password: request.body.password,
            name: request.body.name,
            ...(request.body.email === undefined
              ? {}
              : { email: request.body.email }),
            clientLabel:authClientLabel({
              platformHeader:request.headers["x-masanawa-client-platform"],
              userAgent:request.headers["user-agent"],
            }),
          });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post(
      "/auth/refresh",
      {
        schema: {
          body: Type.Object(
            { refreshToken: Type.String({ minLength: 20, maxLength: 256 }) },
            { additionalProperties: false },
          ),
        },
      },
      async (request, reply) => {
        try {
          return await auth.refresh({ refreshToken: request.body.refreshToken });
        } catch (error) {
          return authError(error, reply);
        }
      },
    );

    app.post("/v1/auth/password/recovery/start", {
      schema:{body:Type.Object({phone:Type.String({minLength:7,maxLength:40})},{additionalProperties:false})},
    },async (request,reply) => {
      try {return await auth.requestPasswordRecovery({phone:request.body.phone});}
      catch(error) {return authError(error,reply);}
    });
    app.post("/v1/auth/password/recovery/complete", {
      schema:{body:Type.Object({
        phone:Type.String({minLength:7,maxLength:40}),
        code:Type.String({minLength:6,maxLength:6}),
        password:Type.String({minLength:6,maxLength:6}),
      },{additionalProperties:false})},
    },async (request,reply) => {
      try {return await auth.completePasswordRecovery(request.body);}
      catch(error) {return authError(error,reply);}
    });

    app.post("/v1/auth/security/email/start", {
      schema:{body:Type.Object({email:Type.String({minLength:3,maxLength:320})},{additionalProperties:false})},
    },async (request,reply) => {
      try {
        return await auth.startEmailLink({
          authorizationHeader:request.headers.authorization,email:request.body.email,
        });
      } catch(error) {return authError(error,reply);}
    });
    app.post("/v1/auth/security/email/confirm", {
      schema:{body:Type.Object({
        email:Type.String({minLength:3,maxLength:320}),
        code:Type.String({minLength:6,maxLength:6}),
      },{additionalProperties:false})},
    },async (request,reply) => {
      try {
        return await auth.confirmEmailLink({
          authorizationHeader:request.headers.authorization,
          email:request.body.email,code:request.body.code,
        });
      } catch(error) {return authError(error,reply);}
    });

    const withdrawalFields = {
      requestId: Type.String({minLength:1,maxLength:128}),
      providerCode: Type.String({minLength:2,maxLength:32}),
      amount: Type.String({minLength:1,maxLength:80}),
      destinationAddress: Type.String({minLength:1,maxLength:512}),
    };
    app.post("/v1/auth/security/withdrawal/start",{
      schema:{body:Type.Object(withdrawalFields,{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.beginWithdrawalStepUp({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });
    app.post("/v1/auth/security/withdrawal/confirm",{
      schema:{body:Type.Object({...withdrawalFields,code:Type.String({minLength:6,maxLength:6})},
        {additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.confirmWithdrawalStepUp({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });

    const bankChallengeFields={
      bankCode:Type.String({minLength:3,maxLength:6}),
      accountNumber:Type.String({minLength:10,maxLength:10}),
    };
    app.post("/v1/auth/security/bank/start",{
      schema:{body:Type.Object(bankChallengeFields,{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.beginBankStepUp({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });
    app.post("/v1/auth/security/bank/confirm",{
      schema:{body:Type.Object({...bankChallengeFields,
        code:Type.String({minLength:6,maxLength:6}),
      },{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.confirmBankStepUp({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });
    const contactChangeBody={
      channel:Type.Union([Type.Literal("email"),Type.Literal("sms")]),
      nextIdentifier:Type.String({minLength:3,maxLength:320}),
    };
    app.post("/v1/auth/security/contacts/change/start",{
      schema:{body:Type.Object(contactChangeBody,{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.beginContactChange({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });
    app.post("/v1/auth/security/contacts/change/confirm",{
      schema:{body:Type.Object({...contactChangeBody,
        oldCode:Type.String({minLength:6,maxLength:6}),
        newCode:Type.String({minLength:6,maxLength:6}),
      },{additionalProperties:false})},
    },async(request,reply)=>{
      try{return await auth.completeContactChange({
        authorizationHeader:request.headers.authorization,...request.body,
      });}catch(error){return authError(error,reply);}
    });
    app.get("/v1/auth/security/sessions", async (request, reply) => {
      try {return {sessions:await auth.sessions({authorizationHeader:request.headers.authorization})};}
      catch(error) {return authError(error,reply);}
    });
    app.post("/v1/auth/security/sessions/logout-all", async (request, reply) => {
      try {await auth.logoutAll({authorizationHeader:request.headers.authorization});return {success:true as const};}
      catch(error) {return authError(error,reply);}
    });
    app.post("/v1/auth/security/sessions/:sessionId/revoke", {
      schema:{params:Type.Object({sessionId:Type.String({minLength:36,maxLength:36})})},
    }, async (request,reply) => {
      try {
        await auth.revokeSession({authorizationHeader:request.headers.authorization,sessionId:request.params.sessionId});
        return {success:true as const};
      } catch(error) {return authError(error,reply);}
    });
    app.get("/v1/auth/security/history", async (request,reply) => {
      try {return {events:await auth.loginHistory({authorizationHeader:request.headers.authorization})};}
      catch(error) {return authError(error,reply);}
    });

    app.post("/auth/logout", async (request) => {
      await auth.logout({
        authorizationHeader: request.headers.authorization,
      });
      return { success: true as const };
    });
  }

  if (options.agentDirectory) {
    const directory = options.agentDirectory;
    app.get(
      "/agent/directory",
      {
        schema: {
          response: { 200: AgentDirectoryResponseSchema },
        },
      },
      async (request) => ({
        agents: [
          ...(await directory.list({
            authorizationHeader: request.headers.authorization,
          })),
        ],
      }),
    );

    app.put(
      "/agent/preferences/default",
      {
        schema: {
          body: Type.Object(
            { characterId: Type.String() },
            { additionalProperties: false },
          ),
          response: {
            200: Type.Object(
              { characterId: Type.String() },
              { additionalProperties: false },
            ),
          },
        },
      },
      async (request) =>
        directory.setDefaultPlatformAgent({
          authorizationHeader: request.headers.authorization,
          characterId: request.body.characterId,
        }),
    );
  }

  if (options.agentConversation) {
    const conversation = options.agentConversation;

    const resultBody = (result: Awaited<ReturnType<AgentConversationService["turn"]>>) => ({
      reply: result.reply,
      agentRunId: result.agentRunId,
      parts: [...result.parts],
      ...(result.audioBase64 ? { audioBase64: result.audioBase64 } : {}),
      ...(result.audioMimeType ? { audioMimeType: result.audioMimeType } : {}),
      ...(result.audioTranscript ? { audioTranscript: result.audioTranscript } : {}),
      ...(result.audioDurationMs !== undefined
        ? { audioDurationMs: result.audioDurationMs }
        : {}),
    });

    app.post(
      "/agent/sessions/open",
      {
        schema: {
          body: AgentSessionOpenBodySchema,
          response: { 200: AgentSessionOpenResponseSchema },
        },
      },
      async (request) =>
        conversation.open({
          authorizationHeader: request.headers.authorization,
          characterId: request.body.characterId,
        }),
    );

    app.post(
      "/agent/sessions/:characterSessionId/turn",
      {
        schema: {
          params: AgentSessionParamsSchema,
          body: AgentTurnBodySchema,
          response: { 200: AgentTurnResponseSchema },
        },
      },
      async (request, reply) => {
        const controller = new AbortController();
        let finished = false;
        const abort = () => {
          if (!finished) controller.abort();
        };
        reply.raw.once("close", abort);
        try {
          return resultBody(await conversation.turn({
            authorizationHeader: request.headers.authorization,
            characterSessionId: request.params.characterSessionId,
            characterId: request.body.characterId,
            text: request.body.text,
            requestId: parseCanonicalId(
              "request",
              request.headers["x-request-id"] as string,
            ),
            correlationId: parseCanonicalId(
              "correlation",
              request.headers["x-correlation-id"] as string,
            ),
            signal: controller.signal,
          }));
        } finally {
          finished = true;
          reply.raw.off("close", abort);
        }
      },
    );

    app.post(
      "/agent/sessions/:characterSessionId/turn-stream",
      {
        schema: {
          params: AgentSessionParamsSchema,
          body: AgentTurnBodySchema,
        },
      },
      async (request, reply) => streamConversationReply(reply, async (callbacks, signal) =>
        resultBody(await conversation.turn({
          authorizationHeader: request.headers.authorization,
          characterSessionId: request.params.characterSessionId,
          characterId: request.body.characterId,
          text: request.body.text,
          requestId: parseCanonicalId("request", request.headers["x-request-id"] as string),
          correlationId: parseCanonicalId("correlation", request.headers["x-correlation-id"] as string),
          ...callbacks, signal,
        }))),
    );

    app.post("/agent/sessions/:characterSessionId/media-turn-stream", {
      bodyLimit: 13_000_000,
      schema: {params:AgentSessionParamsSchema,body:AgentMediaTurnBodySchema},
    }, async (request,reply) => streamConversationReply(reply, async (callbacks,signal) =>
      resultBody(await conversation.mediaTurn({
        authorizationHeader:request.headers.authorization,
        characterSessionId:request.params.characterSessionId,
        ...request.body,
        requestId:parseCanonicalId("request",request.headers["x-request-id"] as string),
        correlationId:parseCanonicalId("correlation",request.headers["x-correlation-id"] as string),
        ...callbacks,signal,
      }))));

    app.post("/agent/sessions/:characterSessionId/media-set-turn-stream", {
      bodyLimit: 17_000_000,
      schema: {params:AgentSessionParamsSchema,body:AgentMediaSetTurnBodySchema},
    }, async (request,reply) => streamConversationReply(reply, async (callbacks,signal) =>
      resultBody(await conversation.mediaSetTurn({
        authorizationHeader:request.headers.authorization,
        characterSessionId:request.params.characterSessionId,
        ...request.body,
        requestId:parseCanonicalId("request",request.headers["x-request-id"] as string),
        correlationId:parseCanonicalId("correlation",request.headers["x-correlation-id"] as string),
        ...callbacks,signal,
      }))));

    app.post(
      "/agent/sessions/:characterSessionId/media-turn",
      {
        bodyLimit: 13_000_000,
        schema: {
          params: AgentSessionParamsSchema,
          body: AgentMediaTurnBodySchema,
          response: { 200: AgentTurnResponseSchema },
        },
      },
      async (request, reply) => {
        const controller = new AbortController();
        let finished = false;
        const abort = () => {
          if (!finished) controller.abort();
        };
        reply.raw.once("close", abort);
        try {
          return resultBody(await conversation.mediaTurn({
            authorizationHeader: request.headers.authorization,
            characterSessionId: request.params.characterSessionId,
            characterId: request.body.characterId,
            caption: request.body.caption,
            mimeType: request.body.mimeType,
            dataBase64: request.body.dataBase64,
            requestId: parseCanonicalId(
              "request",
              request.headers["x-request-id"] as string,
            ),
            correlationId: parseCanonicalId(
              "correlation",
              request.headers["x-correlation-id"] as string,
            ),
            signal: controller.signal,
          }) as Awaited<ReturnType<AgentConversationService["turn"]>>);
        } finally {
          finished = true;
          reply.raw.off("close", abort);
        }
      },
    );

    app.post(
      "/agent/sessions/:characterSessionId/media-set-turn",
      {
        bodyLimit: 17_000_000,
        schema: {
          params: AgentSessionParamsSchema,
          body: AgentMediaSetTurnBodySchema,
          response: { 200: AgentTurnResponseSchema },
        },
      },
      async (request, reply) => {
        const controller = new AbortController();
        let finished = false;
        const abort = () => {
          if (!finished) controller.abort();
        };
        reply.raw.once("close", abort);
        try {
          return resultBody(await conversation.mediaSetTurn({
            authorizationHeader: request.headers.authorization,
            characterSessionId: request.params.characterSessionId,
            characterId: request.body.characterId,
            caption: request.body.caption,
            media: request.body.media,
            requestId: parseCanonicalId(
              "request",
              request.headers["x-request-id"] as string,
            ),
            correlationId: parseCanonicalId(
              "correlation",
              request.headers["x-correlation-id"] as string,
            ),
            signal: controller.signal,
          }) as Awaited<ReturnType<AgentConversationService["turn"]>>);
        } finally {
          finished = true;
          reply.raw.off("close", abort);
        }
      },
    );

    app.post(
      "/agent/sessions/:characterSessionId/close",
      {
        schema: {
          params: AgentSessionParamsSchema,
          body: Type.Object(
            { characterId: Type.String() },
            { additionalProperties: false },
          ),
          response: {
            200: Type.Object(
              { closed: Type.Literal(true) },
              { additionalProperties: false },
            ),
          },
        },
      },
      async (request) => {
        await conversation.close({
          authorizationHeader: request.headers.authorization,
          characterSessionId: request.params.characterSessionId,
          characterId: request.body.characterId,
        });
        return { closed: true as const };
      },
    );
  }

  // These modules reuse the same host app, tenant authority and database.
  if (options.status) {
    app.register(async scope => {
      await registerStatusRuntime(scope, {
        ...options.status!,
        // Root Status is Masana-editorial only in the reduced product.
        // Normal fans retain reactions, comments, follows and saves.
        allowHumanPublishing: false,
      });
    });
  }
  if (options.masana) registerMasanaRoutes(app, options.masana);
  if (options.masanaInbox) registerMasanaInboxRoutes(app, options.masanaInbox);
  if (options.callHistory) registerCallHistoryRoutes(app, options.callHistory);
  if (options.privateChatMedia) {
    registerPrivateChatMediaRoutes(app, options.privateChatMedia);
  }
  registerAgentShellRoutes(app, {
    ...(options.agentShell ? { agentShell: options.agentShell } : {}),
    ...(options.liveVoiceTokens
      ? { liveVoiceTokens: options.liveVoiceTokens }
      : {}),
    ...(options.mobilePush ? { mobilePush: options.mobilePush } : {}),
    ...(options.mobileNotifications
      ? { mobileNotifications: options.mobileNotifications } : {}),
  });
  if (options.talkSafety) registerTalkSafetyRoutes(app, options.talkSafety);

  if (options.talkProfiles) {
    registerTalkProfileRoutes(app, options.talkProfiles);
  }
  if (options.twinProduction) registerTwinSafetyRoutes(app, options.twinProduction.twinSafety);

  app.get(
    "/healthz",
    {
      schema: {
        response: {
          200: HealthResponseSchema,
        },
      },
    },
    async () => ({
      service: "gateway" as const,
      status: "ok" as const,
      time: now(),
    }),
  );

  app.get(
    "/readyz",
    {
      schema: {
        response: {
          200: ReadinessResponseSchema,
          503: ReadinessResponseSchema,
        },
      },
    },
    async (_request, reply) => {
      const dependencyResults = await Promise.all(
        checks.map(async (check) => {
          try {
            const result = await check.check();
            return {
              name: check.name,
              ready: result.ready,
              ...(result.reason ? { reason: result.reason } : {}),
            };
          } catch {
            return {
              name: check.name,
              ready: false,
              reason: "readiness check failed",
            };
          }
        }),
      );

      const results = [
        ...(options.isDraining?.()
          ? [
              {
                name: "lifecycle",
                ready: false,
                reason: "service is shutting down",
              },
            ]
          : []),
        ...dependencyResults,
      ];

      const ready = results.every((result) => result.ready);
      if (!ready) {
        reply.code(503);
      }

      return {
        service: "gateway" as const,
        status: ready ? ("ready" as const) : ("not-ready" as const),
        time: now(),
        checks: results,
      };
    },
  );

  return app;
}
