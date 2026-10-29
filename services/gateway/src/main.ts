import {createOfficialSocialSync} from './official_social_store.js';
import {createOfficialSocialFetcher} from './official_social_import.js';
import {createOfficialKnowledgeReader} from './public_official_knowledge.js';
import {createUsernameStore} from './usernames.js';
import {createGbRecipientDirectory} from './gb_wallet/recipient_directory.js';
import {flutterwaveTransportConfiguration} from "./gb_data/transport_configuration.js";
import {reviewedMbCallRequired} from "./gb_calls/public_token_policy.js";
import {qualifiedNgnExchange} from "./gb_wallet/ngn_qualification.js";
import {createCanonicalId} from "@masanawa/contracts";
import {createNgnWalletRepository} from "@masanawa/postgres";
import type {NgnWalletPorts} from "./gb_wallet/ngn_exchange.js";
import { PgSavedLibraryRepository } from "@masanawa/postgres";
import type { Pool } from "@masanawa/postgres";
import {
  projectVerifiedWholeGbBundles,
  type ApprovedWholeGbBundle,
} from "./gb_data/data_catalogue.js";
import { createLiveFlutterwaveGbDataItems } from "./gb_data/flutterwave_live_items.js";
import type { GbDataCataloguePorts } from "./gb_data/data_catalogue_routes.js";
import type { GbDataPurchaseRoutes } from "./gb_data/data_purchase_routes.js";
import { createBillstackReservedAccountClient } from "./gb_wallet/billstack_provider.js";
import type { BillstackFundingPorts } from "./gb_wallet/billstack_funding_routes.js";
import { DEFAULT_RECHARGE_RATE_BOOK } from "./gb_wallet/pricing.js";
import type { GbWalletSummaryPorts } from "./gb_wallet/summary_routes.js";
import type { GbActivityPorts } from "./gb_wallet/activity_routes.js";
import type { GbSendPorts } from "./gb_wallet/send_review.js";
import type { StatusTipPorts } from "./gb_wallet/tip_review.js";
import type { GbRequestPorts } from "./gb_wallet/request_routes.js";
import { createSignedNgnQuoteReader } from "./msn_wallet/ngn_asset_quote.js";
import { assertMsnwNgnPolicyRate } from "@masanawa/commerce";
import { createPublishedPersonaReader } from "./persona_narrative.js";
import { createGeminiRecordedLiveAudioRenderer } from "./recorded_live_audio.js";
import { FeedService, EditorialReviewService, SavedLibraryService } from "@masanawa/feed";
import {
  createMasanaPostgresStore, PgHomeFeedRepository, PgEditorialReviewRepository, PgStatusEligibility,
  PgStatusPromotions,
  PgStatusGuestProofs,
  PgFeedMediaAuthorization,
  createMasanaInboxRepository,
  createPostgresGbWalletRepository,
  createGbWalletActivityRepository,
  createPostgresGbRequestRepository,
  createGbUsageReservations,
  recoverExpiredMbReplies,
  createGbDataJournal,
  createGbCallAdmissions,
  createGbBillstackRepository,
  ensureMasanaCatalogProfiles,withCatalogProvisionLock,
} from "@masanawa/postgres";
import {createPgAgentMasanaIdentityReader} from "./agent_identity.js";
import {createGbCallRelay} from "./gb_calls/relay.js";
import {GbCallReviewError,type GbCallPorts} from "./gb_calls/review.js";
import { createStatusMediaRuntime, type StatusMediaConfiguration } from "./modules/home_feed/media_runtime.js";
import { createConfiguredStatusMedia } from "./modules/home_feed/media_environment.js";
import {PgPublicStatusLanding} from "./modules/home_feed/public_landing.js";
import {createApprovedPublicImageReader} from "./modules/home_feed/public_image.js";
import {StatusRetentionWorker} from "./modules/home_feed/retention_worker.js";
import {GuestConsentSigner} from './modules/home_feed/guest_consent.js';
import {StatusMediaDeletionWorker} from './modules/home_feed/media_deletion_worker.js';
import {validateMasanaProfile} from "@masanawa/masana";
import {createApprovedMasanaMediaPort} from "./modules/masana/profile_media.js";
import {createMasanaQualityFeedbackPort} from "./modules/masana/quality_feedback.js";
import type { StatusRuntime } from "./modules/home_feed/runtime.js";
import { pathToFileURL } from "node:url";
import type {
  AgentPresentationRepository,
  AgentRunRepository,
  AgentStrategy,
  CharacterSessionRepository,
  CharacterSkillAssignmentRepository,
  PlatformAgentProfileRepository,
  UserAgentPreferenceRepository,
  MobileShellRepository,
  MobilePushRepository,
  MobileAgentActivityRepository,
} from "@masanawa/agents";
import type {
  SkillDistributionRepository,
  SkillGuideRepository,
  SkillRepository,
  TeachingProgressRepository,
} from "@masanawa/skills";
import type {
  CloneSetupRepository,
  CharacterOwnershipReader,
  PersonalCloneProvisioningRepository,
  UserRelationshipProvisioner,
  UserRelationshipReader,
  AccountDeletionRepository,
  AccountDeletionChallengeRepository,
} from "@masanawa/identity";
import type {
  BillingQuoteRepository,
  CommerceRepository,
  CryptoChatActionRepository,
  CryptoRepository,
  NgnWalletRepository,
} from "@masanawa/commerce";
import { parseCanonicalId, readRequiredEnv, type TenantId } from "@masanawa/contracts";
import { type PlatformSessionRepository } from "@masanawa/security";
import {
  FlutterwaveBillsClient,
  FlutterwaveFundingClient,
  FlutterwaveHttpTransport,
  type BillingFulfillmentStore,
} from "@masanawa/providers";
import {
  createDrainState,
  readNodeServiceRuntimeConfig,
  startNodeService,
  type ManagedNodeServer,
  type NodeServiceRuntimeConfig,
  type NodeSignalSource,
  type ServiceLifecycleLogger,
} from "@masanawa/node-runtime";
import { platformProductMigrationRoots, createPostgresAgentPresentationRepository, createPostgresAgentRunRepository, createPostgresCharacterSessionRepository, createPostgresCharacterOwnershipReader, createPostgresCharacterSkillAssignmentRepository, createPostgresIdentityRepository, createPostgresCommerceRepository, createPostgresCryptoRepository, createPostgresCryptoChatActionRepository, createPostgresPlatformAgentProfileRepository, createPostgresSkillGuideRepository, createPostgresTeachingProgressRepository, createPostgresSkillDistributionRepository, createPostgresSkillRepository, createPostgresUserAgentPreferenceRepository, createPostgresCloneSetupRepository, createPostgresPersonalCloneProvisioningRepository, createPostgresUserRelationshipReader, createPostgresUserRelationshipProvisioner, createPostgresPlatformSessionRepository, createPostgresAccountDeletionRepository, createPostgresAccountDeletionChallengeRepository, createPostgresServiceDependency, createPostgresMobileShellRepository, createPostgresMobilePushRepository, createPostgresMobileAgentActivityRepository, createPostgresBillingQuoteRepository, createPostgresNgnWalletRepository, createPostgresBillingFulfillmentStore, createPostgresBillingWebhookRepository, createPostgresTwinProfileRepository, createPostgresTwinRuntimeRepository, createPostgresTwinEconomyEventStore, withTransaction, initializePostgresPolicyRevision } from "@masanawa/postgres";
import {
  createAgentDirectoryService,
  type AgentDirectoryAuthorizer,
} from "./agent_directory.js";
import { createAgentConversationService } from "./agent_conversation.js";
import { createPgCreatorPublicReader } from "./creator_agents/public_reader.js";
import type {
  AgentConversationAuthorizer,
} from "./agent_conversation_contract.js";
import { createAlphaDevAuthorizer, createAlphaDirectoryAuthorizer, parseAlphaDevIds, parseAlphaRelationshipMap } from "./alpha_dev.js";
import {
  NowPaymentsClient,
  NowPaymentsCustodyClient,
  NowPaymentsPayoutClient,
  collectNowPaymentsRuntimeEvidence,
} from "@masanawa/nowpayments";
import { createGeminiAlphaInferenceProvider } from "./alpha_executor.js";
import { createAlphaInferenceStrategy } from "./alpha_strategy.js";
import {
  createGeminiCredentialPoolInferenceProvider,
  loadSupabaseGeminiCredentialPool,
  parseGeminiCredentialPool,
  parseNurainImportedGeminiCredentialPool,
  verifyGeminiCredentialPool,
  type GeminiCredentialPool,
} from "./production_inference.js";
import { createProductionAgentStrategy } from "./production_strategy.js";
import {
  createFinancialService,
  type FinancialAuthorizer,
} from "./financial_service.js";
import { createMsnwPaystackEnrollmentService } from "./msn_wallet/paystack_customer_enrollment.js";
import { createMsnwPaystackFiatService } from "./msn_wallet/paystack_fiat_evidence.js";
import { createMsnwBillingFunding } from "./msn_wallet/billing_funding.js";
import { probeNowPaymentsReadOnly } from "./nowpayments_readonly_probe.js";
import type { MsnBalanceAuthority } from "./msn_wallet/routes.js";
import { createAgentShellService } from "./agent_shell.js";
import { createPrivateChatMediaService } from "./private_chat_media.js";
import type {
  AgentShellActionExecutor,
  LiveVoiceTokenService,
} from "./agent_shell_contract.js";
import { createGeminiLiveTokenService } from "./live_voice_token.js";
import { createPostgresCallHistoryRepository } from "./call_history/postgres_repository.js";
import { createCallHistoryService, type CallHistoryRepository, type CallHistoryRecorder } from "./call_history/service.js";
import { createAccountNotificationService } from "./notification_preferences.js";
import {
  createMobilePushRegistrationService,
  createFcmPushSender,
  type MobilePushSender,
} from "./mobile_push.js";
import {
  createTalkProfileService,
  type TalkProfileAuthorizer,
} from "./talk_profiles/service.js";
import { createPostgresTalkProfileRepository } from "./talk_profiles/postgres_repository.js";
import { createPostgresTalkSafetyRepository } from "./talk_safety/repository.js";
import { createTalkSafetyService, type TalkSafetyCustomerAuthorizer, type TalkSafetyPlatformAuthority } from "./talk_safety/service.js";
import { createPrincipalTalkSafetyPlatformAuthority } from "./talk_safety/platform_authority.js";
import {
  createGatewayApp,
  type GatewayAppOptions,
  type ReadinessCheck,
} from "./app.js";
import { createAccountDataExports } from "./account_data_exports.js";
import {
  createCustomerAuthService,
  createHttpSmsOtpDelivery,
  createPlatformCustomerAuthorizers,
  createPlatformCustomerSessionAuthorizer,
  createPlatformSessionFinancialAuthorizer,
  createResendOtpDelivery,
  type CustomerAuthService,
  CustomerAuthError,
} from "./customer_auth.js";
import {
  createAccountDeletionService,
  createResendAccountDeletionSender,
  createHttpAccountDeletionSmsSender,
  type AccountDeletionService,
} from "./account_deletion.js";
import {
  createBillingFinancialService,
  type BillingFinancialService,
} from "./financial_billing.js";
import {
  createBillingCheckoutService,
  type BillingCheckoutService,
} from "./billing_checkout.js";
import {
  createBillingWalletService,
  type BillingWalletService,
} from "./billing_wallet.js";
import {
  TEACHING_AGENT_SYSTEM_INSTRUCTIONS,
  createAgentTeachingAssistant,
  type AgentTeachingAssistant,
} from "./agent_teaching_assistant.js";
import { MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS } from "./agent_msnw_crypto_assistant.js";
import {
  ensureDefaultPlatformAgents,
  type PlatformAgentIdentityProvisioner,
} from "./platform_agent_bootstrap.js";
import {
  createTwinProductionRuntime,
  type TwinProductionRuntime,
} from "./twin_production_runtime.js";

export type ServiceSignal = "SIGINT" | "SIGTERM";

export interface ServiceProcess extends NodeSignalSource {
  exitCode: number | undefined;
  exit(code: number): never;
}

export interface ServiceDatabaseDependency {
  readonly status?: {
    feed: PgHomeFeedRepository;
    editorial: PgEditorialReviewRepository;
    eligibility: PgStatusEligibility;
    published: PgFeedMediaAuthorization;
  };
  /** Shared PostgreSQL Pool for retained Masana, Status and MB functionality. */
  readonly featurePool?: Pool;
  readonly callHistory?: CallHistoryRepository & CallHistoryRecorder;
  readonly readinessCheck: ReadinessCheck;
  readonly platformAgentIdentity?: PlatformAgentIdentityProvisioner;
  readonly initializePlatformPolicy?: (tenantId: TenantId, revision: string) => Promise<void>;
  readonly agentPresentations?: AgentPresentationRepository;
  readonly characterSkillAssignments?: CharacterSkillAssignmentRepository;
  readonly characterSessions?: CharacterSessionRepository;
  readonly agentRuns?: AgentRunRepository;
  readonly platformAgentProfiles?: PlatformAgentProfileRepository;
  readonly userAgentPreferences?: UserAgentPreferenceRepository;
  readonly skills?: SkillRepository;
  readonly skillGuides?: SkillGuideRepository;
  readonly teachingProgress?: TeachingProgressRepository;
  readonly skillDistribution?: SkillDistributionRepository;
  readonly personalClones?: PersonalCloneProvisioningRepository;
  readonly cloneSetups?: CloneSetupRepository;
  readonly relationships?: UserRelationshipReader;
  readonly relationshipProvisioner?: UserRelationshipProvisioner;
  readonly platformSessions?: PlatformSessionRepository;
  readonly accountDeletionRequests?: AccountDeletionRepository;
  readonly accountDeletionChallenges?: AccountDeletionChallengeRepository;
  readonly commerce?: CommerceRepository;
  readonly crypto?: CryptoRepository;
  readonly cryptoChatActions?: CryptoChatActionRepository;
  readonly ownerships?: CharacterOwnershipReader;
  readonly mobileShell?: MobileShellRepository;
  readonly mobilePush?: MobilePushRepository;
  readonly mobileActivity?: MobileAgentActivityRepository;
  readonly billingQuotes?: BillingQuoteRepository;
  readonly billingStore?: (
    identity: Readonly<{ tenantId: string; userId: string }>,
  ) => BillingFulfillmentStore;
  readonly billingWebhooks?: ReturnType<typeof createPostgresBillingWebhookRepository>;
  readonly ngnWallet?: NgnWalletRepository;
  readonly twinProfiles?: ReturnType<typeof createPostgresTwinProfileRepository>;
  readonly twinEconomy?: ReturnType<typeof createPostgresTwinRuntimeRepository>;
  readonly twinEvents?: ReturnType<typeof createPostgresTwinEconomyEventStore>;
  readonly talkProfiles?: ReturnType<typeof createPostgresTalkProfileRepository>;
  readonly talkSafety?: ReturnType<typeof createPostgresTalkSafetyRepository>;
  close(): Promise<void>;
}

export type ServiceDatabaseFactory = (
  env: Readonly<Record<string, string | undefined>>,
) => ServiceDatabaseDependency;

export type GatewayServiceConfig = NodeServiceRuntimeConfig;

export interface StartGatewayServiceOptions {
  /** Explicit trusted original media store; never inferred from Talk replay. */
  readonly statusMedia?: StatusMediaConfiguration;
  readonly env?: Readonly<Record<string, string | undefined>>;
  readonly processRef?: ServiceProcess;
  readonly logger?: ServiceLifecycleLogger;
  readonly databaseFactory?: ServiceDatabaseFactory;
  readonly appFactory?: (options: GatewayAppOptions) => ManagedNodeServer;
  readonly appOptions?: Omit<GatewayAppOptions, "isDraining">;
  readonly agentDirectoryAuthorizer?: AgentDirectoryAuthorizer;
  readonly agentConversationAuthorizer?: AgentConversationAuthorizer;
  readonly financialAuthorizer?: FinancialAuthorizer;
  readonly agentStrategy?: AgentStrategy;
  readonly agentShellActionExecutor?: AgentShellActionExecutor;
}

export interface GatewayServiceRuntime {
  readonly config: GatewayServiceConfig;
  readonly address: string;
  readonly app: ManagedNodeServer;
  readonly pushSender?: MobilePushSender;
  isDraining(): boolean;
  drain(): void;
  shutdown(reason?: ServiceSignal | "manual"): Promise<void>;
  disposeSignals(): void;
}

export function parseGatewayServiceConfig(
  env: Readonly<Record<string, string | undefined>> = process.env,
): GatewayServiceConfig {
  return readNodeServiceRuntimeConfig(
    {
      ...env,
      HOST: env.MASANAWA_GATEWAY_HOST ?? env.HOST,
      PORT: env.MASANAWA_GATEWAY_PORT ?? env.PORT,
    },
    {
      port: 3000,
      shutdownTimeoutMs: 10_000,
    },
  );
}

function createDefaultDatabaseDependency(
  env: Readonly<Record<string, string | undefined>>,
): ServiceDatabaseDependency {
  const connectionString = readRequiredEnv(
    {
      DATABASE_URL: env.MASANAWA_DATABASE_URL ?? env.DATABASE_URL,
    },
    "DATABASE_URL",
  );

  const database = createPostgresServiceDependency({
    connectionString,
    applicationName: "masanawa-gateway",
    migrationRoots: platformProductMigrationRoots(),
  });
  return Object.freeze({
    readinessCheck: database.readinessCheck,
    featurePool: database.pool,
    status: {
      feed: new PgHomeFeedRepository(database.pool,true),
      editorial: new PgEditorialReviewRepository(database.pool),
      eligibility: new PgStatusEligibility(database.pool),
      published: new PgFeedMediaAuthorization(database.pool),
    },
    initializePlatformPolicy: (tenantId: TenantId, revision: string) =>
      withTransaction(database.pool, async client => {
        // The first deployment has no existing identity tenant. Provision only
        // the configured canonical platform tenant, without modifying any
        // existing tenant or reactivating a suspended customer environment.
        await client.query(
          "INSERT INTO identity.tenants (tenant_id, created_at, updated_at) " +
          "VALUES ($1, NOW(), NOW()) ON CONFLICT (tenant_id) DO NOTHING",
          [tenantId],
        );
        const tenant = await client.query<{ state: string }>(
          "SELECT state FROM identity.tenants WHERE tenant_id = $1 FOR SHARE",
          [tenantId],
        );
        if (tenant.rows[0]?.state !== "active") {
          throw new Error("platform.tenant_not_active");
        }
        await initializePostgresPolicyRevision(client, tenantId, revision);
      }),
    platformAgentIdentity: Object.freeze({
      async provision(input: Parameters<PlatformAgentIdentityProvisioner["provision"]>[0]) {
        await withTransaction(database.pool, async (client) => {
          const identity = createPostgresIdentityRepository(client);
          await identity.createCharacter({
            tenantId: input.tenantId,
            characterId: input.characterId,
            createdAt: input.createdAt,
          });
          await identity.assignCharacterOwnership({
            tenantId: input.tenantId,
            characterId: input.characterId,
            kind: "platform",
            ownerUserId: null,
            createdAt: input.createdAt,
          });
          await identity.createCharacterVersion({
            tenantId: input.tenantId,
            characterVersionId: input.characterVersionId,
            characterId: input.characterId,
            versionNumber: 1,
            constitution: input.constitution,
            createdAt: input.createdAt,
          });
          await identity.publishCharacterVersion({
            tenantId: input.tenantId,
            characterVersionId: input.characterVersionId,
            publishedAt: input.createdAt,
          });
          await identity.activateCharacterVersion({
            tenantId: input.tenantId,
            characterId: input.characterId,
            characterVersionId: input.characterVersionId,
            expectedCharacterRevision: 1,
            activatedAt: input.createdAt,
          });
        });
      },
    }),
    callHistory: createPostgresCallHistoryRepository(database.pool),
    agentPresentations: createPostgresAgentPresentationRepository(database.pool),
    characterSkillAssignments:
      createPostgresCharacterSkillAssignmentRepository(database.pool),
    characterSessions: createPostgresCharacterSessionRepository(database.pool, {
      maxDurationMs: 7 * 24 * 60 * 60 * 1000,
    }),
    agentRuns: createPostgresAgentRunRepository(database.pool),
    platformAgentProfiles: createPostgresPlatformAgentProfileRepository(database.pool),
    userAgentPreferences: createPostgresUserAgentPreferenceRepository(database.pool),
    skills: createPostgresSkillRepository(database.pool),
    skillGuides: createPostgresSkillGuideRepository(database.pool),
    teachingProgress: createPostgresTeachingProgressRepository(database.pool),
    skillDistribution: createPostgresSkillDistributionRepository(database.pool),
    personalClones: createPostgresPersonalCloneProvisioningRepository(database.pool),
    cloneSetups: createPostgresCloneSetupRepository(database.pool),
    relationships: createPostgresUserRelationshipReader(database.pool),
    relationshipProvisioner:
      createPostgresUserRelationshipProvisioner(database.pool),
    platformSessions: createPostgresPlatformSessionRepository(database.pool),
    accountDeletionRequests: createPostgresAccountDeletionRepository(database.pool),
    accountDeletionChallenges: createPostgresAccountDeletionChallengeRepository(database.pool),
    commerce: createPostgresCommerceRepository(database.pool),
    crypto: createPostgresCryptoRepository(database.pool),
    cryptoChatActions: createPostgresCryptoChatActionRepository(database.pool),
    ownerships: createPostgresCharacterOwnershipReader(database.pool),
    mobileShell: createPostgresMobileShellRepository(database.pool, {billReplies: env.MASANAWA_MB_REPLIES_ENABLED === "true"}),
    mobilePush: createPostgresMobilePushRepository(database.pool),
    mobileActivity: createPostgresMobileAgentActivityRepository(database.pool),
    billingQuotes: createPostgresBillingQuoteRepository(database.pool),
    billingStore: (identity: Readonly<{ tenantId: string; userId: string }>) =>
      createPostgresBillingFulfillmentStore(database.pool, identity),
    billingWebhooks: createPostgresBillingWebhookRepository(database.pool),
    ngnWallet: createPostgresNgnWalletRepository(database.pool),
    twinProfiles: createPostgresTwinProfileRepository(database.pool),
    twinEconomy: createPostgresTwinRuntimeRepository(database.pool),
    twinEvents: createPostgresTwinEconomyEventStore(database.pool),
    talkProfiles: createPostgresTalkProfileRepository(database.pool),
    talkSafety: createPostgresTalkSafetyRepository(database.pool),
    close: async () => {
      await database.close();
    },
  });
}

function alphaEnabled(
  env: Readonly<Record<string, string | undefined>>,
): boolean {
  return env.MASANAWA_ALPHA_ENABLED === "true";
}

function requiredAlphaEnv(
  env: Readonly<Record<string, string | undefined>>,
  key: string,
): string {
  const value = env[key]?.trim();
  if (!value) throw new TypeError(`${key} is required when Alpha mode is enabled`);
  return value;
}

function productionGeminiApiKey(
  env: Readonly<Record<string, string | undefined>>,
): string {
  const direct =
    env.MASANAWA_GEMINI_API_KEY?.trim() ||
    env.MASANAWA_ALPHA_GEMINI_API_KEY?.trim();
  if (direct) return direct;
  const raw =
    env.MASANAWA_GEMINI_API_KEYS_JSON?.trim() ||
    env.MASANAWA_ALPHA_GEMINI_API_KEYS_JSON?.trim();
  if (raw) {
    try {
      const parsed = JSON.parse(raw) as unknown;
      if (Array.isArray(parsed)) {
        const first = parsed.find(
          (value): value is string => typeof value === "string" && value.trim().length > 0,
        );
        if (first) return first.trim();
      }
    } catch {
      // Fail below with one stable configuration error.
    }
  }
  throw new TypeError("A Gemini API key is required for the production Agent runtime");
}

function readCsvEnv(value: string | undefined): readonly string[] {
  if (!value?.trim()) return Object.freeze([]);
  return Object.freeze([
    ...new Set(
      value.split(",").map((entry) => entry.trim().toUpperCase()).filter(Boolean),
    ),
  ]);
}

function readPrincipalSet(value: string | undefined): ReadonlySet<string> {
  if (!value?.trim()) return new Set();
  return new Set(
    value
      .split(",")
      .map((entry) => entry.trim())
      .filter(Boolean)
      .map((entry) => (entry.includes("@") ? entry.toLowerCase() : entry)),
  );
}

function boundedEnvInteger(
  value: string | undefined,
  fallback: number,
  min: number,
  max: number,
  name: string,
): number {
  const parsed = value?.trim() ? Number(value) : fallback;
  if (!Number.isSafeInteger(parsed) || parsed < min || parsed > max) {
    throw new TypeError(`${name} is invalid`);
  }
  return parsed;
}

function readWithdrawalAllowlist(value: string | undefined): ReadonlySet<string> {
  if (!value?.trim()) return new Set();
  let parsed: unknown;
  try {
    parsed = JSON.parse(value);
  } catch {
    return new Set();
  }
  if (!Array.isArray(parsed)) return new Set();
  const keys = new Set<string>();
  for (const item of parsed) {
    if (!item || typeof item !== "object" || Array.isArray(item)) {
      return new Set();
    }
    const row = item as Record<string, unknown>;
    const userId = typeof row.userId === "string" ? row.userId.trim() : "";
    const providerCode =
      typeof row.providerCode === "string" ? row.providerCode.trim().toUpperCase() : "";
    const address = typeof row.address === "string" ? row.address.trim() : "";
    if (!userId || !providerCode || !address) return new Set();
    keys.add(`${userId}|${providerCode}|${address}`);
  }
  return keys;
}

export async function startGatewayService(
  options: StartGatewayServiceOptions = {},
): Promise<GatewayServiceRuntime> {
  const env = options.env ?? process.env;
  const config = parseGatewayServiceConfig(env);
  const processRef = options.processRef ?? (process as ServiceProcess);
  const drain = createDrainState();
  const databaseFactory =
    options.databaseFactory ?? createDefaultDatabaseDependency;
  const database = databaseFactory(env);
  const appFactory = options.appFactory ?? createGatewayApp;

  let directoryAuthorizer = options.agentDirectoryAuthorizer;
  let conversationAuthorizer = options.agentConversationAuthorizer;
  let financialAuthorizer = options.financialAuthorizer;
  let msnBalanceAuthorizer: MsnBalanceAuthority | undefined;
  let strategy = options.agentStrategy;
  let nativeAudio;
  let liveVoiceTokens: LiveVoiceTokenService | undefined;
  let mbLiveVoiceTokens: LiveVoiceTokenService | undefined;
  let twinProduction: TwinProductionRuntime | undefined =
    options.appOptions?.twinProduction;
  let pushSender: MobilePushSender | undefined;
  let ownerAccessSweepTenantId: TenantId | undefined;
  let ownerAccessSweepTimer: ReturnType<typeof setInterval> | undefined;
  let ownerAccessSweepRunning = false;
  let customerAuth: CustomerAuthService | undefined =
    options.appOptions?.customerAuth;
  let accountDeletion: AccountDeletionService | undefined =
    options.appOptions?.accountDeletion;
  let billingCustomerAuthorizer:
    | ReturnType<typeof createPlatformCustomerSessionAuthorizer>
    | undefined;
  let talkProfileAuthorizer: TalkProfileAuthorizer | undefined;
  let talkSafetyCustomerAuthorizer: TalkSafetyCustomerAuthorizer | undefined;
  let talkSafetyPlatformAuthority: TalkSafetyPlatformAuthority | undefined;
  let billingFinancialAuthorizer:
    | ReturnType<typeof createPlatformSessionFinancialAuthorizer>
    | undefined;

  // Push delivery is a best-effort integration dependency. Build the sender
  // before the Twin runtime so owner-access notifications can reuse the same
  // canonical registration repository without becoming request/ledger truth.
  if (
    database.mobilePush &&
    env.MASANAWA_FIREBASE_SERVICE_ACCOUNT_JSON?.trim()
  ) {
    pushSender = createFcmPushSender({
      serviceAccountJson: env.MASANAWA_FIREBASE_SERVICE_ACCOUNT_JSON,
      repository: database.mobilePush,
    });
  }

  if (alphaEnabled(env)) {
    if (
      !database.agentPresentations ||
      !database.characterSkillAssignments ||
      !database.characterSessions ||
      !database.agentRuns ||
      !database.skills ||
      !database.skillGuides
    ) {
      await database.close().catch(() => undefined);
      throw new Error("Alpha mode requires canonical agent PostgreSQL repositories");
    }

    const ids = parseAlphaDevIds({
      tenantId: requiredAlphaEnv(env, "MASANAWA_ALPHA_TENANT_ID"),
      userId: requiredAlphaEnv(env, "MASANAWA_ALPHA_USER_ID"),
    });
    const token = requiredAlphaEnv(env, "MASANAWA_ALPHA_DEV_TOKEN");
    const policyRevision = requiredAlphaEnv(
      env,
      "MASANAWA_ALPHA_POLICY_REVISION",
    );
    const relationshipIds = parseAlphaRelationshipMap(
      requiredAlphaEnv(env, "MASANAWA_ALPHA_RELATIONSHIPS_JSON"),
    );

    directoryAuthorizer ??= createAlphaDirectoryAuthorizer({
      token,
      tenantId: ids.tenantId,
      userId: ids.userId,
      relationshipIds,
      ...(database.relationships ? { relationships: database.relationships } : {}),
    });
    conversationAuthorizer ??= createAlphaDevAuthorizer({
      config: {
        token,
        tenantId: ids.tenantId,
        userId: ids.userId,
        policyRevision,
        relationshipIds,
      },
      presentations: database.agentPresentations,
      skillAssignments: database.characterSkillAssignments,
      ...(database.relationships ? { relationships: database.relationships } : {}),
    });
    const alphaGeminiApiKey = requiredAlphaEnv(
      env,
      "MASANAWA_ALPHA_GEMINI_API_KEY",
    );
    strategy ??= createAlphaInferenceStrategy({
      inference: createGeminiAlphaInferenceProvider({
        apiKey: alphaGeminiApiKey,
        model: requiredAlphaEnv(env, "MASANAWA_ALPHA_GEMINI_MODEL"),
      }),
      skills: database.skills,
      guides: database.skillGuides,
    });
    nativeAudio = createGeminiRecordedLiveAudioRenderer({
      apiKey: alphaGeminiApiKey,
      model: env.MASANAWA_ALPHA_GEMINI_LIVE_MODEL ?? "gemini-3.8-live",
      voiceName: env.MASANAWA_ALPHA_GEMINI_LIVE_VOICE ?? "Bodi",
    });
    liveVoiceTokens = createGeminiLiveTokenService({
      paidVoiceAdmission: reviewedMbCallRequired,
      apiKey: alphaGeminiApiKey,
      authorizer: conversationAuthorizer!,
      ...(database.mobileShell ? {mobileShell:database.mobileShell} : {}),
      ...(database.callHistory ? { callHistory: database.callHistory } : {}),
      ...(database.platformAgentProfiles ? { platformProfiles: database.platformAgentProfiles } : {}),
      model: env.MASANAWA_ALPHA_GEMINI_LIVE_MODEL ?? "gemini-3.8-live",
      voiceName: env.MASANAWA_ALPHA_GEMINI_LIVE_VOICE ?? "Bodi",
    });
  }

  const platformTenantRaw = env.MASANAWA_PLATFORM_TENANT_ID?.trim();
  const otpPepper = env.MASANAWA_AUTH_OTP_PEPPER?.trim();
  let platformTenantId: TenantId | undefined;
  if (
    platformTenantRaw &&
    otpPepper &&
    database.platformSessions &&
    database.agentPresentations &&
    database.characterSkillAssignments &&
    database.relationships &&
    database.relationshipProvisioner &&
    database.platformAgentProfiles
  ) {
    platformTenantId = parseCanonicalId("tenant", platformTenantRaw);
    const activePlatformTenantId = platformTenantId;
    const platformPolicyRevision = env.MASANAWA_PLATFORM_POLICY_REVISION?.trim() || "production-mobile-v1";
    try {
      if (!database.initializePlatformPolicy) {
        throw new Error("Platform customer runtime requires policy initialization");
      }
      await database.initializePlatformPolicy(activePlatformTenantId, platformPolicyRevision);
    } catch (error) {
      await database.close().catch(() => undefined);
      throw error;
    }

    // The professional Masana catalog is part of the normal server startup,
    // NOT behind an operator activation flag. This uses only canonical
    // PostgreSQL/Identity stores, never ships simulated contact data to APK.
    // Test/injected database ports may omit these platform provisioning ports.
    if (
      database.platformAgentIdentity &&
      database.skillDistribution &&
      database.featurePool?.connect
    ) {
      try {
        await withCatalogProvisionLock(database.featurePool, activePlatformTenantId, async () => {
          // Resolve identities by approved handle before bootstrapping. This
          // prevents a staff-renamed profile from creating a new character on
          // restart and preserves its chats, Room, follow graph and voice.
          const identityRows=await database.featurePool!.query(
            `SELECT revision.character_id, revision.profile->>'handle' AS handle
             FROM masana.character_revisions revision
             JOIN identity.characters character ON character.tenant_id=revision.tenant_id
               AND character.character_id=revision.character_id AND character.state='active'
             JOIN identity.character_ownership owner ON owner.tenant_id=revision.tenant_id
               AND owner.character_id=revision.character_id AND owner.kind='platform'
             WHERE revision.tenant_id=$1 AND revision.state='approved'
               AND revision.profile->>'handle' LIKE 'masana.%'`,
            [activePlatformTenantId],
          );
          const canonicalByHandle=new Map<string, import("@masanawa/contracts").CharacterId>();
          for(const raw of identityRows.rows){
            const row=raw as {character_id:unknown;handle:unknown};
            if(typeof row.handle!=="string"||typeof row.character_id!=="string")
              throw new Error("invalid_approved_masana_identity");
            const characterId=parseCanonicalId("character",row.character_id);
            if(canonicalByHandle.has(row.handle))
              throw new Error("duplicate_approved_masana_handle");
            canonicalByHandle.set(row.handle,characterId);
          }
          const roster = await ensureDefaultPlatformAgents({
            tenantId: activePlatformTenantId,
            canonicalByHandle,
            identity: database.platformAgentIdentity!,
            presentations: database.agentPresentations!,
            profiles: database.platformAgentProfiles!,
            skillAssignments: database.characterSkillAssignments!,
            skillDistribution: database.skillDistribution!,
          });
          await ensureMasanaCatalogProfiles({
            pool:database.featurePool!,
            tenantId:activePlatformTenantId,
            catalog:roster.catalog,
          });
        });
      } catch (error) {
        await database.close().catch(() => undefined);
        throw error;
      }
    }

    const customerSessions = createPlatformCustomerSessionAuthorizer({
      repository: database.platformSessions,
    });
    billingCustomerAuthorizer = customerSessions;
    msnBalanceAuthorizer = customerSessions;
    talkProfileAuthorizer = customerSessions;
    talkSafetyCustomerAuthorizer = customerSessions;
    talkSafetyPlatformAuthority = createPrincipalTalkSafetyPlatformAuthority({
      sessions: customerSessions,
      adminPrincipals: readPrincipalSet(
        env.MASANAWA_ADMIN_PRINCIPALS ??
          env.MASANAWA_ADMIN_USER_IDS ??
          env.MASANAWA_ADMIN_EMAILS,
      ),
    });
    billingFinancialAuthorizer = createPlatformSessionFinancialAuthorizer({
      repository: database.platformSessions,
    });
    financialAuthorizer ??= createPlatformSessionFinancialAuthorizer({
      repository: database.platformSessions,
    });

    if (!customerAuth) {
      const resendApiKey = env.RESEND_API_KEY?.trim();
      const resendFrom = env.MASANAWA_AUTH_EMAIL_FROM?.trim();
      const smsEndpoint = env.MASANAWA_AUTH_SMS_ENDPOINT?.trim();
      const smsToken = env.MASANAWA_AUTH_SMS_TOKEN?.trim();
      customerAuth = createCustomerAuthService({
        repository: database.platformSessions,
        tenantId: activePlatformTenantId,
        otpPepper,
        ...(resendApiKey && resendFrom
          ? {
              emailDelivery: createResendOtpDelivery({
                apiKey: resendApiKey,
                from: resendFrom,
                publicBaseUrl: env.MASANAWA_AUTH_PUBLIC_BASE_URL?.trim() || "https://masanawa-gateway-production-338f.up.railway.app",
              }),
            }
          : {}),
        ...(smsEndpoint && smsToken
          ? {
              smsDelivery: createHttpSmsOtpDelivery({
                endpoint: smsEndpoint,
                bearerToken: smsToken,
              }),
            }
          : {}),
      });
    }

    const customerAuthorizers = createPlatformCustomerAuthorizers({
      ...(database.featurePool ? {personaReader: createPublishedPersonaReader(database.featurePool,createOfficialKnowledgeReader(database.featurePool))} : {}),
      sessions: customerSessions,
      presentations: database.agentPresentations,
      skillAssignments: database.characterSkillAssignments,
      relationships: database.relationships,
      relationshipProvisioner: database.relationshipProvisioner,
      platformProfiles: database.platformAgentProfiles,
      ...(database.twinProfiles && database.twinEconomy
        ? {
            publicTwinAdmission: {
              async canChat(request) {
                const profile = await database.twinProfiles!.readForCharacter({
                  tenantId: request.tenantId,
                  characterId: request.characterId,
                });
                if (!profile?.discoverable) return false;
                return !await database.twinEconomy!.isTwinBlocked({
                  tenantId: request.tenantId,
                  actorUserId: request.userId,
                  characterId: request.characterId,
                });
              },
              async canContinue(request) {
                const profile = await database.twinProfiles!.readForCharacter({
                  tenantId: request.tenantId,
                  characterId: request.characterId,
                });
                if (!profile) return true;
                if (profile.ownerUserId === request.userId) return true;
                return !await database.twinEconomy!.isTwinBlocked({
                  tenantId: request.tenantId,
                  actorUserId: request.userId,
                  characterId: request.characterId,
                });
              },
            },
          }
        : {}),
      ...(database.featurePool ? {
        publicCreatorAdmission: createPgCreatorPublicReader(
          database.featurePool as unknown as Parameters<typeof createPgCreatorPublicReader>[0]),
      } : {}),
      policyRevision: platformPolicyRevision,
    });
    if (!options.agentDirectoryAuthorizer) {
      directoryAuthorizer = customerAuthorizers.directory;
    }
    if (!options.agentConversationAuthorizer) {
      conversationAuthorizer = customerAuthorizers.conversation;
    }

    if (
      !twinProduction &&
      database.twinProfiles &&
      database.twinEconomy &&
      database.twinEvents &&
      database.commerce &&
      database.personalClones
    ) {
      const adminPrincipals = readPrincipalSet(
        env.MASANAWA_ADMIN_PRINCIPALS ??
          env.MASANAWA_ADMIN_USER_IDS ??
          env.MASANAWA_ADMIN_EMAILS,
      );
      twinProduction = createTwinProductionRuntime({
        sessions: customerSessions,
        profiles: database.twinProfiles,
        ...(database.platformAgentProfiles ? { platformProfiles: database.platformAgentProfiles } : {}),
        economy: database.twinEconomy,
        events: database.twinEvents,
        commerce: database.commerce,
        personalClones: database.personalClones,
        ...(pushSender ? { notifications: pushSender } : {}),
        publicTwinBaseUrl:
          env.MASANAWA_TWIN_PUBLIC_BASE_URL?.trim() ||
          "https://masanawa.com/twin",
        adminPrincipals,
        voice: {
          unitSeconds: boundedEnvInteger(
            env.MASANAWA_TWIN_VOICE_UNIT_SECONDS,
            60,
            1,
            3600,
            "MASANAWA_TWIN_VOICE_UNIT_SECONDS",
          ),
          priceCreditsPerUnit: boundedEnvInteger(
            env.MASANAWA_TWIN_VOICE_PRICE_CREDITS_PER_UNIT,
            10,
            1,
            1_000_000_000,
            "MASANAWA_TWIN_VOICE_PRICE_CREDITS_PER_UNIT",
          ),
          ownerShareBasisPoints: boundedEnvInteger(
            env.MASANAWA_TWIN_VOICE_OWNER_SHARE_BPS,
            8000,
            0,
            10_000,
            "MASANAWA_TWIN_VOICE_OWNER_SHARE_BPS",
          ),
        },
        ownerAccess: {
          platformFeeBasisPoints: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_PLATFORM_FEE_BPS,
            2000,
            0,
            10_000,
            "MASANAWA_OWNER_ACCESS_PLATFORM_FEE_BPS",
          ),
          acceptWithinMinutes: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_ACCEPT_WITHIN_MINUTES,
            1440,
            5,
            7 * 24 * 60,
            "MASANAWA_OWNER_ACCESS_ACCEPT_WITHIN_MINUTES",
          ),
          startGraceMinutes: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_START_GRACE_MINUTES,
            15,
            1,
            180,
            "MASANAWA_OWNER_ACCESS_START_GRACE_MINUTES",
          ),
          completionGraceMinutes: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_COMPLETION_GRACE_MINUTES,
            15,
            1,
            180,
            "MASANAWA_OWNER_ACCESS_COMPLETION_GRACE_MINUTES",
          ),
          messageRetentionDays: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_MESSAGE_RETENTION_DAYS,
            30,
            1,
            365,
            "MASANAWA_OWNER_ACCESS_MESSAGE_RETENTION_DAYS",
          ),
          disputeWindowMinutes: boundedEnvInteger(
            env.MASANAWA_OWNER_ACCESS_DISPUTE_WINDOW_MINUTES,
            24 * 60,
            60,
            7 * 24 * 60,
            "MASANAWA_OWNER_ACCESS_DISPUTE_WINDOW_MINUTES",
          ),
        },
      });
    }
    if (twinProduction?.ownerAccessMaintenance) {
      ownerAccessSweepTenantId = activePlatformTenantId;
    }


    let productionGeminiPool: GeminiCredentialPool | undefined;
    if (!strategy) {
      if (!database.skills || !database.skillGuides) {
        await database.close().catch(() => undefined);
        throw new Error(
          "Production Agent runtime requires canonical Skill repositories",
        );
      }

      const models =
        env.MASANAWA_GEMINI_REPLY_MODELS?.trim() ||
        env.GEMINI_REPLY_MODELS?.trim();
      const fallbackModel =
        env.MASANAWA_GEMINI_MODEL?.trim() ||
        env.MASANAWA_ALPHA_GEMINI_MODEL?.trim() ||
        "gemini-3.8-flash";
      const credentialsJson =
        env.MASANAWA_GEMINI_CREDENTIALS_JSON?.trim() ||
        env.MASANAWA_ALPHA_GEMINI_IMPORTED_CREDENTIALS_JSON?.trim();
      const encryptionKey = env.CREDENTIAL_ENCRYPTION_KEY?.trim();
      const encryptionKeyPrevious =
        env.CREDENTIAL_ENCRYPTION_KEY_PREVIOUS?.trim();
      const supabaseUrl = env.SUPABASE_URL?.trim();
      const supabaseServiceRoleKey = env.SUPABASE_SERVICE_ROLE_KEY?.trim();
      const directApiKey =
        env.MASANAWA_GEMINI_API_KEY?.trim() ||
        env.MASANAWA_ALPHA_GEMINI_API_KEY?.trim();
      let importedBridgeFailure: string | undefined;

      if (credentialsJson && encryptionKey) {
        try {
          productionGeminiPool = parseNurainImportedGeminiCredentialPool({
            importedCredentialsJson: credentialsJson,
            encryptionKey,
            ...(encryptionKeyPrevious ? { encryptionKeyPrevious } : {}),
            ...(models ? { models } : {}),
            fallbackModel,
          });
        } catch (error) {
          importedBridgeFailure =
            error instanceof Error
              ? error.message.slice(0, 160)
              : "Imported Gemini bridge failed";
        }
      }

      if (
        !productionGeminiPool &&
        supabaseUrl &&
        supabaseServiceRoleKey &&
        encryptionKey
      ) {
        try {
          productionGeminiPool = await loadSupabaseGeminiCredentialPool({
            supabaseUrl,
            serviceRoleKey: supabaseServiceRoleKey,
            encryptionKey,
            ...(encryptionKeyPrevious ? { encryptionKeyPrevious } : {}),
            ...(models ? { models } : {}),
            fallbackModel,
          });
        } catch (error) {
          if (!importedBridgeFailure) {
            importedBridgeFailure =
              error instanceof Error
                ? error.message.slice(0, 160)
                : "Supabase Gemini pool load failed";
          }
        }
      }

      if (!productionGeminiPool && directApiKey) {
        productionGeminiPool = parseGeminiCredentialPool({
          apiKey: directApiKey,
          ...(models ? { models } : {}),
          fallbackModel,
        });
      }

      if (!productionGeminiPool) {
        throw new Error(
          importedBridgeFailure
            ? `Gemini credential bridge failed: ${importedBridgeFailure}`
            : "Production Gemini pool failed to initialize",
        );
      }

      if (env.MASANAWA_GEMINI_VERIFY_ON_START === "true") {
        const verification = await verifyGeminiCredentialPool({
          pool: productionGeminiPool,
        });
        process.stdout.write(
          `${JSON.stringify({
            event: "gemini.pool_verified",
            checked: verification.checked,
            authenticated: verification.authenticated,
            model: verification.model,
          })}\n`,
        );
      }

      const cryptoConversationConfigured = Boolean(
        options.appOptions?.financial ||
          (financialAuthorizer &&
            database.crypto &&
            env.NOWPAYMENTS_API_KEY?.trim() &&
            env.NOWPAYMENTS_IPN_SECRET?.trim() &&
            env.NOWPAYMENTS_PAYOUT_EMAIL?.trim() &&
            env.NOWPAYMENTS_PAYOUT_PASSWORD?.trim() &&
            env.MASANAWA_NOWPAYMENTS_RELAY_TOKEN?.trim() &&
            (env.MASANAWA_PUBLIC_BASE_URL?.trim() ||
              env.RAILWAY_STATIC_URL?.trim() ||
              env.RAILWAY_PUBLIC_DOMAIN?.trim())),
      );
      strategy = createProductionAgentStrategy({
        inference: createGeminiCredentialPoolInferenceProvider({
          pool: productionGeminiPool,
        }),
        skills: database.skills,
        guides: database.skillGuides,
        systemInstructions: Object.freeze([
          ...TEACHING_AGENT_SYSTEM_INSTRUCTIONS,
          ...(cryptoConversationConfigured &&
               env.MSNW_NGN_QUOTE_URL?.trim() && env.MSNW_NGN_QUOTE_PUBLIC_KEY?.trim() &&
               env.NOWPAYMENTS_FIXED_EGRESS_CONFIRMED === "true" &&
               env.NOWPAYMENTS_DESTINATION_WHITELIST_CONFIRMED === "true"
            ? MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS
            : []),
          // Flutterwave backs the retained Data tab. Enabling its adapter
          // must not revive retired MSNW/non-data bill prompts in Masana chat.
        ]),
      });
    }

    const liveApiKey =
      productionGeminiPool?.apiKeys[0] ||
      env.MASANAWA_GEMINI_API_KEY?.trim() ||
      env.MASANAWA_ALPHA_GEMINI_API_KEY?.trim();
    if (liveApiKey) {
      const liveModel =
        env.MASANAWA_GEMINI_LIVE_MODEL?.trim() ||
        env.MASANAWA_ALPHA_GEMINI_LIVE_MODEL?.trim() ||
        "gemini-3.8-live";
      const liveVoice =
        env.MASANAWA_GEMINI_LIVE_VOICE?.trim() ||
        env.MASANAWA_ALPHA_GEMINI_LIVE_VOICE?.trim() ||
        "Bodi";
      nativeAudio ??= createGeminiRecordedLiveAudioRenderer({
        apiKey: liveApiKey,
        model: liveModel,
        voiceName: liveVoice,
      });
      if (conversationAuthorizer) {
        liveVoiceTokens = createGeminiLiveTokenService({
          apiKey: liveApiKey,
          authorizer: conversationAuthorizer,
          ...(database.mobileShell ? {mobileShell:database.mobileShell} : {}),
          ...(database.callHistory ? { callHistory: database.callHistory } : {}),
          ...(database.platformAgentProfiles ? { platformProfiles: database.platformAgentProfiles } : {}),
          model: liveModel,
          voiceName: liveVoice,
          // Public direct tokens cannot enforce MB time limits, including
          // support Masana. Retired Credits admission never authorizes a call.
          paidVoiceAdmission: reviewedMbCallRequired,
        });
        // The MB relay mints only after a separately authorized admission.
        // Its provider grant is never returned directly to the phone.
        mbLiveVoiceTokens = createGeminiLiveTokenService({
          apiKey: liveApiKey,
          authorizer: conversationAuthorizer,
          ...(database.mobileShell ? {mobileShell:database.mobileShell} : {}),
          ...(database.platformAgentProfiles ? {platformProfiles:database.platformAgentProfiles} : {}),
          model: liveModel,voiceName: liveVoice,
        });
      }
    }
  }

  const billingEnabled = env.FLUTTERWAVE_BILLS_ENABLED === "true";
  const flutterwaveSecretKey = env.FLUTTERWAVE_SECRET_KEY?.trim();
  const flutterwaveRelayUrl = env.MASANAWA_FLUTTERWAVE_DIRECT_ENABLED==='true'
    ? undefined : env.FLUTTERWAVE_RELAY_URL?.trim();
  const flutterwaveRelayToken = env.MASANAWA_FLUTTERWAVE_DIRECT_ENABLED==='true'
    ? undefined : env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN?.trim();
  const flutterwaveRelayProtocol = env.FLUTTERWAVE_RELAY_PROTOCOL === "dual-header"
    ? ("dual-header" as const)
    : ("bearer" as const);

  if (billingEnabled && Boolean(flutterwaveRelayUrl) !== Boolean(flutterwaveRelayToken)) {
    await database.close().catch(() => undefined);
    throw new TypeError("Flutterwave relay URL and relay token must be configured together");
  }

  const flutterwaveTransport = billingEnabled && flutterwaveSecretKey
    ? new FlutterwaveHttpTransport(flutterwaveTransportConfiguration(env))
    : undefined;
  const flutterwaveBills = billingEnabled && flutterwaveSecretKey && flutterwaveTransport
    ? new FlutterwaveBillsClient({ secretKey: flutterwaveSecretKey, transport: flutterwaveTransport, country: "NG" })
    : undefined;

  if (billingEnabled && flutterwaveBills && env.MASANAWA_FLUTTERWAVE_VERIFY_ON_START === "true") {
    const categories = await flutterwaveBills.listCategories();
    if (categories.length < 1) {
      throw new Error("Flutterwave billing verification returned an empty catalog");
    }
    process.stdout.write(
      `${JSON.stringify({
        event: "flutterwave.billing_verified",
        categoryCount: categories.length,
        relay: Boolean(flutterwaveRelayUrl),
        relayProtocol: flutterwaveRelayProtocol,
      })}\n`,
    );
  }

  const flutterwaveFunding = billingEnabled && flutterwaveSecretKey && flutterwaveTransport
    ? new FlutterwaveFundingClient({ secretKey: flutterwaveSecretKey, transport: flutterwaveTransport })
    : undefined;

  let composedBillingFinancial: BillingFinancialService | undefined =
    options.appOptions?.billingFinancial;
  let composedBillingCheckout: BillingCheckoutService | undefined =
    options.appOptions?.billingCheckout;
  let composedBillingWallet: BillingWalletService | undefined =
    options.appOptions?.billingWallet;

  const webhookHash = env.FLUTTERWAVE_WEBHOOK_SECRET_HASH?.trim();
  const webhookUrl = env.FLUTTERWAVE_WEBHOOK_URL?.trim();
  const actionSecret = env.MASANAWA_BILLING_ACTION_SECRET?.trim();
  const redirectUrl =
    env.MASANAWA_BILLING_REDIRECT_URL?.trim() ||
    (env.MASANAWA_PUBLIC_BASE_URL?.trim()
      ? `${env.MASANAWA_PUBLIC_BASE_URL.trim().replace(/\/$/u, "")}/billing/return`
      : "");
  const feeBasisPoints = Number(env.MASANAWA_BILLING_FEE_BPS ?? "0");
  const feeFixedKobo = Number(env.MASANAWA_BILLING_FEE_FIXED_KOBO ?? "0");

  // Owner-fixed NGN reference. Provider capability and settled custody still
  // govern admission; this reference never creates funds or provider evidence.
  const msnwBillingRate = billingEnabled ? assertMsnwNgnPolicyRate(env.MSNW_BILLING_RATE_KOBO_PER_MSNW) : "100";
  const msnwBillingLedger = billingEnabled && msnwBillingRate &&
      database.featurePool && database.billingQuotes
    ? createMsnwBillingFunding({
        pool:database.featurePool, quotes:database.billingQuotes,
        rateKoboPerMsnw:msnwBillingRate,
      })
    : undefined;

  if (billingEnabled && (!composedBillingFinancial || !composedBillingCheckout || !composedBillingWallet)) {
    if (!billingCustomerAuthorizer || !billingFinancialAuthorizer || !database.billingStore ||
        !database.billingQuotes || !database.billingWebhooks || !database.ngnWallet ||
        !flutterwaveSecretKey || !flutterwaveBills || !flutterwaveFunding || !webhookHash ||
        !webhookUrl || !actionSecret || !redirectUrl ||
        !Number.isSafeInteger(feeBasisPoints) || feeBasisPoints < 0 || feeBasisPoints > 10_000 ||
        !Number.isSafeInteger(feeFixedKobo) || feeFixedKobo < 0) {
      await database.close().catch(() => undefined);
      throw new TypeError(
        "Billing is enabled but canonical customer auth, NGN wallet, or Flutterwave configuration is incomplete",
      );
    }

    composedBillingFinancial ??= createBillingFinancialService({
      billingStore: database.billingStore,
      webhookRepository: database.billingWebhooks,
      authorizer: billingFinancialAuthorizer,
      flutterwaveSecretKey,
      flutterwaveWebhookHash: webhookHash,
      flutterwaveWebhookUrl: webhookUrl,
      providerClient: flutterwaveBills,
      billingFunding: database.billingQuotes,
      ...(msnwBillingLedger ? {msnwBillingFunding:msnwBillingLedger.funding} : {}),
      ...(flutterwaveRelayUrl ? { flutterwaveRelayUrl } : {}),
      ...(flutterwaveRelayToken ? { flutterwaveRelayToken } : {}),
      ...(flutterwaveRelayProtocol === "dual-header"
        ? { flutterwaveRelayProtocol: "dual-header" as const }
        : {}),
    });

    composedBillingCheckout ??= createBillingCheckoutService({
      sessions: billingCustomerAuthorizer,
      quotes: database.billingQuotes,
      catalog: flutterwaveBills,
      funding: flutterwaveFunding,
      billing: composedBillingFinancial,
      actionSecret,
      redirectUrl,
      feeBasisPoints,
      feeFixedKobo,
      ...(twinProduction
        ? { twinMonetization: twinProduction.monetization }
        : {}),
    });

    composedBillingWallet ??= createBillingWalletService({
      sessions: billingCustomerAuthorizer,
      quotes: database.billingQuotes,
      wallet: database.ngnWallet,
      funding: flutterwaveFunding,
      billing: composedBillingFinancial,
      webhookSecretHash: webhookHash,
      ...(twinProduction
        ? { twinMonetization: twinProduction.monetization }
        : {}),
    });
  }

  const nowPaymentsApiKey = env.NOWPAYMENTS_API_KEY?.trim();
  const nowPaymentsIpnSecret = env.NOWPAYMENTS_IPN_SECRET?.trim();
  const nowPaymentsEmail = env.NOWPAYMENTS_PAYOUT_EMAIL?.trim();
  const nowPaymentsPassword = env.NOWPAYMENTS_PAYOUT_PASSWORD?.trim();

  const nowPaymentsRelayToken = env.MASANAWA_NOWPAYMENTS_RELAY_TOKEN?.trim();
  const nowPaymentsRelayBaseUrl =
    env.NOWPAYMENTS_RELAY_URL?.trim() ||
    "https://209-38-107-173.sslip.io/v1";
  const rawPublicBaseUrl =
    env.MASANAWA_PUBLIC_BASE_URL?.trim() ||
    env.RAILWAY_STATIC_URL?.trim() ||
    env.RAILWAY_PUBLIC_DOMAIN?.trim();
  const publicBaseUrl = rawPublicBaseUrl
    ? (/^https?:\/\//iu.test(rawPublicBaseUrl)
        ? rawPublicBaseUrl
        : `https://${rawPublicBaseUrl}`)
    : undefined;

  const conversionProviderCodes = readCsvEnv(
    env.NOWPAYMENTS_CONVERSION_PROVIDER_CODES,
  );
  const withdrawalProviderCodes = readCsvEnv(
    env.NOWPAYMENTS_WITHDRAWAL_PROVIDER_CODES,
  );
  const withdrawalAllowlist = readWithdrawalAllowlist(
    env.NOWPAYMENTS_WITHDRAWAL_ALLOWLIST_JSON ??
      env.NOWPAYMENTS_PAYOUT_DESTINATION_ALLOWLIST_JSON,
  );
  const payoutFeeMode =
    env.NOWPAYMENTS_PAYOUT_FEE_MODE === "sender" ||
    env.NOWPAYMENTS_PAYOUT_FEE_MODE === "receiver"
      ? env.NOWPAYMENTS_PAYOUT_FEE_MODE
      : undefined;

  if (env.NODE_ENV === "production") {
    // Safe production diagnostics need no rollout switch. Never log secrets,
    // exchange amounts, wallet addresses, passwords or custody balances.
    // Emit readiness even when a missing Gateway auth dependency prevents
    // NOWPayments client composition.
    // Emit safe composition evidence even when the provider cannot be wired.
    // Variable PRESENCE is not evidence of successful provider authentication.
    process.stdout.write(JSON.stringify({
      event: "nowpayments.configuration_readiness",
      apiKeyConfigured: Boolean(nowPaymentsApiKey),
      ipnConfigured: Boolean(nowPaymentsIpnSecret),
      custodyCredentialsConfigured: Boolean(nowPaymentsEmail && nowPaymentsPassword),
      relayConfigured: Boolean(nowPaymentsRelayToken),
      publicCallbackConfigured: Boolean(publicBaseUrl),
      cryptoStoreConfigured: Boolean(database.crypto),
      userAuthorizerConfigured: Boolean(financialAuthorizer),
      conversionRouteCount: conversionProviderCodes.length,
      payoutWhitelistConfigured: withdrawalAllowlist.size > 0,
      externalPayoutIpApproved: env.NOWPAYMENTS_FIXED_EGRESS_CONFIRMED === "true",
    }) + "\n");
  }
  let composedFinancial = options.appOptions?.financial;
  if (
    !composedFinancial &&
    financialAuthorizer &&
    database.crypto &&
    nowPaymentsApiKey &&
    nowPaymentsIpnSecret &&
    nowPaymentsRelayToken &&
    publicBaseUrl
  ) {
    const sharedProviderOptions = {
      apiKey: nowPaymentsApiKey,
      baseUrl: nowPaymentsRelayBaseUrl,
      relayToken: nowPaymentsRelayToken,
    };
    const payments = new NowPaymentsClient(sharedProviderOptions);
    // Basic provider operations must not depend on withdrawal credentials.
    // Custody and payout only become available with their own real secrets.
    const custody = nowPaymentsEmail && nowPaymentsPassword
      ? new NowPaymentsCustodyClient({
          ...sharedProviderOptions,
          email: nowPaymentsEmail,
          password: nowPaymentsPassword,
        })
      : undefined;
    const payout = nowPaymentsEmail && nowPaymentsPassword
      ? new NowPaymentsPayoutClient({
          ...sharedProviderOptions,
          email: nowPaymentsEmail,
          password: nowPaymentsPassword,
        })
      : undefined;
    if (env.NODE_ENV === "production") {
      // Independent READ ONLY provider diagnostics, automatically enabled
      // once authenticated payments/custody have been configured. No payment, payout,
      // balance mutation, currency amount, credential or provider response
      // body is logged. Never block Gateway readiness on external providers.
      void probeNowPaymentsReadOnly({
        payments,
        custody,
        proposedConversionCodes: conversionProviderCodes,
        signal: AbortSignal.timeout(20_000),
      }).then((result) => {
        process.stdout.write(JSON.stringify({
          event: "nowpayments.readonly_probe",
          ...result,
        }) + "\n");
      }).catch(() => {
        process.stderr.write(JSON.stringify({
          event: "nowpayments.readonly_probe",
          error: "provider_probe_unavailable",
        }) + "\n");
      });
    }
    const conversionsConfigured = Boolean(
      custody && conversionProviderCodes.length >= 2,
    );
    const payoutsConfigured = Boolean(
      payout && payoutFeeMode && withdrawalProviderCodes.length > 0 &&
      withdrawalAllowlist.size > 0 &&
      env.NOWPAYMENTS_PAYOUT_VERIFICATION_CODE?.trim(),
    );

    // Only qualified provider 2FA, fixed egress and a verified prefunded
    // stablecoin treasury can buy crypto with existing custodied MSNW.
    const ngnQuote=env.MSNW_NGN_QUOTE_URL?.trim()&&env.MSNW_NGN_QUOTE_PUBLIC_KEY?.trim()
      ?createSignedNgnQuoteReader({url:env.MSNW_NGN_QUOTE_URL.trim(),publicKey:env.MSNW_NGN_QUOTE_PUBLIC_KEY.trim()}):undefined;
    // Compatibility column retained for old receipt recovery. New quotes
    // require fresh signed NGN evidence, never the static USD environment rate.
    const msnwRate = "1";

    const runtimeEvidence = () => {
      if (!custody) throw new Error("nowpayments.custody.credentials_missing");
      return collectNowPaymentsRuntimeEvidence({
        payments,
        custody,
        ...(payout ? { payout } : {}),
        config: {
          conversionEnabled: conversionsConfigured,
          payoutEnabled: payoutsConfigured,
          ipWhitelistSatisfied:
            env.NOWPAYMENTS_FIXED_EGRESS_CONFIRMED === "true",
          payoutDestinationWhitelistSatisfied:
            env.NOWPAYMENTS_DESTINATION_WHITELIST_CONFIRMED === "true",
          conversionProviderCodes,
          withdrawalProviderCodes,
        },
        signal: AbortSignal.timeout(15_000),
      });
    };

    const fiatCurrencies = readCsvEnv(env.NOWPAYMENTS_FIAT_CURRENCIES);
    const settlementProviderCode =
      env.NOWPAYMENTS_FIAT_SETTLEMENT_PROVIDER_CODE?.trim().toUpperCase();

    composedFinancial = createFinancialService({
      authorizer: financialAuthorizer,
      crypto: database.crypto,
      nowPayments: payments,
      ...(custody ? { nowPaymentsCustody: custody } : {}),
      ...(payout ? { nowPaymentsPayout: payout } : {}),
      ...(payoutsConfigured ? { withdrawalEvidence: runtimeEvidence } : {}),
      ...(conversionsConfigured ? { conversionEvidence: runtimeEvidence } : {}),
      ...(payoutFeeMode === undefined
        ? {}
        : { withdrawalNetworkFeeMode: payoutFeeMode }),
      withdrawalDestinationApproved: async (request) =>
        withdrawalAllowlist.has(
          `${request.userId}|${request.providerCode}|${request.destinationAddress}`,
        ),
      ...(env.NOWPAYMENTS_PAYOUT_VERIFICATION_CODE?.trim()
        ? {
            payoutVerificationCodeProvider: async () =>
              env.NOWPAYMENTS_PAYOUT_VERIFICATION_CODE!.trim(),
          }
        : {}),
      ...(custody && fiatCurrencies.length > 0 && settlementProviderCode
        ? {
            fiatOnRamp: {
              enabled: true as const,
              fiatCurrencies,
              settlementProviderCode,
            },
          }
        : {}),
      nowPaymentsIpnSecret,
      publicBaseUrl,
    });
  }

    const composedDirectory =
    options.appOptions?.agentDirectory ??
    (directoryAuthorizer && database.agentPresentations
      ? createAgentDirectoryService({
          presentations: database.agentPresentations,
          authorizer: directoryAuthorizer,
          ...(database.platformAgentProfiles
            ? { platformProfiles: database.platformAgentProfiles }
            : {}),
          ...(database.userAgentPreferences
            ? { userPreferences: database.userAgentPreferences }
            : {}),
          ...(database.mobileActivity
            ? { activity: database.mobileActivity }
            : {}),
          ...(database.featurePool ? {
            identities: createPgAgentMasanaIdentityReader(database.featurePool,createOfficialKnowledgeReader(database.featurePool)),
          } : {}),
        })
      : undefined);

  const composedTeachingAssistant: AgentTeachingAssistant | undefined =
    database.teachingProgress
      ? createAgentTeachingAssistant({
          repository: database.teachingProgress,
        })
      : undefined;

  const composedPrivateChatMedia =
    options.appOptions?.privateChatMedia ??
    (database.featurePool && conversationAuthorizer
      ? createPrivateChatMediaService({
          pool: database.featurePool,
          authorizer: conversationAuthorizer,
        })
      : undefined);

  if(env.MASANAWA_MB_REPLIES_ENABLED==='true' &&
    (!conversationAuthorizer||!customerAuth||!database.mobileShell||!database.featurePool||
     options.appOptions?.agentConversation)) {
    await database.close();
    throw new TypeError('Atomic MB replies require canonical persisted turns, account-state authority and the registered conversation service');
  }

  const composedConversation =
    options.appOptions?.agentConversation ??
    (conversationAuthorizer &&
    strategy &&
    database.characterSessions &&
    database.agentRuns
      ? createAgentConversationService({
          sessions: database.characterSessions,
          runs: database.agentRuns,
          authorizer: conversationAuthorizer,
          strategy,
          ...(env.MASANAWA_MB_REPLIES_ENABLED==='true'?{beforeTurn:async(authorizationHeader:string|undefined)=>{
            if(!customerAuth)throw Object.assign(new Error('Reply accounting authority is unavailable'),{statusCode:503});
            await customerAuth.authorizeSensitiveMutation({authorizationHeader});
          }}:{}),
          ...(nativeAudio ? { nativeAudio } : {}),
          voiceForCharacter: async (scope) => {
            const profile = await database.platformAgentProfiles?.readForCharacter(scope);
            if (profile?.voiceProvider.toLowerCase() === "gemini") return profile.voiceName;
            return undefined;
          },
          ...(database.mobileShell ? { mobileShell: database.mobileShell } : {}),
          ...(composedTeachingAssistant ? { teachingAssistant: composedTeachingAssistant } : {}),
          sessionDurationMs: 24 * 60 * 60 * 1000,
        })
      : undefined);

  const composedPush =
    options.appOptions?.mobilePush ??
    (conversationAuthorizer && database.mobilePush
      ? createMobilePushRegistrationService({
          authorizer: conversationAuthorizer,
          repository: database.mobilePush,
        })
      : undefined);

  const composedShellActionExecutor: AgentShellActionExecutor | undefined =
    options.agentShellActionExecutor;

  const composedShell =
    options.appOptions?.agentShell ??
    (conversationAuthorizer &&
    database.characterSessions &&
    database.mobileShell
      ? createAgentShellService({
          authorizer: conversationAuthorizer,
          sessions: database.characterSessions,
          repository: database.mobileShell,
          ...(database.mobileActivity
            ? { activity: database.mobileActivity }
            : {}),
          ...(composedShellActionExecutor
            ? { actionExecutor: composedShellActionExecutor }
            : {}),
          minimumAppVersion: env.MASANAWA_MOBILE_MIN_VERSION ?? "1.0.0",
          recommendedAppVersion:
            env.MASANAWA_MOBILE_RECOMMENDED_VERSION ??
            env.MASANAWA_MOBILE_MIN_VERSION ??
            "1.0.0",
        })
      : undefined);

  const composedTalkProfiles =
    options.appOptions?.talkProfiles ??
    (database.talkProfiles && talkProfileAuthorizer
      ? createTalkProfileService({
          repository: database.talkProfiles,
          authorizer: talkProfileAuthorizer,
        })
      : undefined);

  const composedTalkSafety =
    options.appOptions?.talkSafety ??
    (database.talkSafety &&
    talkSafetyCustomerAuthorizer &&
    talkSafetyPlatformAuthority
      ? (() => {
          const base = createTalkSafetyService({
            repository: database.talkSafety!,
            customerAuthorizer: talkSafetyCustomerAuthorizer!,
            platformAuthority: talkSafetyPlatformAuthority!,
          });
          return base;
        })()
      : undefined);

  // Account deletion is an independently authenticated, durable request intake.
  // It cannot complete erasure: finance, session revocation and processor cleanup
  // are separate server-side release gates.
  if (!accountDeletion && database.platformSessions &&
      database.accountDeletionRequests && database.accountDeletionChallenges && otpPepper) {
    const resendApiKey = env.RESEND_API_KEY?.trim();
    const resendFrom = env.MASANAWA_AUTH_EMAIL_FROM?.trim();
    const smsEndpoint = env.MASANAWA_AUTH_SMS_ENDPOINT?.trim();
    const smsToken = env.MASANAWA_AUTH_SMS_TOKEN?.trim();
    accountDeletion = createAccountDeletionService({
      sessions: createPlatformCustomerSessionAuthorizer({
        repository: database.platformSessions,
      }),
      requests: database.accountDeletionRequests,
      challenges: database.accountDeletionChallenges,
      otpPepper,
      ...(resendApiKey && resendFrom
        ? { email: createResendAccountDeletionSender({
            apiKey: resendApiKey, from: resendFrom,
          }) }
        : {}),
      ...(smsEndpoint && smsToken
        ? { sms: createHttpAccountDeletionSmsSender({
            endpoint: smsEndpoint, bearerToken: smsToken,
          }) }
        : {}),
    });
  }

  // Reuse the already authorized user session. No headers can select tenant or
  // grant a video editor role. An absent database port leaves the feature off.
  const sessions = database.platformSessions
    ? (billingCustomerAuthorizer ?? createPlatformCustomerSessionAuthorizer({
        repository: database.platformSessions,
      }))
    : undefined;
  const editors = readPrincipalSet(
    env.MASANAWA_ADMIN_USER_IDS ?? env.MASANAWA_ADMIN_PRINCIPALS ??
    env.MASANAWA_ADMIN_EMAILS,
  );
  let status: StatusRuntime | undefined = options.appOptions?.status;
  let statusPromotions: PgStatusPromotions | undefined;
  let statusGuestProofs: PgStatusGuestProofs | undefined;
  let mediaConfiguration:StatusMediaConfiguration | undefined;
  try {
    mediaConfiguration = options.statusMedia ?? createConfiguredStatusMedia(env);
    if (!status && sessions && database.status) {
    const {feed,editorial,eligibility,published} = database.status;
    const mediaRuntime = createStatusMediaRuntime({
      eligibility,published,
      ...(mediaConfiguration ? {configuration:mediaConfiguration} : {}),
    });
    const author = (tenant:string,id:string) => eligibility.author(tenant,id);
    const promotionsConfigured=env.MASANAWA_STATUS_PROMOTIONS_ENABLED==='true' &&
      !!env.MASANAWA_STATUS_ATTRIBUTION_SECRET &&
      !!env.MASANAWA_STATUS_PUBLIC_BASE_URL && !!database.featurePool;
    if(promotionsConfigured)statusPromotions=new PgStatusPromotions(database.featurePool!,
      env.MASANAWA_STATUS_ATTRIBUTION_SECRET!,env.MASANAWA_STATUS_PUBLIC_BASE_URL!);
    const publicPreview=statusPromotions?
      new PgPublicStatusLanding(database.featurePool!):undefined;
    if(publicPreview&&env.MASANAWA_STATUS_ATTRIBUTION_SECRET){
      statusGuestProofs=new PgStatusGuestProofs(database.featurePool!,publicPreview);
    }
    const publicImages=publicPreview&&mediaConfiguration?
      createApprovedPublicImageReader(publicPreview,mediaConfiguration):undefined;
    status = {
      sessions,
      feed: new FeedService(
        feed, author, mediaRuntime.approved,
        true,
      ),
      ...(statusPromotions?{
        promotions:statusPromotions,
        // Crawlers never obtain privileged feed/media access or create paid views.
        // Public navigation stays disabled until legal/privacy qualification.
        publicLanding:{port:{
          find:id=>publicPreview!.find(id),
          validReferral:(post,token)=>publicPreview!.validReferral(post,token),
          ...(publicImages?{readApprovedImage:publicImages}:{}),
        },enabled:()=>false,imagesEnabled:()=>!!publicImages,
          guestVerificationEnabled:()=>false,
          publicBaseUrl:env.MASANAWA_STATUS_PUBLIC_BASE_URL!},
        guestExperience:{port:{
          find:id=>publicPreview!.find(id),
          validReferral:(post,token)=>publicPreview!.validReferral(post,token),
        },enabled:()=>false,imagesEnabled:()=>!!publicImages},
        ...(statusGuestProofs?{guestProof:{port:statusGuestProofs,
          signer:new GuestConsentSigner(env.MASANAWA_STATUS_ATTRIBUTION_SECRET!),
          enabled:()=>false,publicBaseUrl:env.MASANAWA_STATUS_PUBLIC_BASE_URL!},
          guestReview:{port:statusGuestProofs,enabled:()=>false}}:{}),
        // Financial activation still requires a separately completed,
        // security-qualified full Status/public-web client composition.
        promotionsEnabled:()=>false,
      }:{}),
      editorial: new EditorialReviewService(editorial,author,mediaRuntime.approved),
      ...(database.featurePool ? {saved:new SavedLibraryService(
        new PgSavedLibraryRepository(database.featurePool,true))} : {}),
      isEditor: async session => editors.has(session.userId),
      // Publication and media access require explicit runtime qualification;
      // a mounted route must not implicitly activate editorial operations.
      enabled: () => true,
      media: mediaRuntime.media,
      ...(database.featurePool ? {updateMediaAlt:async (
        tenantId:string,reviewerId:string,mediaId:string,altText:string|null)=>{
        const result=await database.featurePool!.query<{
          media_id:string;status_alt_text:string|null;
        }>(`
          UPDATE masana.character_media m
          SET status_alt_text=$4::text,
            status_alt_approved_by=CASE WHEN $4::text IS NULL
              THEN NULL ELSE $2::text END,
            status_alt_approved_at=CASE WHEN $4::text IS NULL
              THEN NULL ELSE now() END,
            updated_at=now()
          WHERE m.tenant_id=$1 AND m.media_id=$3
            AND m.kind IN ('portrait','banner','cover')
            AND length(btrim(m.rights_note))>4
            AND length(btrim(m.approved_by))>0
            AND EXISTS(
              SELECT 1 FROM masana.character_revisions r
              JOIN identity.characters c ON c.tenant_id=r.tenant_id
                AND c.character_id=r.character_id AND c.state='active'
              JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id
                AND o.character_id=c.character_id AND o.kind='platform'
              WHERE r.tenant_id=m.tenant_id AND r.character_id=m.character_id
                AND r.state='approved'
            )
          RETURNING m.media_id,m.status_alt_text
        `,[tenantId,reviewerId,mediaId,altText]);
        const row=result.rows[0];
        return row?{mediaId:row.media_id,altText:row.status_alt_text}:null;
      }}:{}),
    };
  }
  } catch (error) {
    // Fail closed without stranding the pool when trusted S3 origins or media
    // composition are invalid. No Gateway listener has been created yet.
    await database.close().catch(() => undefined);
    throw error;
  }
  // One signed-in fan and tenant authority for retained Status, Masana and MB services.
  const featurePool = database.featurePool;
  const featureTenant = platformTenantId;
  const resolveFeatureFan = async (authorizationHeader: string | undefined) => {
    if (!authorizationHeader || !sessions || !featureTenant)
      throw new CustomerAuthError("UNAUTHORIZED", 401);
    const session = await sessions.authorize({ authorizationHeader });
    if (session.tenantId !== featureTenant)
      throw new CustomerAuthError("FORBIDDEN", 403);
    return { tenantId: session.tenantId, userId: session.userId };
  };
  const masana: GatewayAppOptions["masana"] = options.appOptions?.masana ??
    (featurePool && sessions && featureTenant ? {
      auth:{
        optional: async(header:string|undefined) => header
          ? resolveFeatureFan(header)
          : {tenantId:featureTenant,userId:null},
        fan: resolveFeatureFan,
        staff: async(header:string|undefined) => {
          const actor=await resolveFeatureFan(header);
          if(!editors.has(actor.userId))
            throw new CustomerAuthError("FORBIDDEN",403);
          return actor;
        },
      },
      store:createMasanaPostgresStore(featurePool),
      qualityFeedback:createMasanaQualityFeedbackPort(featurePool),
      validateProfile:validateMasanaProfile,
      ...createApprovedMasanaMediaPort(featurePool,mediaConfiguration),
    } : undefined);
  const gbWalletSummary: GbWalletSummaryPorts | undefined = options.appOptions?.gbWalletSummary ??
    (featurePool && sessions && featureTenant ? {
      authorize: async (header: string | undefined) => resolveFeatureFan(header),
      read: createPostgresGbWalletRepository(featurePool).read,
    } : undefined);
  let mbRelay:ReturnType<typeof createGbCallRelay>|undefined;
  const callJournal=featurePool?createGbCallAdmissions(featurePool):undefined;
  const approvedCallMasana=async(actor:{tenantId:string;userId:string},characterId:string)=>{
    if(!featurePool)return null;
    const result=await featurePool.query<{revision:number}>(`
      SELECT r.revision FROM masana.character_revisions r
      JOIN identity.characters c ON c.tenant_id=r.tenant_id
        AND c.character_id=r.character_id AND c.state='active'
      JOIN identity.character_ownership o ON o.tenant_id=r.tenant_id
        AND o.character_id=r.character_id AND o.kind='platform'
      WHERE r.tenant_id=$1 AND r.character_id=$2 AND r.state='approved'
      LIMIT 1`,[actor.tenantId,characterId]);
    const revision=result.rows[0]?.revision;
    return typeof revision==='number'&&Number.isSafeInteger(revision)&&revision>0
      ?{version:String(revision)}:null;
  };
  const mbCallSecret=env.MASANAWA_GB_SEND_REVIEW_SECRET?.trim();
  if(env.MASANAWA_MB_CALLS_ENABLED==='true' &&
     (!callJournal||!sessions||!featureTenant||!mbCallSecret||
      Buffer.byteLength(mbCallSecret)<32||!mbLiveVoiceTokens||
      !conversationAuthorizer||!publicBaseUrl))
    throw new TypeError('MB calls enabled without authorized journal, live provider, review key and public relay origin');
  const gbCalls:GbCallPorts|undefined=options.appOptions?.gbCalls ??
    (env.MASANAWA_MB_CALLS_ENABLED==='true' && callJournal && sessions && featureTenant &&
     mbCallSecret && Buffer.byteLength(mbCallSecret)>=32 && mbLiveVoiceTokens &&
     conversationAuthorizer && publicBaseUrl ? {
      authorize:resolveFeatureFan,approved:approvedCallMasana,
      balance:createPostgresGbWalletRepository(featurePool!).read,
      journal:callJournal,reviewSecret:mbCallSecret,
      ready:()=>mbRelay?.ready()===true,
      grant:async(actor,authorizationHeader,id)=>{
        const admission=await callJournal.read(actor,id);
        if(!admission)throw new GbCallReviewError('gb.call.not_found',404);
        if(admission.state!=='reserved')
          throw new GbCallReviewError('gb.call.not_reserved',409);
        if(!await approvedCallMasana(actor,admission.characterId))
          throw new GbCallReviewError('gb.call.masana_unavailable',404);
        const validateOwner=async()=>{
          const current=await conversationAuthorizer!.authorize({
            authorizationHeader,characterId:parseCanonicalId('character',admission.characterId),
          });
          if(current.scope.tenantId!==actor.tenantId||current.scope.userId!==actor.userId)
            throw new Error('gb.call.unauthorized');
        };
        await validateOwner();
        const provider=await mbLiveVoiceTokens!.mint({authorizationHeader,
          characterId:admission.characterId});
        // One history identity per durable admission, including grant retries.
        const history=await featurePool!.query<{call_id:string}>(`INSERT INTO agents.masana_call_history
          (tenant_id,user_id,call_id,character_id,display_name,expires_at,mb_admission_id)
          SELECT p.tenant_id,$2,$3::uuid,p.character_id,a.display_name,$5,$6
          FROM agents.platform_agent_profiles p
          JOIN agents.agent_presentations a USING(tenant_id,character_id)
          WHERE p.tenant_id=$1 AND p.character_id=$4 AND a.visible_in_user_app
          ON CONFLICT (tenant_id,user_id,mb_admission_id) WHERE mb_admission_id IS NOT NULL
          DO UPDATE SET expires_at=EXCLUDED.expires_at
          RETURNING call_id`,[actor.tenantId,actor.userId,
            createCanonicalId('request').slice('request_'.length),admission.characterId,admission.expiresAt,id]);
        const callId=history.rows[0]?.call_id;
        if(!callId)throw new GbCallReviewError('gb.call.masana_unavailable',404);
        return mbRelay!.issue(actor,admission.characterId,id,{...provider,callId},validateOwner);
      },
      finish:(actor,id)=>mbRelay!.finish(actor,id),
    }:undefined);
  if(env.MASANAWA_MB_CALLS_ENABLED==='true' && gbCalls &&
     !options.appOptions?.gbCallRelay && callJournal && publicBaseUrl){
    mbRelay=createGbCallRelay({store:callJournal,publicOrigin:publicBaseUrl,
      report:event=>console.error(JSON.stringify({event:'agent.mb_call_relay_failed',...event,
        ...( /^[a-f0-9]{40}$/.test(env.RAILWAY_GIT_COMMIT_SHA??'') ? {sourceSha:env.RAILWAY_GIT_COMMIT_SHA}:{}),
      })),
      validate:async(actor,id)=>{if(!await approvedCallMasana(actor,id))
        throw new Error('gb.call.masana_unavailable');},
    });
  }
  const gbActivityStorage=featurePool?createGbWalletActivityRepository(featurePool):undefined;
  const gbWalletActivity: GbActivityPorts | undefined = options.appOptions?.gbWalletActivity ??
    (featurePool && sessions && featureTenant ? {
      authorize: resolveFeatureFan,
      list: gbActivityStorage!.list,
      find: gbActivityStorage!.find,
      summary: gbActivityStorage!.summary,
      listHolds: gbActivityStorage!.listHolds,findHold: gbActivityStorage!.findHold,
    } : undefined);
  // No legacy Credit Send fallback. The signer is a private Railway secret,
  // never a client-supplied or generated-on-each-request review authority.
  const mbSendReviewSecret = env.MASANAWA_GB_SEND_REVIEW_SECRET?.trim();
  const ngnStorage=featurePool?createNgnWalletRepository(featurePool):undefined;
  const ngnWallet:NgnWalletPorts|undefined=options.appOptions?.ngnWallet ??
    (ngnStorage && sessions && featureTenant && mbSendReviewSecret && Buffer.byteLength(mbSendReviewSecret)>=32 ? {
      authorize:resolveFeatureFan,read:ngnStorage.read,exchange:ngnStorage.exchange,
      receipt:ngnStorage.readReceipt,reviewSecret:mbSendReviewSecret,
      // Explicit operator gates follow provider/cost/limits qualification; no
      // new live price or cash flow is activated by merely merging source.
      ready:()=>env.MASANAWA_NGN_EXCHANGE_ENABLED==="true" &&
        qualifiedNgnExchange(env.MASANAWA_NGN_EXCHANGE_QUALIFICATION),
    }:undefined);
  const gbSendReview: GbSendPorts | undefined =
    options.appOptions?.gbSendReview ??
    (featurePool && sessions && featureTenant &&
        mbSendReviewSecret && Buffer.byteLength(mbSendReviewSecret, "utf8") >= 32
      ? {
          authorize: resolveFeatureFan,
          resolveRecipient: createGbRecipientDirectory(featurePool).resolve,
          searchRecipients: createGbRecipientDirectory(featurePool).search,
          balance: createPostgresGbWalletRepository(featurePool).read,
          transfer: createPostgresGbWalletRepository(featurePool).transfer,
          readTransfer: createPostgresGbWalletRepository(featurePool).readTransfer,
          reviewSecret: mbSendReviewSecret,
        }
      : undefined);
  // Reviewed Status tips are a separate, opt-in MB money movement.
  // Published posts and their approved platform Masana are rechecked at
  // review, confirmation and inside the serializable ledger debit.
  const gbStatusTips:StatusTipPorts|undefined=
    options.appOptions?.gbStatusTips ??
    (env.MASANAWA_STATUS_TIPS_ENABLED==="true" && status && featurePool &&
     sessions && featureTenant && mbSendReviewSecret &&
     Buffer.byteLength(mbSendReviewSecret,"utf8")>=32 ? {
      authorize:resolveFeatureFan,
      post:async (actor,postId)=>{
        const result=await featurePool.query<{post_id:string;character_id:string;display_name:string}>(`
          SELECT p.id::text AS post_id,p.author_masana_id AS character_id,
            coalesce(nullif(btrim(r.profile->>'displayName'),''),
              p.author_masana_id) AS display_name
          FROM feed.posts p
          JOIN masana.character_revisions r ON r.tenant_id=p.tenant_id
            AND r.character_id=p.author_masana_id AND r.state='approved'
          JOIN identity.characters c ON c.tenant_id=r.tenant_id
            AND c.character_id=r.character_id AND c.state='active'
          JOIN identity.character_ownership o ON o.tenant_id=c.tenant_id
            AND o.character_id=c.character_id AND o.kind='platform'
          WHERE p.tenant_id=$1 AND p.id=$2::uuid AND p.state='published'
          LIMIT 1
        `,[actor.tenantId,postId]);
        const row=result.rows[0];
        return row?{postId:row.post_id,characterId:row.character_id,
          displayName:row.display_name}:null;
      },
      balance:createPostgresGbWalletRepository(featurePool).read,
      tip:createPostgresGbWalletRepository(featurePool).tip,
      readTip:createPostgresGbWalletRepository(featurePool).readTip,
      reviewSecret:mbSendReviewSecret,
    }:undefined);
  const gbRequests: GbRequestPorts | undefined =
    options.appOptions?.gbRequests ??
    (featurePool && sessions && featureTenant && gbSendReview
      ? {authorize: resolveFeatureFan,
         resolveRecipient: gbSendReview.resolveRecipient,
         store: createPostgresGbRequestRepository(featurePool)}
      : undefined);
  // Funding instructions appear only after provider-confirmed assignment.
  // Railway's existing merchant secret uses BILLSTACK_SECRET_KEY. Prefer the
  // namespaced setting if both are provisioned during a credential rotation.
  const billstackSecret =
    env.MASANAWA_BILLSTACK_SECRET_KEY?.trim() || env.BILLSTACK_SECRET_KEY?.trim();
  const billstackFunding: BillstackFundingPorts | undefined =
    options.appOptions?.billstackFunding ??
    (billstackSecret && featurePool && sessions && featureTenant ? (() => {
      const storage = createGbBillstackRepository(featurePool);
      const configuredBank=env.MASANAWA_BILLSTACK_BANK_ID?.trim() || "9PSB";
      if(configuredBank!=="9PSB"&&configuredBank!=="PALMPAY")
        throw new Error("Invalid Billstack reserved-account bank configuration");
      const provider = createBillstackReservedAccountClient({secretKey:billstackSecret,bankId:configuredBank});
      const independentSettlementReady=env.MASANAWA_NGN_FUNDING_VERIFIED==="true" &&
        typeof options.appOptions?.billstackSettlementVerifier==="function";
      // Owner-authorized signed-webhook live mode. The flag deliberately does
      // not claim independent settlement verification; exact receiving account,
      // merchant reference, HMAC and the immutable NGN journal still apply.
      const signedWebhookLive=env.MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED==="true";
      return {
        authorize:async(header:string|undefined)=>resolveFeatureFan(header),
        applicantComplete:async(actor)=>{
          const result=await featurePool.query(
            `SELECT 1 FROM security.platform_user_profiles
             WHERE tenant_id=$1 AND user_id=$2 AND email IS NOT NULL
               AND first_name IS NOT NULL AND last_name IS NOT NULL
               AND contact_phone IS NOT NULL`,
            [actor.tenantId,actor.userId]);
          return result.rowCount===1;
        },
        completeApplicant:async(actor,details)=>{
          const result=await featurePool.query(
            `UPDATE security.platform_user_profiles p
             SET first_name=$3,last_name=$4,contact_phone=$5,updated_at=clock_timestamp()
             WHERE p.tenant_id=$1 AND p.user_id=$2 AND p.email IS NOT NULL
               AND NOT EXISTS (SELECT 1 FROM gb_wallet.billstack_accounts a
                 WHERE a.tenant_id=p.tenant_id AND a.account_id=p.user_id)
             RETURNING p.user_id`,
            [actor.tenantId,actor.userId,details.firstName,details.lastName,details.contactPhone]);
          if(result.rowCount!==1)throw new Error("billstack.applicant_change_unavailable");
        },
        // Profile text alone does not prove verified contact/eligibility.
        applicant:options.appOptions?.billstackVerifiedApplicant ?? (async(actor,reference)=>{
          const rows=await featurePool.query(
            `SELECT email,first_name,last_name,contact_phone
             FROM security.platform_user_profiles
             WHERE tenant_id=$1 AND user_id=$2 AND email IS NOT NULL
               AND first_name IS NOT NULL AND last_name IS NOT NULL
               AND contact_phone IS NOT NULL`,
            [actor.tenantId,actor.userId]);
          const row=rows.rows[0] as {email?:string;first_name?:string;
            last_name?:string;contact_phone?:string}|undefined;
          if(!row?.email||!row.first_name||!row.last_name||!row.contact_phone)
            throw new Error("billstack.incomplete_applicant");
          return {reference,email:row.email,firstName:row.first_name,
            lastName:row.last_name,phone:row.contact_phone};
        }),
        read:storage.read,
        start:storage.start,
        create:provider.reserve,
        finalize:storage.finalize,
        credit:(payment:Parameters<typeof storage.applyVerifiedPayment>[0])=>
          createNgnWalletRepository(featurePool).deposit(payment),
        verifySettlement:independentSettlementReady
          ? options.appOptions!.billstackSettlementVerifier!
          : async(payment)=>{
            if(!signedWebhookLive)
              throw new Error("billstack.live_deposit_disabled");
            return payment;
          },
        ready:()=>independentSettlementReady||signedWebhookLive,
        canAssign:()=>true,
        webhookSecret:billstackSecret,
      };
    })() : undefined);
  const masanaInbox: GatewayAppOptions["masanaInbox"] =
    options.appOptions?.masanaInbox ??
    (featurePool && sessions && featureTenant ? {
      enabled: () => true,
      resolveFan: async (header: string | undefined) => {
        const session = await resolveFeatureFan(header);
        return { tenantId: session.tenantId, fanUserId: session.userId };
      },
      // Message history remains in the original J03 journal. Hides require a
      // separately qualified 0006 schema before they may be enabled.
      inbox: createMasanaInboxRepository(featurePool, { hiddenTurnsReady: false }),
    } : undefined);

  let app: ManagedNodeServer;
  try {
    const msnwPaystackEnrollment = env.PAYSTACK_SECRET_KEY?.trim() &&
      database.featurePool && billingCustomerAuthorizer
      ? createMsnwPaystackEnrollmentService({
          pool: database.featurePool,
          sessions: billingCustomerAuthorizer,
          paystackSecretKey: env.PAYSTACK_SECRET_KEY,
        })
      : undefined;
    // Retirement is permanent: old rollout values cannot restore customer APIs.
    const productScope = "masana-lite" as const;

    // Read-only data discovery is off by default. Server/operator-reviewed
    // exact bundle mapping plus the existing credentialed Flutterwave adapter
    // are both required; old bill purchases remain excluded in lite mode.
    const gbDataCatalogue: GbDataCataloguePorts | undefined =
      options.appOptions?.gbDataCatalogue ?? (() => {
        if (env.MASANAWA_GB_DATA_CATALOG_ENABLED !== "true") return undefined;
        const raw = env.MASANAWA_GB_DATA_APPROVALS_JSON?.trim();
        if (!raw || !flutterwaveBills || !featurePool || !sessions || !featureTenant) {
          throw new TypeError("GB data catalogue enabled without provider, authenticated database, or approved mapping");
        }
        const parsed: unknown = JSON.parse(raw);
        if (!Array.isArray(parsed)) {
          throw new TypeError("GB data mapping must be an operator-approved array");
        }
        const approved = parsed as ApprovedWholeGbBundle[];
        // Validate approval structure, duplicate provider identity and exact
        // prices before exposing a route. An empty live result never approves
        // an item; every customer visit uses real Flutterwave catalogue data.
        projectVerifiedWholeGbBundles(approved, [], new Date());
        return {
          authorize: async (header: string | undefined) => {
            const actor = await resolveFeatureFan(header);
            return { tenantId: actor.tenantId, userId: actor.userId };
          },
          approved: async () => approved,
          liveItems: createLiveFlutterwaveGbDataItems(flutterwaveBills),
        };
      })();
    const gbDataPurchases: GbDataPurchaseRoutes | undefined =
      options.appOptions?.gbDataPurchases ?? (() => {
        if (env.MASANAWA_GB_DATA_PURCHASE_ENABLED !== "true") return undefined;
        if (!gbDataCatalogue || !flutterwaveBills || !featurePool ||
            !sessions || !featureTenant) {
          throw new TypeError("GB Data purchase enabled without approved live catalogue, credentialed provider and durable MB ledger");
        }
        const reservations=createGbUsageReservations(featurePool);
        const journal=createGbDataJournal(featurePool);
        return {
          authorize:gbDataCatalogue.authorize,
          service:{
            approved:gbDataCatalogue.approved,
            liveItems:gbDataCatalogue.liveItems,
            reserve:reservations.reserve,
            capture:reservations.capture,
            release:reservations.release,
            claim:journal.claim,
            read:journal.read,
            resolve:journal.resolve,
            pay:(input:Parameters<typeof flutterwaveBills.createPayment>[0])=>
              flutterwaveBills.createPayment(input),
            status:(reference:string)=>flutterwaveBills.getStatus(reference),
          },
        };
      })();
    app = appFactory({
      ...(status ? {status} : {}),
      ...(masana ? {masana} : {}),
      ...(masanaInbox ? {masanaInbox} : {}),
      ...(options.appOptions ?? {}),
      productScope,
      ...(gbDataCatalogue ? { gbDataCatalogue } : {}),
      ...(gbDataPurchases ? { gbDataPurchases } : {}),
      ...(billstackFunding ? { billstackFunding } : {}),
      ...(ngnWallet ? { ngnWallet } : {}),
      ...(composedPrivateChatMedia ? { privateChatMedia: composedPrivateChatMedia } : {}),
      ...(customerAuth ? { customerAuth } : {}),
      ...(sessions ? { mobileDiagnostics: {
        sessions,
        observe: (report) => { process.stdout.write(JSON.stringify(report) + "\n"); },
      } } : {}),
      ...(database.featurePool && sessions
        ? { accountDataExports: createAccountDataExports(database.featurePool,sessions) }
        : {}),
      ...(accountDeletion ? { accountDeletion } : {}),
      ...(composedTalkProfiles ? { talkProfiles: composedTalkProfiles } : {}),
      ...(featurePool&&sessions&&featureTenant?{usernames:{authorize:resolveFeatureFan,...createUsernameStore(featurePool)}}:{}),
      ...(composedTalkSafety ? { talkSafety: composedTalkSafety } : {}),
      ...(composedBillingFinancial ? { billingFinancial: composedBillingFinancial } : {}),
      ...(composedBillingCheckout ? { billingCheckout: composedBillingCheckout } : {}),
      ...(composedBillingWallet ? { billingWallet: composedBillingWallet } : {}),
      ...(composedFinancial ? { financial: composedFinancial } : {}),
      // Paystack verification is independent of MSNW issuance. Verified fiat
      // remains a pending obligation until custody/quote settlement.
      ...(env.PAYSTACK_SECRET_KEY?.trim() &&
          database.featurePool && msnBalanceAuthorizer
        ? { msnwPaystackFiat: createMsnwPaystackFiatService({
            pool: database.featurePool,
            authorizer: msnBalanceAuthorizer,
            paystackSecretKey: env.PAYSTACK_SECRET_KEY,
            ...(msnwPaystackEnrollment ? {
              onCustomerIdentification: msnwPaystackEnrollment.handleProviderIdentification,
            } : {}),
          }) }
        : {}),
      // Legacy P2P and Credit Send are retired at the application boundary.
      // The historical escrow and credit ledgers remain intact for readback,
      // reconciliation, retention and any required account-data exports.
      ...(twinProduction ? { twinProduction } : {}),
      ...(composedDirectory ? { agentDirectory: composedDirectory } : {}),
      ...(gbWalletSummary ? { gbWalletSummary } : {}),
      ...(gbWalletActivity ? { gbWalletActivity } : {}),
      ...(gbCalls ? {gbCalls} : {}),
      ...(mbRelay ? {gbCallRelay:mbRelay} : {}),
      ...(gbSendReview ? { gbSendReview } : {}),
      ...(gbStatusTips ? { gbStatusTips } : {}),
      ...(gbRequests ? { gbRequests } : {}),
      ...(!options.appOptions?.callHistory && directoryAuthorizer && database.callHistory
        ? { callHistory: createCallHistoryService({ authorizer: directoryAuthorizer, repository: database.callHistory }) }
        : {}),
      ...(composedConversation
        ? { agentConversation: composedConversation }
        : {}),
      ...(composedShell ? { agentShell: composedShell } : {}),
      ...(liveVoiceTokens ? { liveVoiceTokens } : {}),
      ...(composedPush ? { mobilePush: composedPush } : {}),
      ...(options.appOptions?.mobileNotifications
        ? { mobileNotifications: options.appOptions.mobileNotifications }
        : directoryAuthorizer && database.mobilePush
        ? { mobileNotifications: createAccountNotificationService({
            authorizer: directoryAuthorizer,
            repository: database.mobilePush,
          }) }
        : {}),
      readinessChecks: [
        ...(options.appOptions?.readinessChecks ?? []),
        database.readinessCheck,
      ],
      isDraining: drain.isDraining,
    });
  } catch (error) {
    await database.close().catch(() => undefined);
    throw error;
  }

  let officialSocialTimer:ReturnType<typeof setInterval>|undefined;
  let officialSocialRunning=false;
  let replyRecoveryTimer: ReturnType<typeof setInterval> | undefined;
  let statusRetention: StatusRetentionWorker | undefined;
  let replyRecoveryRunning=false;
  const recoverReplies=async()=>{
    if(replyRecoveryRunning||drain.isDraining()||!database.featurePool)return;
    replyRecoveryRunning=true;
    try { await recoverExpiredMbReplies(database.featurePool); }
    catch { console.error(JSON.stringify({event:"agent.mb_reply_recovery_failed",code:"unavailable"})); }
    finally { replyRecoveryRunning=false; }
  };
  const lifecycle = await startNodeService({
    serviceName: "gateway",
    server: app,
    config,
    signals: processRef,
    ...(options.logger ? { logger: options.logger } : {}),
    onDraining: () => {
      drain.beginDraining();
      clearInterval(replyRecoveryTimer);
      clearInterval(officialSocialTimer);
      void statusRetention?.stop();
      if (ownerAccessSweepTimer) {
        clearInterval(ownerAccessSweepTimer);
        ownerAccessSweepTimer = undefined;
      }
    },
    onAfterClose: async () => {
      clearInterval(replyRecoveryTimer);
      clearInterval(officialSocialTimer);
      await statusRetention?.stop();
      if (ownerAccessSweepTimer) {
        clearInterval(ownerAccessSweepTimer);
        ownerAccessSweepTimer = undefined;
      }
      await database.close();
    },
    onFatalShutdown: () => {
      processRef.exitCode = 1;
    },
  });

  if(database.featurePool&&env.MASANAWA_OFFICIAL_SOCIAL_IMPORT_ENABLED==='true'){
    const sync=createOfficialSocialSync(database.featurePool,createOfficialSocialFetcher({
      ...(env.MASANAWA_OFFICIAL_X_BEARER?{xBearer:env.MASANAWA_OFFICIAL_X_BEARER}:{}),
      ...(env.MASANAWA_OFFICIAL_FACEBOOK_BEARER?{facebookBearer:env.MASANAWA_OFFICIAL_FACEBOOK_BEARER}:{}),
      ...(env.MASANAWA_OFFICIAL_FACEBOOK_VERSION?{facebookVersion:env.MASANAWA_OFFICIAL_FACEBOOK_VERSION}:{}),
    }));
    const run=async()=>{if(officialSocialRunning||drain.isDraining())return;officialSocialRunning=true;
      try{await sync.runOnce();}catch{console.error(JSON.stringify({event:'official.source_sync_unavailable'}));}
      finally{officialSocialRunning=false;}};
    officialSocialTimer=setInterval(()=>{void run();},60000);officialSocialTimer.unref();
  }
  if(database.featurePool){
    await recoverReplies();
    replyRecoveryTimer=setInterval(()=>{void recoverReplies()},30000);
    replyRecoveryTimer.unref();
  }

  if(statusPromotions){
    statusRetention=new StatusRetentionWorker({
      purgeExpired:limit=>statusPromotions!.purgeExpired(limit),
      pruneExpiredViewChallenges:limit=>statusPromotions!.pruneExpiredViewChallenges(limit),
      ...(statusGuestProofs?{pruneExpiredGuestEvidence:limit=>statusGuestProofs.pruneExpired(limit)}:{}),
    },()=>{
      // Nothing about post content, account IDs or viewer identity enters logs.
      console.error(JSON.stringify({event:'status.retention_sweep_failed',code:'retry_later'}));
    },mediaConfiguration?.objects.deleteObject
      ?new StatusMediaDeletionWorker(statusPromotions,{
        deleteObject:mediaConfiguration.objects.deleteObject,
        statObject:mediaConfiguration.objects.statObject,
      }):undefined);
    statusRetention.start();
  }

  const runOwnerAccessSweep = async () => {
    if (
      ownerAccessSweepRunning ||
      drain.isDraining() ||
      !ownerAccessSweepTenantId ||
      !twinProduction?.ownerAccessMaintenance
    ) {
      return;
    }
    ownerAccessSweepRunning = true;
    try {
      await twinProduction.ownerAccessMaintenance.sweep({
        tenantId: ownerAccessSweepTenantId,
        limit: 100,
      });
    } catch {
      // Lifecycle maintenance is retryable and must never crash the customer
      // Gateway. Individual request settlement remains durable/idempotent.
    } finally {
      ownerAccessSweepRunning = false;
    }
  };

  if (ownerAccessSweepTenantId && twinProduction?.ownerAccessMaintenance) {
    ownerAccessSweepTimer = setInterval(() => {
      void runOwnerAccessSweep();
    }, 60_000);
    ownerAccessSweepTimer.unref();
    void runOwnerAccessSweep();
  }

  return Object.freeze({
    config,
    address: lifecycle.address,
    app,
    ...(pushSender ? { pushSender } : {}),
    isDraining: drain.isDraining,
    drain: drain.beginDraining,
    shutdown: (reason: ServiceSignal | "manual" = "manual") =>
      lifecycle.stop(reason),
    disposeSignals: lifecycle.disposeSignals,
  });
}

function isDirectExecution(): boolean {
  const entry = process.argv[1];
  return Boolean(entry && import.meta.url === pathToFileURL(entry).href);
}

if (isDirectExecution()) {
  void startGatewayService().catch((error: unknown) => {
    const message = error instanceof Error ? error.message : "Unknown startup error";
    process.stderr.write(`${JSON.stringify({ event: "service.start_failed", service: "gateway", reason: message })}\n`);
    process.exitCode = 1;
  });
}

