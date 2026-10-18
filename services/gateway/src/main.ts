import { createGeminiRecordedLiveAudioRenderer } from "./recorded_live_audio.js";
import { FeedService, EditorialReviewService } from "@masanawa/feed";
import { RoomError } from "@masanawa/rooms";
import {
  createMasanaPostgresStore, PgHomeFeedRepository, PgEditorialReviewRepository, PgStatusEligibility,
  PgFeedMediaAuthorization, createPostgresVideoStore,
  createPostgresYouTubeSourceAdminStore,
  createPgRoomsRepository, createPgRoomDiscussionRepository,
  createPgRoomBookmarkStore, createPgRoomMembershipRepository,
  createMasanaInboxRepository,
  ensureMasanaCatalogProfilesAndRooms,withCatalogProvisionLock,
} from "@masanawa/postgres";
import {createPgAgentRoomDirectory,createPgAgentMasanaIdentityReader} from "./agent_directory_rooms.js";
import { createStatusMediaRuntime, type StatusMediaConfiguration } from "./modules/home_feed/media_runtime.js";
import { createConfiguredStatusMedia } from "./modules/home_feed/media_environment.js";
import {validateMasanaProfile} from "@masanawa/masana";
import {createApprovedMasanaMediaPort} from "./modules/masana/profile_media.js";
import {createMasanaQualityFeedbackPort} from "./modules/masana/quality_feedback.js";
import type { StatusRuntime } from "./modules/home_feed/runtime.js";
import { VideoAdmissionError } from "./modules/external_videos/service.js";
import { createIncomingCallService, type IncomingRepository, type IncomingCallService } from "./incoming_calls/service.js";
import { createPostgresIncomingCallRepository } from "./incoming_calls/postgres_repository.js";
import { createIncomingServerAuthorizer } from "./incoming_calls/server_authorizer.js";
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
import {
  parseCanonicalId,
  createCanonicalId,
  readRequiredEnv,
  type TenantId,
} from "@masanawa/contracts";
import {
  hashPlatformSessionToken,
  type CustomerChannelRepository,
  type PlatformSessionRepository,
} from "@masanawa/security";
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
import {
  platformProductMigrationRoots,
  createPostgresAgentPresentationRepository,
  createPostgresAgentRunRepository,
  createPostgresCharacterSessionRepository,
  createPostgresCharacterOwnershipReader,
  createPostgresCharacterSkillAssignmentRepository,
  createPostgresIdentityRepository,
  createPostgresCommerceRepository,
  createPostgresCryptoRepository,
  createPostgresCryptoChatActionRepository,
  createPostgresPlatformAgentProfileRepository,
  createPostgresSkillGuideRepository,
  createPostgresTeachingProgressRepository,
  createPostgresSkillDistributionRepository,
  createPostgresSkillRepository,
  createPostgresUserAgentPreferenceRepository,
  createPostgresCloneSetupRepository,
  createPostgresPersonalCloneProvisioningRepository,
  createPostgresUserRelationshipReader,
  createPostgresUserRelationshipProvisioner,
  createPostgresPlatformSessionRepository,
  createPostgresAccountDeletionRepository,
  createPostgresAccountDeletionChallengeRepository,
  createPostgresCustomerChannelRepository,
  createPostgresServiceDependency,
  createPostgresMobileShellRepository,
  createPostgresMobilePushRepository,
  createPostgresMobileAgentActivityRepository,
  createPostgresBillingQuoteRepository,
  createPostgresNgnWalletRepository,
  createPostgresBillingFulfillmentStore,
  createPostgresBillingWebhookRepository,
  createPostgresTwinProfileRepository,
  createPostgresTwinRuntimeRepository,
  createPostgresTwinEconomyEventStore,
  withTransaction,
  initializePostgresPolicyRevision,
} from "@masanawa/postgres";
import {
  createAgentDirectoryService,
  type AgentDirectoryAuthorizer,
} from "./agent_directory.js";
import {
  createAgentConversationService,
  type TwinConversationObserver,
} from "./agent_conversation.js";
import {
  createCreatorCloneService,
  type CreatorCloneAuthorizer,
} from "./creator_clone.js";
import { createCreatorEconomyService } from "./creator_economy.js";
import { createGeminiCreatorGenerator, CreatorGenerationError } from "./creator_agents/generator.js";
import { createPostgresCreatorAgentService, type CreatorPool } from "./creator_agents/store.js";
import { createCreatorSkillService } from "./creator_skills.js";
import {
  createCommerceCatalogService,
  type CommerceUserAuthorizer,
} from "./commerce_catalog.js";
import { createCommerceFulfillmentService } from "./commerce_fulfillment.js";
import type {
  AgentConversationAuthorizer,
} from "./agent_conversation_contract.js";
import {
  createAlphaDevAuthorizer,
  createAlphaDirectoryAuthorizer,
  createAlphaCreatorAuthorizer,
  createAlphaCommerceAuthorizer,
  parseAlphaDevIds,
  parseAlphaRelationshipMap,
} from "./alpha_dev.js";
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
import { createMsnLedgerStore } from "./msn_wallet/store.js";
import { createMsnFundingJournal } from "./msn_wallet/quote_journal.js";
import { createMsnwPaystackDvaService } from "./msn_wallet/paystack_dva.js";
import { createMsnwPaystackEnrollmentService } from "./msn_wallet/paystack_customer_enrollment.js";
import { createMsnwOnchainBalanceReader } from "./msn_wallet/msnw_onchain_balance.js";
import { createMsnwPaystackFiatService } from "./msn_wallet/paystack_fiat_evidence.js";
import { createMsnwCustodyService } from "./msn_wallet/custody_send.js";
import { createMsnwBillingFunding } from "./msn_wallet/billing_funding.js";
import { createMsnwBillingService } from "./msn_wallet/billing_service.js";
import { createMsnwUsdtConversion } from "./msn_wallet/usdt_conversion.js";
import { probeNowPaymentsReadOnly } from "./nowpayments_readonly_probe.js";
import { createP2pService } from "./p2p/service.js";
import { createMsnwP2pCustodyEscrow } from "./p2p/custody_escrow.js";
import { configuredP2pEvidenceStorage } from "./p2p/evidence_storage.js";
import { createVerifiedP2pBankMethods } from "./p2p/bank_methods.js";
import type { MsnBalanceAuthority } from "./msn_wallet/routes.js";
import { createAgentShellService } from "./agent_shell.js";
import { createPrivateChatMediaService } from "./private_chat_media.js";
import type {
  AgentShellActionExecutor,
  LiveVoiceTokenService,
} from "./agent_shell_contract.js";
import { createGeminiLiveTokenService } from "./live_voice_token.js";
import { createPostgresGroupCallRepository } from "./group_calls/postgres_repository.js";
import { createGroupCallService, GroupCallError, type GroupCallRepository } from "./group_calls/service.js";
import { createPostgresCallHistoryRepository } from "./call_history/postgres_repository.js";
import { createCallHistoryService, type CallHistoryRepository, type CallHistoryRecorder } from "./call_history/service.js";
import { createAccountNotificationService } from "./notification_preferences.js";
import {
  createMobilePushRegistrationService,
  createFcmPushSender,
  type MobilePushSender,
} from "./mobile_push.js";
import { createTalkService, type TalkAuthorizer } from "./talks/service.js";
import { createPostgresTalkRepository } from "./talks/postgres_repository.js";
import { createTalkReplayService, type TalkReplayAuthorizer } from "./talk_replay/service.js";
import { createPostgresTalkReplayRepository } from "./talk_replay/postgres_repository.js";
import { createPostgresReplayMediaRepository } from "./talk_replay/egress/postgres_media_repository.js";
import { createLiveKitReplayEgress } from "./talk_replay/egress/livekit_egress.js";
import { createReplayObjectStore } from "./talk_replay/playback/s3_object_store.js";
import { createTalkReplayCoordinator } from "./talk_replay/egress/coordinator.js";
import {
  createTalkLiveService,
  type TalkLiveAuthorizer,
} from "./talk_live/service.js";
import { createPostgresTalkLiveRepository } from "./talk_live/postgres_repository.js";
import { createLiveKitTalkMediaTokenIssuer } from "./talk_live/livekit_media.js";
import { createLiveKitTalkMediaAdmin } from "./talk_moderation/livekit_admin.js";
import { createLiveKitTalkAiRuntimeDispatcher } from "./talk_ai_worker/livekit_dispatch.js";
import { createTalkModerationService, type TalkModerationAuthorizer } from "./talk_moderation/service.js";
import { createPostgresTalkModerationRepository } from "./talk_moderation/postgres_repository.js";
import { createTalkAiSeatService, type TalkAiSeatAuthorizer } from "./talk_ai_seats/service.js";
import { createPostgresTalkAiSeatRepository } from "./talk_ai_seats/postgres_repository.js";
import {
  createTalkProfileService,
  type TalkProfileAuthorizer,
} from "./talk_profiles/service.js";
import { createPostgresTalkProfileRepository } from "./talk_profiles/postgres_repository.js";
import {
  createTalkActivityService,
  type TalkActivityAuthorizer,
} from "./talk_activity/service.js";
import { createPostgresTalkActivityRepository } from "./talk_activity/postgres_repository.js";
import {
  createTalkSearchService,
  type TalkSearchAuthorizer,
} from "./talk_search/service.js";
import { createPostgresTalkSearchRepository } from "./talk_search/postgres_repository.js";
import {
  createTalkLibraryService,
  type TalkLibraryAuthorizer,
} from "./talk_library/service.js";
import { createPostgresTalkLibraryRepository } from "./talk_library/postgres_repository.js";
import { createPostgresTalkPushDedupeRepository } from "./talk_notifications/postgres_dedupe.js";
import { createTalkPushDeliveryRuntime, type TalkPushDeliveryRuntime } from "./talk_notifications/runtime.js";
import {
  createTalkGiftService,
  type TalkGiftAuthorizer,
} from "./talk_gifts/service.js";
import { createPostgresTalkGiftRepository } from "./talk_gifts/postgres_repository.js";
import {
  createTalkPollService,
  type TalkPollAuthorizer,
} from "./talk_polls/service.js";
import { createPostgresTalkPollRepository } from "./talk_polls/postgres_repository.js";
import { createPostgresTalkSafetyRepository } from "./talk_safety/repository.js";
import { createTalkSafetyService, type TalkSafetyCustomerAuthorizer, type TalkSafetyPlatformAuthority } from "./talk_safety/service.js";
import { createPrincipalTalkSafetyPlatformAuthority } from "./talk_safety/platform_authority.js";
import { createPostgresTalkSafetyReplayBridge, withReplayBlockSynchronization } from "./talk_safety/replay_bridge.js";
import { createDirectTwinService } from "./talk_direct_twin/service.js";
import { createPostgresDirectTwinRepository } from "./talk_direct_twin/postgres_repository.js";
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
import type { AgentBillingAssistant } from "./agent_billing_assistant.js";
import {
  MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS,
  createMsnwAgentBillingAssistant,
} from "./agent_msnw_billing_assistant.js";
import {
  TEACHING_AGENT_SYSTEM_INSTRUCTIONS,
  createAgentTeachingAssistant,
  type AgentTeachingAssistant,
} from "./agent_teaching_assistant.js";
import { createCustomerChannelBridge } from "./customer_channel_bridge.js";
import type { AgentCryptoAssistant } from "./agent_crypto_assistant.js";
import {
  MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS,
  createMsnwAgentCryptoAssistant,
} from "./agent_msnw_crypto_assistant.js";
import type { CustomerChannelOptions } from "./customer_channel_routes.js";
import { sendTelegram } from "./customer_channel_routes.js";
import { registerAndVerifyTelegramWebhook } from "./telegram_webhook_registration.js";
import {
  createLinkedWhatsAppController,
  type LinkedWhatsAppController,
} from "./whatsapp_linked_device.js";
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
  readonly videos?: ReturnType<typeof createPostgresVideoStore>;
  /** Reuses the same canonical platform Pool for Rooms and C10. */
  readonly featurePool?: Parameters<typeof createPgRoomsRepository>[0];
  readonly callHistory?: CallHistoryRepository & CallHistoryRecorder;
  readonly groupCalls?: GroupCallRepository;
  readonly incomingCalls?: IncomingRepository;
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
  readonly customerChannels?: CustomerChannelRepository;
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
  readonly talks?: ReturnType<typeof createPostgresTalkRepository>;
  readonly talkReplay?: ReturnType<typeof createPostgresTalkReplayRepository>;
  readonly talkReplayMedia?: ReturnType<typeof createPostgresReplayMediaRepository>;
  readonly talkLive?: ReturnType<typeof createPostgresTalkLiveRepository>;
  readonly talkModeration?: ReturnType<typeof createPostgresTalkModerationRepository>;
  readonly talkAiSeats?: ReturnType<typeof createPostgresTalkAiSeatRepository>;
  readonly talkProfiles?: ReturnType<typeof createPostgresTalkProfileRepository>;
  readonly talkActivity?: ReturnType<typeof createPostgresTalkActivityRepository>;
  readonly talkSearch?: ReturnType<typeof createPostgresTalkSearchRepository>;
  readonly talkLibrary?: ReturnType<typeof createPostgresTalkLibraryRepository>;
  readonly talkGifts?: ReturnType<typeof createPostgresTalkGiftRepository>;
  readonly talkPolls?: ReturnType<typeof createPostgresTalkPollRepository>;
  readonly talkSafety?: ReturnType<typeof createPostgresTalkSafetyRepository>;
  readonly talkSafetyReplay?: ReturnType<typeof createPostgresTalkSafetyReplayBridge>;
  readonly directTwin?: ReturnType<typeof createPostgresDirectTwinRepository>;
  readonly talkPushDedupe?: ReturnType<typeof createPostgresTalkPushDedupeRepository>;
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
  readonly creatorCloneAuthorizer?: CreatorCloneAuthorizer;
  readonly commerceAuthorizer?: CommerceUserAuthorizer;
  readonly financialAuthorizer?: FinancialAuthorizer;
  readonly agentStrategy?: AgentStrategy;
  readonly agentShellActionExecutor?: AgentShellActionExecutor;
}

export interface GatewayServiceRuntime {
  readonly config: GatewayServiceConfig;
  readonly address: string;
  readonly app: ManagedNodeServer;
  readonly pushSender?: MobilePushSender;
  readonly talkPushDelivery?: TalkPushDeliveryRuntime;
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
  const groupCalls = createPostgresGroupCallRepository(database.pool);
  return Object.freeze({
    readinessCheck: database.readinessCheck,
    featurePool: database.pool,
    status: {
      feed: new PgHomeFeedRepository(database.pool),
      editorial: new PgEditorialReviewRepository(database.pool),
      eligibility: new PgStatusEligibility(database.pool),
      published: new PgFeedMediaAuthorization(database.pool),
    },
    videos: createPostgresVideoStore(database.pool),
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
    incomingCalls: createPostgresIncomingCallRepository(database.pool),
    groupCalls,
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
    customerChannels: createPostgresCustomerChannelRepository(database.pool),
    commerce: createPostgresCommerceRepository(database.pool),
    crypto: createPostgresCryptoRepository(database.pool),
    cryptoChatActions: createPostgresCryptoChatActionRepository(database.pool),
    ownerships: createPostgresCharacterOwnershipReader(database.pool),
    mobileShell: createPostgresMobileShellRepository(database.pool),
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
    talks: createPostgresTalkRepository(database.pool),
    talkReplay: createPostgresTalkReplayRepository(database.pool),
    talkReplayMedia: createPostgresReplayMediaRepository(database.pool),
    talkLive: createPostgresTalkLiveRepository(database.pool),
    talkModeration: createPostgresTalkModerationRepository(database.pool),
    talkAiSeats: createPostgresTalkAiSeatRepository(database.pool),
    talkProfiles: createPostgresTalkProfileRepository(database.pool),
    talkActivity: createPostgresTalkActivityRepository(database.pool),
    talkSearch: createPostgresTalkSearchRepository(database.pool),
    talkLibrary: createPostgresTalkLibraryRepository(database.pool),
    talkPushDedupe: createPostgresTalkPushDedupeRepository(database.pool),
    talkGifts: createPostgresTalkGiftRepository(database.pool),
    talkPolls: createPostgresTalkPollRepository(database.pool),
    talkSafety: createPostgresTalkSafetyRepository(database.pool),
    talkSafetyReplay: createPostgresTalkSafetyReplayBridge(database.pool),
    directTwin: createPostgresDirectTwinRepository(database.pool),
    close: async () => {
      await groupCalls.drainBackground();
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

/**
 * Bound Room editorial privilege: only an authenticated, tenant-checked
 * session can be considered, and only for the staff capability when the
 * independent staff feature is explicitly qualified. Caller headers and
 * request payloads never supply roles.
 */
export function roomRolesForSession(
  capability: "rooms.read" | "rooms.join" | "rooms.ask" | "rooms.staff",
  userId: string,
  editorUserIds: ReadonlySet<string>,
  staffEnabled: boolean,
): readonly string[] {
  return capability === "rooms.staff" && staffEnabled && editorUserIds.has(userId)
    ? ["rooms_editor"] : [];
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
  let creatorCloneAuthorizer = options.creatorCloneAuthorizer;
  let commerceAuthorizer = options.commerceAuthorizer;
  let financialAuthorizer = options.financialAuthorizer;
  let msnBalanceAuthorizer: MsnBalanceAuthority | undefined;
  let strategy = options.agentStrategy;
  let nativeAudio;
  let liveVoiceTokens: LiveVoiceTokenService | undefined;
  let twinConversationObserver: TwinConversationObserver | undefined;
  let twinProduction: TwinProductionRuntime | undefined =
    options.appOptions?.twinProduction;
  let pushSender: MobilePushSender | undefined;
  let ownerAccessSweepTenantId: TenantId | undefined;
  let incomingRecoveryTimer: ReturnType<typeof setInterval> | undefined;
  let incomingRecovery: Promise<void> | undefined;
  let channelRecoveryTimer: ReturnType<typeof setInterval> | undefined;
  let channelRecovery: Promise<void> | undefined;
  let incomingCalls: IncomingCallService | undefined;
  let ownerAccessSweepTimer: ReturnType<typeof setInterval> | undefined;
  let ownerAccessSweepRunning = false;
  let talkPushDedupePurgeTimer: ReturnType<typeof setInterval> | undefined;
  let talkPushDedupePurgeRunning = false;
  let customerAuth: CustomerAuthService | undefined =
    options.appOptions?.customerAuth;
  let accountDeletion: AccountDeletionService | undefined =
    options.appOptions?.accountDeletion;
  let billingCustomerAuthorizer:
    | ReturnType<typeof createPlatformCustomerSessionAuthorizer>
    | undefined;
  let talkAuthorizer: TalkAuthorizer | undefined;
  let talkReplayAuthorizer: TalkReplayAuthorizer | undefined;
  let talkLiveAuthorizer: TalkLiveAuthorizer | undefined;
  let talkModerationAuthorizer: TalkModerationAuthorizer | undefined;
  let talkAiSeatAuthorizer: TalkAiSeatAuthorizer | undefined;
  let talkProfileAuthorizer: TalkProfileAuthorizer | undefined;
  let talkActivityAuthorizer: TalkActivityAuthorizer | undefined;
  let talkSearchAuthorizer: TalkSearchAuthorizer | undefined;
  let talkLibraryAuthorizer: TalkLibraryAuthorizer | undefined;
  let talkGiftAuthorizer: TalkGiftAuthorizer | undefined;
  let talkPollAuthorizer: TalkPollAuthorizer | undefined;
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

  const talkPushDelivery = createTalkPushDeliveryRuntime({
    ...(pushSender ? { sender: pushSender } : {}),
    ...(database.talkPushDedupe ? { dedupe: database.talkPushDedupe } : {}),
  });

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
    creatorCloneAuthorizer ??= createAlphaCreatorAuthorizer({
      token,
      tenantId: ids.tenantId,
      userId: ids.userId,
    });
    commerceAuthorizer ??= createAlphaCommerceAuthorizer({
      token,
      tenantId: ids.tenantId,
      userId: ids.userId,
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
          await ensureMasanaCatalogProfilesAndRooms({
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
    talkAuthorizer = customerSessions;
    talkReplayAuthorizer = customerSessions;
    talkLiveAuthorizer = customerSessions;
    talkModerationAuthorizer = customerSessions;
    talkAiSeatAuthorizer = customerSessions;
    talkProfileAuthorizer = customerSessions;
    talkActivityAuthorizer = customerSessions;
    talkSearchAuthorizer = customerSessions;
    talkLibraryAuthorizer = customerSessions;
    talkGiftAuthorizer = customerSessions;
    talkPollAuthorizer = customerSessions;
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
      policyRevision: platformPolicyRevision,
    });
    if (!options.agentDirectoryAuthorizer) {
      directoryAuthorizer = customerAuthorizers.directory;
    }
    if (!options.agentConversationAuthorizer) {
      conversationAuthorizer = customerAuthorizers.conversation;
    }
    if (!options.creatorCloneAuthorizer) {
      creatorCloneAuthorizer = customerAuthorizers.creator;
    }
    if (!options.commerceAuthorizer) {
      commerceAuthorizer = customerAuthorizers.commerce;
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

    if (database.twinProfiles && database.twinEvents) {
      twinConversationObserver = Object.freeze<TwinConversationObserver>({
        async opened(request) {
          const profile = await database.twinProfiles!.readForCharacter({
            tenantId: request.tenantId as never,
            characterId: request.characterId as never,
          });
          if (!profile) return;
          await database.twinEvents!.append({
            tenantId: request.tenantId as never,
            payload: {
              eventType: "twin.visited",
              ownerUserId: profile.ownerUserId,
              characterId: profile.characterId,
              customerUserId: request.userId,
              referenceId: request.characterSessionId,
              visibility: "owner",
              occurredAt: new Date().toISOString() as never,
              amountCredits: null,
              status: "observed",
            },
          });
        },
        async completed(request) {
          const profile = await database.twinProfiles!.readForCharacter({
            tenantId: request.tenantId as never,
            characterId: request.characterId as never,
          });
          if (!profile) return;
          await database.twinEvents!.append({
            tenantId: request.tenantId as never,
            payload: {
              eventType: "twin.conversation.observed",
              ownerUserId: profile.ownerUserId,
              characterId: profile.characterId,
              customerUserId: request.userId,
              referenceId: request.referenceId,
              visibility: "owner",
              occurredAt: new Date().toISOString() as never,
              amountCredits: null,
              status: "observed",
            },
          });
        },
      });
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
               env.MSNW_CONVERT_USD_MICRO_PER_MSNW?.trim() &&
               env.NOWPAYMENTS_FIXED_EGRESS_CONFIRMED === "true" &&
               env.NOWPAYMENTS_DESTINATION_WHITELIST_CONFIRMED === "true"
            ? MSNW_CRYPTO_AGENT_SYSTEM_INSTRUCTIONS
            : []),
          ...(env.FLUTTERWAVE_BILLS_ENABLED === "true" &&
               env.MSNW_BILLING_RATE_KOBO_PER_MSNW?.trim()
            ? MSNW_BILLING_AGENT_SYSTEM_INSTRUCTIONS
            : []),
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
          ...(twinProduction
            ? { paidVoiceAdmission: twinProduction.voiceAdmissionGate }
            : {}),
        });
      }
    }
  }

  const billingEnabled = env.FLUTTERWAVE_BILLS_ENABLED === "true";
  const flutterwaveSecretKey = env.FLUTTERWAVE_SECRET_KEY?.trim();
  const flutterwaveRelayUrl = env.FLUTTERWAVE_RELAY_URL?.trim();
  const flutterwaveRelayToken = env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN?.trim();
  const flutterwaveRelayProtocol = env.FLUTTERWAVE_RELAY_PROTOCOL === "dual-header"
    ? ("dual-header" as const)
    : ("bearer" as const);

  if (billingEnabled && Boolean(flutterwaveRelayUrl) !== Boolean(flutterwaveRelayToken)) {
    await database.close().catch(() => undefined);
    throw new TypeError("Flutterwave relay URL and relay token must be configured together");
  }

  const flutterwaveTransport = billingEnabled && flutterwaveSecretKey
    ? new FlutterwaveHttpTransport(
        flutterwaveRelayUrl && flutterwaveRelayToken
          ? { baseUrl: flutterwaveRelayUrl, relayToken: flutterwaveRelayToken, relayProtocol: flutterwaveRelayProtocol }
          : {},
      )
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
  let composedBillingAssistant: AgentBillingAssistant | undefined;

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

  // MSNW billing is enabled only after the owner configures an exact
  // positive NGN-kobo price per whole MSNW. No fabricated exchange rate,
  // NGN wallet/Credits conversion, or unbacked custody issuance.
  const msnwBillingRate = env.MSNW_BILLING_RATE_KOBO_PER_MSNW?.trim();
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

  // The model-driven legacy NGN Wallet payment tool is retired. The app's
  // customer-facing bill conversations use only MSNW custody, quoted price,
  // and an explicit customer message through the canonical settlement rail.
  const msnwBillingService = msnwBillingLedger && database.billingQuotes &&
      composedBillingFinancial && msnBalanceAuthorizer
    ? createMsnwBillingService({
        authorizer: msnBalanceAuthorizer,
        quotes: database.billingQuotes,
        funding: msnwBillingLedger,
        billing: composedBillingFinancial,
      })
    : undefined;
  if (billingEnabled && composedBillingCheckout && composedBillingFinancial &&
      msnwBillingService) {
    composedBillingAssistant = createMsnwAgentBillingAssistant({
      checkout: composedBillingCheckout,
      billing: composedBillingFinancial,
      msnw: msnwBillingService,
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

  let composedMsnwConversion = options.appOptions?.msnwConversion;
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
    const msnwRate = env.MSNW_CONVERT_USD_MICRO_PER_MSNW?.trim();
    if (!composedMsnwConversion && database.featurePool && msnBalanceAuthorizer &&
        payout && custody && msnwRate &&
        env.NOWPAYMENTS_FIXED_EGRESS_CONFIRMED === "true" &&
        env.NOWPAYMENTS_DESTINATION_WHITELIST_CONFIRMED === "true" &&
        payoutFeeMode === "sender" && withdrawalAllowlist.size > 0 &&
        env.NOWPAYMENTS_PAYOUT_VERIFICATION_CODE?.trim()) {
      composedMsnwConversion = {
        authorizer: msnBalanceAuthorizer,
        service: createMsnwUsdtConversion({
          pool: database.featurePool, payout, custody,
          rateUsdMicroPerMsnw: msnwRate,
          verificationCode: env.NOWPAYMENTS_PAYOUT_VERIFICATION_CODE.trim(),
          enabledRoutes: withdrawalProviderCodes,
          approvedDestination: (owner, route, address) =>
            withdrawalAllowlist.has(owner.userId + "|" + route + "|" + address),
        }),
      };
    }

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
            rooms: createPgAgentRoomDirectory(database.featurePool),
            identities: createPgAgentMasanaIdentityReader(database.featurePool),
          } : {}),
        })
      : undefined);

  const composedCommerceFulfillment =
    options.appOptions?.commerceFulfillment ??
    (commerceAuthorizer &&
    database.commerce &&
    database.ownerships &&
    database.characterSkillAssignments &&
    database.platformAgentProfiles &&
    database.skills
      ? createCommerceFulfillmentService({
          authorizer: commerceAuthorizer,
          commerce: database.commerce,
          ownerships: database.ownerships,
          assignments: database.characterSkillAssignments,
          platformProfiles: database.platformAgentProfiles,
          skills: database.skills,
        })
      : undefined);

  const composedCommerceCatalog =
    options.appOptions?.commerceCatalog ??
    (commerceAuthorizer &&
    database.commerce &&
    database.relationships &&
    database.ownerships &&
    database.skills
      ? createCommerceCatalogService({
          authorizer: commerceAuthorizer,
          commerce: database.commerce,
          relationships: database.relationships,
          ownerships: database.ownerships,
          skills: database.skills,
        })
      : undefined);

  const composedCreatorSkills =
    options.appOptions?.creatorSkills ??
    (creatorCloneAuthorizer &&
    database.personalClones &&
    database.characterSkillAssignments &&
    database.skills &&
    database.skillGuides &&
    database.skillDistribution
      ? createCreatorSkillService({
          authorizer: creatorCloneAuthorizer,
          personalClones: database.personalClones,
          assignments: database.characterSkillAssignments,
          skills: database.skills,
          guides: database.skillGuides,
          distribution: database.skillDistribution,
        })
      : undefined);

  const composedCreatorEconomy =
    options.appOptions?.creatorEconomy ??
    (creatorCloneAuthorizer &&
    database.personalClones &&
    database.commerce
      ? createCreatorEconomyService({
          authorizer: creatorCloneAuthorizer,
          personalClones: database.personalClones,
          commerce: database.commerce,
        })
      : undefined);

  const composedCreatorClone =
    options.appOptions?.creatorClone ??
    (creatorCloneAuthorizer &&
    database.personalClones &&
    database.agentPresentations &&
    database.characterSkillAssignments
      ? createCreatorCloneService({
          authorizer: creatorCloneAuthorizer,
          personalClones: database.personalClones,
          presentations: database.agentPresentations,
          skillAssignments: database.characterSkillAssignments,
        })
      : undefined);

  // Customer conversations are MSNW-only. Never mount the legacy crypto
  // funds assistant that directly deposits/withdraws unrelated provider
  // balances or converts currencies without MSNW custody authorization.
  const composedCryptoAssistant: AgentCryptoAssistant | undefined =
    composedMsnwConversion && database.cryptoChatActions
      ? createMsnwAgentCryptoAssistant({
          authorizer: composedMsnwConversion.authorizer,
          service: composedMsnwConversion.service,
          pending: database.cryptoChatActions,
        })
      : undefined;

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
          ...(nativeAudio ? { nativeAudio } : {}),
          voiceForCharacter: async (scope) => {
            const profile = await database.platformAgentProfiles?.readForCharacter(scope);
            return profile?.voiceProvider.toLowerCase() === "gemini" ? profile.voiceName : undefined;
          },
          ...(database.mobileShell ? { mobileShell: database.mobileShell } : {}),
          ...(twinConversationObserver ? { twinObserver: twinConversationObserver } : {}),
          ...(composedBillingAssistant ? { billingAssistant: composedBillingAssistant } : {}),
          ...(composedTeachingAssistant ? { teachingAssistant: composedTeachingAssistant } : {}),
          ...(composedCryptoAssistant ? { cryptoAssistant: composedCryptoAssistant } : {}),
          sessionDurationMs: 24 * 60 * 60 * 1000,
        })
      : undefined);

  let composedCustomerChannels: CustomerChannelOptions | undefined =
    options.appOptions?.customerChannels;
  let telegramWebhookRegistration:
    | Readonly<{ botToken: string; webhookSecret: string; webhookUrl: string }>
    | undefined;
  let linkedWhatsAppController: LinkedWhatsAppController | undefined;
  let linkedWhatsAppAdmin:
    | NonNullable<GatewayAppOptions["linkedWhatsApp"]>
    | undefined;
  const whatsappEnabled = env.MASANAWA_WHATSAPP_ENABLED === "true";
  const telegramEnabled = env.MASANAWA_TELEGRAM_ENABLED === "true";
  if (
    !composedCustomerChannels &&
    (whatsappEnabled || telegramEnabled)
  ) {
    if (
      !platformTenantId ||
      !database.platformSessions ||
      !database.customerChannels ||
      !database.platformAgentProfiles ||
      !composedConversation
    ) {
      throw new TypeError(
        "Customer channels require platform auth, channel storage, support agents, and Agent conversation runtime",
      );
    }

    const bridge = createCustomerChannelBridge({
      tenantId: platformTenantId,
      sessions: database.platformSessions,
      channels: database.customerChannels,
      platformProfiles: database.platformAgentProfiles,
      ...(database.userAgentPreferences
        ? { userPreferences: database.userAgentPreferences }
        : {}),
      conversation: composedConversation,
      // Use the same authenticated, tenant-scoped, published Masana directory
      // as the Flutter app. Retired user-created Twins are not channel targets.
      ...(composedDirectory ? { directory: composedDirectory } : {}),
    });

    if (whatsappEnabled) {
      const mode = env.MASANAWA_WHATSAPP_MODE?.trim() || "linked-device";
      if (mode !== "linked-device") {
        throw new TypeError(
          "MASANAWA_WHATSAPP_MODE must be linked-device; Meta Cloud transport is not the production WhatsApp mode",
        );
      }
      const authDir = env.MASANAWA_WHATSAPP_AUTH_DIR?.trim();
      const adminToken = env.MASANAWA_WHATSAPP_ADMIN_TOKEN?.trim();
      const adminPrincipals = readPrincipalSet(
        env.MASANAWA_ADMIN_PRINCIPALS ??
          env.MASANAWA_ADMIN_USER_IDS ??
          env.MASANAWA_ADMIN_EMAILS,
      );
      if (!authDir) {
        throw new TypeError(
          "WhatsApp linked-device mode requires MASANAWA_WHATSAPP_AUTH_DIR",
        );
      }
      if (!adminToken && adminPrincipals.size === 0) {
        throw new TypeError(
          "WhatsApp linked-device administration requires MASANAWA_WHATSAPP_ADMIN_TOKEN or configured platform admin principals",
        );
      }
      linkedWhatsAppController = createLinkedWhatsAppController({
        bridge,
        authDir,
      });
      linkedWhatsAppAdmin = Object.freeze({
        controller: linkedWhatsAppController,
        ...(adminToken ? { adminToken } : {}),
        ...(adminPrincipals.size > 0
          ? {
              async authorizeSession(authorizationHeader: string | undefined) {
                const supplied = /^Bearer\s+(.+)$/iu.exec(
                  authorizationHeader?.trim() ?? "",
                )?.[1]?.trim();
                if (!supplied) return false;
                let accessHash: string;
                try {
                  accessHash = hashPlatformSessionToken(supplied);
                } catch {
                  return false;
                }
                const identity = await database.platformSessions!.resolveAccess({
                  accessHash,
                  at: new Date().toISOString(),
                });
                if (!identity || identity.tenantId !== platformTenantId) {
                  return false;
                }
                const candidates = [
                  identity.userId,
                  identity.profile.email?.trim().toLowerCase() ?? "",
                  identity.profile.phone?.trim() ?? "",
                ].filter(Boolean);
                return candidates.some((candidate) =>
                  adminPrincipals.has(candidate),
                );
              },
            }
          : {}),
      });
    }

    let telegram: CustomerChannelOptions["telegram"];
    if (telegramEnabled) {
      const botToken = env.MASANAWA_TELEGRAM_BOT_TOKEN?.trim();
      const webhookSecret = env.MASANAWA_TELEGRAM_WEBHOOK_SECRET?.trim();
      const explicitWebhookUrl = env.MASANAWA_TELEGRAM_WEBHOOK_URL?.trim();
      const publicBaseUrl = env.MASANAWA_PUBLIC_BASE_URL?.trim();
      const webhookUrl =
        explicitWebhookUrl ||
        (publicBaseUrl
          ? new URL(
              "/channels/telegram/webhook",
              publicBaseUrl.endsWith("/") ? publicBaseUrl : `${publicBaseUrl}/`,
            ).toString()
          : "");
      if (!botToken || !webhookSecret || !webhookUrl) {
        throw new TypeError(
          "Telegram is enabled but bot token, webhook secret, or public webhook URL is missing",
        );
      }
      if (new URL(webhookUrl).protocol !== "https:") {
        throw new TypeError("Telegram webhook URL must use HTTPS");
      }
      telegram = Object.freeze({ botToken, webhookSecret });
      telegramWebhookRegistration = Object.freeze({
        botToken,
        webhookSecret,
        webhookUrl,
      });
    }

    composedCustomerChannels = Object.freeze({
      bridge,
      ...(telegram ? { telegram } : {}),
    });
  }

  const composedPush =
    options.appOptions?.mobilePush ??
    (conversationAuthorizer && database.mobilePush
      ? createMobilePushRegistrationService({
          authorizer: conversationAuthorizer,
          repository: database.mobilePush,
        })
      : undefined);

  const composedShellActionExecutor: AgentShellActionExecutor | undefined =
    composedBillingCheckout && composedBillingWallet
      ? Object.freeze({
          async execute(request: Parameters<AgentShellActionExecutor["execute"]>[0]) {
            if (request.action.actionId === "billing.wallet.confirm") {
              const verified = await composedBillingCheckout.verifyWalletConfirmAction({
                authorizationHeader: request.authorizationHeader,
                documentId: request.action.documentId,
                revision: request.action.revision,
                actionId: request.action.actionId,
                token: request.action.token,
              });
              const view = await composedBillingWallet.confirmAndPurchase({
                authorizationHeader: request.authorizationHeader,
                quoteId: verified.quoteId,
                quoteRevision: verified.quoteRevision,
              });
              return Object.freeze({
                accepted: true,
                phase:
                  view.phase === "fulfilled"
                    ? ("fulfilled" as const)
                    : view.phase === "failed"
                      ? ("failed" as const)
                      : view.phase === "awaiting-funds"
                        ? ("submitted" as const)
                        : ("processing" as const),
                document: view.document,
                message:
                  view.phase === "awaiting-funds"
                    ? "Temporary funding account created in chat. Masanawa will continue automatically after verified funding."
                    : view.phase === "fulfilled"
                      ? "Bill completed successfully."
                      : "Bill processing.",
              });
            }
            if (options.agentShellActionExecutor) {
              return options.agentShellActionExecutor.execute(request);
            }
            throw new Error("agents.shell_action_unavailable");
          },
        })
      : options.agentShellActionExecutor;

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

  const composedTalkActivity =
    options.appOptions?.talkActivity ??
    (database.talkActivity && talkActivityAuthorizer
      ? createTalkActivityService({
          repository: database.talkActivity,
          authorizer: talkActivityAuthorizer,
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

  const composedTalkSearch =
    options.appOptions?.talkSearch ??
    (database.talkSearch && talkSearchAuthorizer
      ? createTalkSearchService({
          repository: database.talkSearch,
          authorizer: talkSearchAuthorizer,
        })
      : undefined);

  const composedTalkLibrary =
    options.appOptions?.talkLibrary ??
    (database.talkLibrary && talkLibraryAuthorizer
      ? createTalkLibraryService({
          repository: database.talkLibrary,
          authorizer: talkLibraryAuthorizer,
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
          return database.talkSafetyReplay
            ? withReplayBlockSynchronization(base, database.talkSafetyReplay)
            : base;
        })()
      : undefined);

  const composedDirectTwin =
    options.appOptions?.directTwin ??
    (database.directTwin && talkSafetyCustomerAuthorizer
      ? createDirectTwinService({
          repository: database.directTwin,
          authorizer: talkSafetyCustomerAuthorizer,
        })
      : undefined);

  const composedTalkPolls =
    options.appOptions?.talkPolls ??
    (database.talkPolls && talkPollAuthorizer
      ? createTalkPollService({
          repository: database.talkPolls,
          authorizer: talkPollAuthorizer,
        })
      : undefined);

  const composedTalkGifts =
    options.appOptions?.talkGifts ??
    (database.talkGifts && talkGiftAuthorizer && twinProduction?.creditGift
      ? createTalkGiftService({
          repository: database.talkGifts,
          authorizer: talkGiftAuthorizer,
          executor: twinProduction.creditGift,
          ...(database.talkActivity
            ? {
                activity: {
                  async append(request) {
                    await database.talkActivity!.append({
                      tenantId: request.tenantId,
                      activityId: `talk-gift:${request.requestId}:recipient`,
                      userId: request.recipientUserId,
                      kind: "gift",
                      title: "Gift received",
                      detail: `From “${request.talkTitle}”.`,
                      createdAt: request.completedAt,
                      talkId: request.talkId,
                      transactionId: request.giftId,
                      amountLabel: `${request.amountCredits} Cr`,
                      requiresAction: false,
                      unread: true,
                    });
                  },
                },
              }
            : {}),
        })
      : undefined);

  const liveKitServerUrl = env.LIVEKIT_URL?.trim();
  const liveKitApiKey = env.LIVEKIT_API_KEY?.trim();
  const liveKitApiSecret = env.LIVEKIT_API_SECRET?.trim();
  const talkMediaTokens =
    liveKitServerUrl && liveKitApiKey && liveKitApiSecret
      ? createLiveKitTalkMediaTokenIssuer({
          serverUrl: liveKitServerUrl,
          apiKey: liveKitApiKey,
          apiSecret: liveKitApiSecret,
        })
      : undefined;
  const talkMediaAdmin =
    liveKitServerUrl && liveKitApiKey && liveKitApiSecret
      ? createLiveKitTalkMediaAdmin({
          serverUrl: liveKitServerUrl,
          apiKey: liveKitApiKey,
          apiSecret: liveKitApiSecret,
        })
      : undefined;
  const talkAiRuntimeDispatcher =
    liveKitServerUrl && liveKitApiKey && liveKitApiSecret
      ? createLiveKitTalkAiRuntimeDispatcher({
          serverUrl: liveKitServerUrl,
          apiKey: liveKitApiKey,
          apiSecret: liveKitApiSecret,
          agentName: env.MASANAWA_TALK_AI_AGENT_NAME ?? "masanawa-talk-ai",
        })
      : undefined;

  const replayS3Endpoint = env.MASANAWA_TALK_REPLAY_S3_ENDPOINT?.trim();
  const replayS3Region = env.MASANAWA_TALK_REPLAY_S3_REGION?.trim();
  const replayS3Bucket = env.MASANAWA_TALK_REPLAY_S3_BUCKET?.trim();
  const replayS3AccessKey = env.MASANAWA_TALK_REPLAY_S3_ACCESS_KEY?.trim();
  const replayS3Secret = env.MASANAWA_TALK_REPLAY_S3_SECRET?.trim();
  const replayS3Values = [
    replayS3Endpoint,
    replayS3Region,
    replayS3Bucket,
    replayS3AccessKey,
    replayS3Secret,
  ];
  const replayS3Any = replayS3Values.some((value) => Boolean(value));
  const replayS3All = replayS3Values.every((value) => Boolean(value));
  if (replayS3Any && !replayS3All) {
    throw new TypeError("Talk replay S3 configuration must be complete");
  }

  const replayObjectStore =
    replayS3All
      ? createReplayObjectStore({
          endpoint: replayS3Endpoint!,
          region: replayS3Region!,
          bucket: replayS3Bucket!,
          accessKey: replayS3AccessKey!,
          secret: replayS3Secret!,
        })
      : undefined;

  const replayEgress =
    replayS3All && liveKitServerUrl && liveKitApiKey && liveKitApiSecret
      ? createLiveKitReplayEgress({
          serverUrl: liveKitServerUrl,
          apiKey: liveKitApiKey,
          apiSecret: liveKitApiSecret,
          s3: {
            endpoint: replayS3Endpoint!,
            region: replayS3Region!,
            bucket: replayS3Bucket!,
            accessKey: replayS3AccessKey!,
            secret: replayS3Secret!,
          },
        })
      : undefined;

  const talkReplayCoordinator =
    database.talkReplay &&
    database.talkReplayMedia &&
    replayObjectStore &&
    replayEgress
      ? createTalkReplayCoordinator({
          replay: database.talkReplay,
          media: database.talkReplayMedia,
          egress: replayEgress,
          objects: replayObjectStore,
          playbackTtlSeconds: boundedEnvInteger(
            env.MASANAWA_TALK_REPLAY_PLAYBACK_TTL_SECONDS,
            300,
            30,
            900,
            "MASANAWA_TALK_REPLAY_PLAYBACK_TTL_SECONDS",
          ),
        })
      : undefined;

  const composedTalkLive =
    options.appOptions?.talkLive ??
    (database.talkLive && talkLiveAuthorizer
      ? createTalkLiveService({
          repository: database.talkLive,
          authorizer: talkLiveAuthorizer,
          ...(talkMediaTokens ? { mediaTokens: talkMediaTokens } : {}),
          ...(database.talkReplay
            ? {
                onTalkEnded: async ({tenantId,talkId,reason,now}) => {
                  if(talkReplayCoordinator){
                    await talkReplayCoordinator.finalize({tenantId,talkId,reason,now});
                  }else{
                    await database.talkReplay!.finalizeFromLive({tenantId,talkId,reason,now});
                  }
                },
              }
            : {}),
        })
      : undefined);

  const talkAiSeatHostShareBps = boundedEnvInteger(
    env.MASANAWA_TALK_AI_SEAT_HOST_SHARE_BPS,
    2000,
    0,
    10_000,
    "MASANAWA_TALK_AI_SEAT_HOST_SHARE_BPS",
  );
  const talkTwinOwnerShareBps = boundedEnvInteger(
    env.MASANAWA_TALK_TWIN_OWNER_SHARE_BPS,
    5000,
    0,
    10_000,
    "MASANAWA_TALK_TWIN_OWNER_SHARE_BPS",
  );
  if (talkAiSeatHostShareBps + talkTwinOwnerShareBps > 10_000) {
    throw new TypeError("Talk AI Seat Host and Twin owner shares cannot exceed 100%");
  }

  const composedTalkAiSeats =
    options.appOptions?.talkAiSeats ??
    (database.talkAiSeats && talkAiSeatAuthorizer
      ? createTalkAiSeatService({
          repository: database.talkAiSeats,
          authorizer: talkAiSeatAuthorizer,
          ...(talkAiRuntimeDispatcher
            ? { runtimeDispatcher: talkAiRuntimeDispatcher }
            : {}),
          pricing: {
            expertPriceCredits: boundedEnvInteger(
              env.MASANAWA_TALK_EXPERT_SEAT_PRICE_CREDITS,
              100,
              1,
              1_000_000_000,
              "MASANAWA_TALK_EXPERT_SEAT_PRICE_CREDITS",
            ),
            twinPriceCredits: boundedEnvInteger(
              env.MASANAWA_TALK_TWIN_SEAT_PRICE_CREDITS,
              120,
              1,
              1_000_000_000,
              "MASANAWA_TALK_TWIN_SEAT_PRICE_CREDITS",
            ),
            hostShareBasisPoints: talkAiSeatHostShareBps,
            twinOwnerShareBasisPoints: talkTwinOwnerShareBps,
            quoteTtlSeconds: boundedEnvInteger(
              env.MASANAWA_TALK_AI_SEAT_QUOTE_TTL_SECONDS,
              120,
              15,
              3600,
              "MASANAWA_TALK_AI_SEAT_QUOTE_TTL_SECONDS",
            ),
          },
        })
      : undefined);

  const composedTalkModeration =
    options.appOptions?.talkModeration ??
    (database.talkModeration && talkModerationAuthorizer
      ? createTalkModerationService({
          repository: database.talkModeration,
          authorizer: talkModerationAuthorizer,
          ...(talkMediaAdmin ? { mediaAdmin: talkMediaAdmin } : {}),
          ...(composedTalkAiSeats ? { aiSeats: composedTalkAiSeats } : {}),
          ...(database.talkActivity
            ? {
                invitationActivity: {
                  async append(request) {
                    await database.talkActivity!.append({
                      tenantId: request.tenantId,
                      activityId: request.activityId,
                      userId: request.userId,
                      kind: "talk_invitation",
                      title: request.title,
                      detail: request.detail,
                      createdAt: request.createdAt,
                      talkId: request.talkId,
                      requiresAction: request.requiresAction,
                      ...(request.actionLabel
                        ? { actionLabel: request.actionLabel }
                        : {}),
                      unread: request.unread,
                    });
                  },
                },
              }
            : {}),
          ...(database.talkReplay
            ? {
                onTalkEnded: async ({tenantId,talkId,reason,now}) => {
                  if(talkReplayCoordinator){
                    await talkReplayCoordinator.finalize({tenantId,talkId,reason,now});
                  }else{
                    await database.talkReplay!.finalizeFromLive({tenantId,talkId,reason,now});
                  }
                },
              }
            : {}),
        })
      : undefined);

  const composedTalkReplay =
    options.appOptions?.talkReplay ??
    (database.talkReplay && talkReplayAuthorizer
      ? createTalkReplayService({
          repository: database.talkReplay,
          authorizer: talkReplayAuthorizer,
          ...(talkReplayCoordinator ? { coordinator: talkReplayCoordinator } : {}),
        })
      : undefined);

  const composedTalks =
    options.appOptions?.talks ??
    (database.talks && talkAuthorizer
      ? createTalkService({
          repository: database.talks,
          authorizer: talkAuthorizer,
        })
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
    status = {
      sessions,
      feed: new FeedService(feed,author,mediaRuntime.approved),
      editorial: new EditorialReviewService(editorial,author,mediaRuntime.approved),
      isEditor: async session => editors.has(session.userId),
      // Publication and media access require explicit runtime qualification;
      // a mounted route must not implicitly activate editorial operations.
      enabled: () => true,
      media: mediaRuntime.media,
    };
  }
  } catch (error) {
    // Fail closed without stranding the pool when trusted S3 origins or media
    // composition are invalid. No Gateway listener has been created yet.
    await database.close().catch(() => undefined);
    throw error;
  }
  const videos: GatewayAppOptions["videos"] = options.appOptions?.videos ??
    (sessions && database.videos ? {
      store:database.videos,
      resolvePrincipal: async request => {
        let session: Awaited<ReturnType<typeof sessions.authorize>>;
        try {
          session = await sessions.authorize({
            authorizationHeader:request.headers.authorization,
          });
        } catch {
          throw new VideoAdmissionError(401,"authentication_required","Sign in to view videos");
        }
        if (!session?.tenantId || !session.userId) {
          throw new VideoAdmissionError(401,"authentication_required","Sign in to view videos");
        }
        return {
          tenantId:session.tenantId,
          actorId:session.userId,
          staffRoles:editors.has(session.userId) ? ["content_editor"] : [],
        };
      },
    } : undefined);


  // Sources are persisted with the existing external_videos tables and audited
  // in events.audit_events. The same server-owned editorial resolver authorizes
  // both manual video review and channel management.
  const videoSources: GatewayAppOptions["videoSources"] =
    options.appOptions?.videoSources ??
    (database.featurePool && videos ? {
      store: createPostgresYouTubeSourceAdminStore(
        database.featurePool,
        async (client, entry) => {
          await client.query(`
            INSERT INTO events.audit_events
              (audit_event_id,tenant_id,event_type,schema_version,
               aggregate_type,aggregate_id,occurred_at,actor,authority_ref,
               correlation_id,sensitivity,payload)
            VALUES ($1,$2,$3,1,'external_video_source',$4,
                    clock_timestamp(),$5::jsonb,NULL,$6,'internal',$7::jsonb)
          `, [
            createCanonicalId("audit-event"),
            entry.tenantId,
            "external_videos.source." + entry.action,
            entry.sourceId,
            JSON.stringify({kind:"staff",id:entry.actorId}),
            createCanonicalId("correlation"),
            JSON.stringify({action:entry.action}),
          ]);
        },
      ),
      resolvePrincipal: videos.resolvePrincipal,
    } : undefined);

  // One canonical signed-in fan and tenant authority, shared with Status and
  // Videos. Feature flags default OFF; no Room paid/subscription activation.
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
  const roomsEnabled = () => true;
  // Separate rollout from free Rooms discovery and AI answers: the six-step
  // Rooms schema must be applied and customer/moderator journeys qualified
  // before inviting users. OFF by default even when Rooms itself is live.
  const roomsMembershipEnabled = () =>
    process.env.MASANAWA_ROOMS_MEMBERSHIP_ENABLED === "true";
  const roomsStaffEnabled = () => true; // Server-listed editors only; not client-supplied roles.
  const rooms: GatewayAppOptions["rooms"] = options.appOptions?.rooms ??
    (featurePool && sessions && featureTenant ? (() => {
      const authorizeRoom = async (
        header: string | undefined,
        capability: "rooms.read" | "rooms.join" | "rooms.ask" | "rooms.staff",
      ) => {
        try {
          const session = await resolveFeatureFan(header);
          // The canonical session already passed the exact platform-tenant
          // fence. Room staff may use the existing server-approved editorial
          // identity list only when the separate Room staff gate is enabled.
          return {
            tenantId: session.tenantId,
            userId: session.userId,
            roles: roomRolesForSession(
              capability, session.userId, editors, roomsStaffEnabled(),
            ),
          };
        } catch (error) {
          if (error instanceof CustomerAuthError)
            throw new RoomError(error.statusCode, error.code);
          throw new RoomError(503, "rooms_auth_unavailable");
        }
      };
      const eligibility = database.status?.eligibility ??
        new PgStatusEligibility(featurePool);
      return {
        routes: {
          repository: createPgRoomsRepository(featurePool),
          authorize: authorizeRoom,
          isApprovedMasana: (tenant: string, character: string) =>
            eligibility.author(tenant, character),
          enabled: roomsEnabled,
        },
        discussion: {
          store: createPgRoomDiscussionRepository(featurePool),
          authorize: authorizeRoom, enabled: roomsEnabled,
        },
        bookmarks: {
          store: createPgRoomBookmarkStore(featurePool),
          authorize: authorizeRoom, enabled: roomsEnabled,
        },
        membership: {
          repository: createPgRoomMembershipRepository(featurePool),
          authorize: authorizeRoom,
          // Explicit deployment gate; authorization is still checked per call.
          enabled: roomsMembershipEnabled,
        },
      };
    })() : undefined);
  // Creator agent routes use the same tenant-scoped session and PostgreSQL pool.
  // Publishing is limited to a lifetime first-free character until an atomic,
  // authorized MSNW fee-capture adapter is composed for additional characters.
  const creatorKey = env.MASANAWA_GEMINI_API_KEY?.trim() ||
    env.MASANAWA_ALPHA_GEMINI_API_KEY?.trim();
  const creatorAgents: GatewayAppOptions["creatorAgents"] =
    options.appOptions?.creatorAgents ??
    (featurePool && sessions && featureTenant ? {
      auth: { fan: resolveFeatureFan },
      service: createPostgresCreatorAgentService({
        pool: featurePool as unknown as CreatorPool,
        generator: creatorKey
          ? createGeminiCreatorGenerator({
              apiKey: creatorKey,
              model: env.MASANAWA_CREATOR_GENERATION_MODEL?.trim() ||
                env.MASANAWA_GEMINI_MODEL?.trim() || "gemini-2.5-flash",
            })
          : { async generate(): Promise<never> {
              throw new CreatorGenerationError("creator.gemini_unconfigured");
            } },
      }),
    } : undefined);
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
    incomingCalls = options.appOptions?.incomingCalls ??
      (directoryAuthorizer && database.incomingCalls && liveVoiceTokens
        ? createIncomingCallService({
            repository: database.incomingCalls,
            authorizer: directoryAuthorizer,
           ...(database.featurePool ? { rooms:createPgAgentRoomDirectory(database.featurePool) } : {}),
            serverAuthorizer: createIncomingServerAuthorizer(env.MASANAWA_INCOMING_CALLS_SERVER_TOKEN),
            liveVoiceTokens,
            ...(pushSender ? { pushSender } : {}),
          })
        : undefined);
    const msnwPaystackEnrollment = env.PAYSTACK_SECRET_KEY?.trim() &&
      database.featurePool && billingCustomerAuthorizer
      ? createMsnwPaystackEnrollmentService({
          pool: database.featurePool,
          sessions: billingCustomerAuthorizer,
          paystackSecretKey: env.PAYSTACK_SECRET_KEY,
        })
      : undefined;
    app = appFactory({
      ...(status ? {status} : {}),
      ...(videos ? {videos} : {}),
      ...(videoSources ? {videoSources} : {}),
      ...(rooms ? {rooms} : {}),
      ...(masana ? {masana} : {}),
      ...(creatorAgents ? {creatorAgents} : {}),
      ...(masanaInbox ? {masanaInbox} : {}),
      ...(options.appOptions ?? {}),
      ...(composedPrivateChatMedia ? { privateChatMedia: composedPrivateChatMedia } : {}),
      ...(customerAuth ? { customerAuth } : {}),
      ...(database.featurePool && sessions
        ? { accountDataExports: createAccountDataExports(database.featurePool,sessions) }
        : {}),
      ...(accountDeletion ? { accountDeletion } : {}),
      ...(composedTalks ? { talks: composedTalks } : {}),
      ...(composedTalkReplay ? { talkReplay: composedTalkReplay } : {}),
      ...(composedTalkModeration ? { talkModeration: composedTalkModeration } : {}),
      ...(composedTalkAiSeats ? { talkAiSeats: composedTalkAiSeats } : {}),
      ...(composedTalkLive ? { talkLive: composedTalkLive } : {}),
      ...(composedTalkProfiles ? { talkProfiles: composedTalkProfiles } : {}),
      ...(composedTalkActivity ? { talkActivity: composedTalkActivity } : {}),
      ...(composedTalkSearch ? { talkSearch: composedTalkSearch } : {}),
      ...(composedTalkLibrary ? { talkLibrary: composedTalkLibrary } : {}),
      ...(composedTalkGifts ? { talkGifts: composedTalkGifts } : {}),
      ...(composedTalkPolls ? { talkPolls: composedTalkPolls } : {}),
      ...(composedTalkSafety ? { talkSafety: composedTalkSafety } : {}),
      ...(composedDirectTwin ? { directTwin: composedDirectTwin } : {}),
      ...(composedBillingFinancial ? { billingFinancial: composedBillingFinancial } : {}),
      ...(composedBillingCheckout ? { billingCheckout: composedBillingCheckout } : {}),
      ...(msnwBillingService ? { msnwBilling: msnwBillingService } : {}),
      ...(composedBillingWallet ? { billingWallet: composedBillingWallet } : {}),
      ...(composedFinancial ? { financial: composedFinancial } : {}),
      ...(composedMsnwConversion ? {msnwConversion:composedMsnwConversion} : {}),
      ...(composedCustomerChannels
        ? { customerChannels: composedCustomerChannels }
        : {}),
      ...(linkedWhatsAppAdmin
        ? { linkedWhatsApp: linkedWhatsAppAdmin }
        : {}),
      // MSN is separate from legacy Credits and customer-facing NGN.
      // Read-only, requiring explicit operator flag and platform session.
      // No payment, issuance, conversion or transfer route is registered.
      ...(env.MASANAWA_MSN_BALANCE_ENABLED === "true" &&
          database.featurePool && msnBalanceAuthorizer
        ? { msnBalance: {
            authorizer: msnBalanceAuthorizer,
            ledger: createMsnLedgerStore(database.featurePool),
          } }
        : {}),
      // Never register a customer write route or expose a made-up conversion.
      // Requires a separately installed, approved staged quote journal.
      ...(env.MASANAWA_MSN_FUNDING_READBACK_ENABLED === "true" &&
          database.featurePool && msnBalanceAuthorizer
        ? { msnFunding: {
            authorizer: msnBalanceAuthorizer,
            reader: createMsnFundingJournal(database.featurePool),
          } }
        : {}),
      // Only the explicit, verified MSNW contract and finalized chain state
      // can back a customer-facing MSNW balance. Real chain configuration is
      // the rollout authority; no unrelated boolean deployment gate.
      ...(env.MSNW_CHAIN_ID?.trim() &&
          env.MSNW_TOKEN_CONTRACT?.trim() &&
          env.MSNW_RPC_URL?.trim() &&
          database.featurePool && msnBalanceAuthorizer
        ? { msnwOnchainBalance: createMsnwOnchainBalanceReader({
            pool: database.featurePool,
            authorizer: msnBalanceAuthorizer,
            chainId: env.MSNW_CHAIN_ID,
            contract: env.MSNW_TOKEN_CONTRACT,
            rpcUrl: env.MSNW_RPC_URL,
          }) }
        : {}),
      // Custodied MSNW transfers are enabled by the installed, zero-initial
      // custody ledger; no legacy NGN/Cr/MSN source is accepted. A missing
      // provider-backed issuance leaves every new account at zero available.
      ...(database.featurePool && msnBalanceAuthorizer
        ? { msnwCustody: {
            authorizer: msnBalanceAuthorizer,
            ledger: createMsnwCustodyService(database.featurePool),
          } }
        : {}),
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
      // Paystack customer creation and identity verification precede account assignment.
      // This never issues MSNW; it only establishes provider-verified KYC.
      ...(msnwPaystackEnrollment ? { msnwPaystackEnrollment } : {}),
      // A DVA is only a bank payment destination, never token issuance.
      // Presence of credentials is enough to mount the route; the endpoint
      // verifies actual staged schema/identity. Absence fails as unavailable.
      ...(env.PAYSTACK_SECRET_KEY?.trim() &&
          database.featurePool && msnBalanceAuthorizer
        ? { msnwPaystackDva: createMsnwPaystackDvaService({
            pool: database.featurePool,
            authorizer: msnBalanceAuthorizer,
            paystackSecretKey: env.PAYSTACK_SECRET_KEY,
          }) }
        : {}),
      // P2P is composed independently of legacy Credits/MSN. The API can
      // discover offers and manage escrow journals; order creation is FAILED
      // CLOSED until finance supplies a genuine atomic MSNW reserve/release/
      // refund adapter. Never turn an on-chain balance read into a debit.
      ...(database.featurePool && msnBalanceAuthorizer
        ? { p2p: options.appOptions?.p2p ?? (() => {
            // Reuse WS1's custody accounts and immutable MSNW backing proof.
            // Escrow can only reserve genuinely available customer balances.
            const escrow=createMsnwP2pCustodyEscrow();
            const service = createP2pService(database.featurePool!, escrow);
            const evidenceStorage=configuredP2pEvidenceStorage(env,service);
            return {
              service,
              ...(evidenceStorage ? { evidenceStorage } : {}),
              ...(env.PAYSTACK_SECRET_KEY?.trim()
                ? { bankMethods: createVerifiedP2pBankMethods({
                    pool: database.featurePool!,
                    service,
                    paystackSecretKey:env.PAYSTACK_SECRET_KEY,
                  }) } : {}),
              authorize: async (header: string | undefined) => {
                const owner = await msnBalanceAuthorizer!.authorize({authorizationHeader:header});
                return {tenantId:owner.tenantId,userId:owner.userId};
              },
              ...(customerAuth ? {
                authorizeBankStepUp: async(request: {
                  authorizationHeader:string|undefined;bankCode:string;accountNumber:string;
                  stepUpToken:string|undefined;
                }) => customerAuth.consumeBankStepUp(request),
              } : {}),
              // Reuse the same operator-principal allowlist already bound
              // to the Gateway; no customer-supplied staff role is trusted.
              ...(talkSafetyPlatformAuthority ? {
                authorizeOperator: async (header: string | undefined) => {
                  const admin = await talkSafetyPlatformAuthority!.authorize({authorizationHeader:header});
                  return {tenantId:admin.tenantId,userId:admin.actorId};
                },
              } : {}),
            };
          })() }
        : {}),
      // Only the production operator may enable this legacy credit-ledger
      // transfer. This never activates MSN minting, funding or crypto payouts.
      walletCreditSendEnabled: env.MASANAWA_WALLET_CREDIT_SEND_ENABLED === "true" && !!twinProduction,
      ...(twinProduction ? { twinProduction } : {}),
      ...(composedDirectory ? { agentDirectory: composedDirectory } : {}),
      ...(incomingCalls ? { incomingCalls } : {}),
      ...(!options.appOptions?.callHistory && directoryAuthorizer && database.callHistory
        ? { callHistory: createCallHistoryService({ authorizer: directoryAuthorizer, repository: database.callHistory }) }
        : {}),
      ...(!options.appOptions?.groupCalls && directoryAuthorizer &&
          database.groupCalls && liveVoiceTokens && database.callHistory
        ? { groupCalls: createGroupCallService({
            repository: database.groupCalls,
            authorizer: directoryAuthorizer,
            liveVoiceTokens,
            paidAdmissionConfigured: !!twinProduction,
            ...(database.twinEconomy ? {
              validateAdmission: async (request: {
                tenantId: string; userId: string; characterId: string; admissionId: string | null;
              }) => {
                const admission = request.admissionId
                  ? await database.twinEconomy!.readVoiceAdmission({
                      tenantId: request.tenantId as TenantId,
                      admissionId: request.admissionId,
                    })
                  : null;
                if (!admission || admission.userId !== request.userId ||
                    admission.characterId !== request.characterId || admission.settledAt !== null ||
                    !Number.isFinite(Date.parse(admission.expiresAt)) ||
                    Date.parse(admission.expiresAt) <= Date.now()) {
                  throw new GroupCallError("calls.paid_admission_invalid", 403);
                }
              },
            } : {}),
          }) }
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
      ...(composedCreatorClone ? { creatorClone: composedCreatorClone } : {}),
      ...(composedCreatorEconomy
        ? { creatorEconomy: composedCreatorEconomy }
        : {}),
      ...(composedCreatorSkills ? { creatorSkills: composedCreatorSkills } : {}),
      ...(composedCommerceCatalog
        ? { commerceCatalog: composedCommerceCatalog }
        : {}),
      ...(composedCommerceFulfillment
        ? { commerceFulfillment: composedCommerceFulfillment }
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

  if (linkedWhatsAppController) {
    try {
      await linkedWhatsAppController.start();
    } catch (error) {
      await database.close().catch(() => undefined);
      throw error;
    }
  }

  const lifecycle = await startNodeService({
    serviceName: "gateway",
    server: app,
    config,
    signals: processRef,
    ...(options.logger ? { logger: options.logger } : {}),
    onDraining: () => {
      drain.beginDraining();
      if (incomingRecoveryTimer) clearInterval(incomingRecoveryTimer);
      if (channelRecoveryTimer) clearInterval(channelRecoveryTimer);
      if (linkedWhatsAppController) {
        void linkedWhatsAppController.stop().catch(() => undefined);
      }
      if (ownerAccessSweepTimer) {
        clearInterval(ownerAccessSweepTimer);
        ownerAccessSweepTimer = undefined;
      }
      if (talkPushDedupePurgeTimer) {
        clearInterval(talkPushDedupePurgeTimer);
        talkPushDedupePurgeTimer = undefined;
      }
    },
    onAfterClose: async () => {
      if (incomingRecoveryTimer) clearInterval(incomingRecoveryTimer);
      await incomingRecovery;
      if (channelRecoveryTimer) clearInterval(channelRecoveryTimer);
      await channelRecovery;
      if (linkedWhatsAppController) {
        await linkedWhatsAppController.stop().catch(() => undefined);
      }
      if (ownerAccessSweepTimer) {
        clearInterval(ownerAccessSweepTimer);
        ownerAccessSweepTimer = undefined;
      }
      if (talkPushDedupePurgeTimer) {
        clearInterval(talkPushDedupePurgeTimer);
        talkPushDedupePurgeTimer = undefined;
      }
      await database.close();
    },
    onFatalShutdown: () => {
      processRef.exitCode = 1;
    },
  });

  if (telegramWebhookRegistration) {
    try {
      await registerAndVerifyTelegramWebhook(telegramWebhookRegistration);
    } catch (error) {
      await lifecycle.stop("manual").catch(() => undefined);
      throw error;
    }
  }

  const runIncomingRecovery = () => {
    if (!incomingCalls || incomingRecovery || drain.isDraining()) return;
    incomingRecovery = incomingCalls.recover().catch(() => {
      // Durable invitations/outbox are retried by the next sweep or process.
    }).finally(() => { incomingRecovery = undefined; });
  };
  const runChannelRecovery = () => {
    const channels=composedCustomerChannels;
    if(channelRecovery || drain.isDraining() || !channels?.bridge.delivery) return;
    const work:Promise<void>[]=[];
    if(channels.telegram) {
      const config=channels.telegram;
      work.push(channels.bridge.delivery.recover("telegram",async(saved)=>{
        await sendTelegram(config,saved.chatId,saved.reply,saved.requestContact);
      },()=>!drain.isDraining()));
    }
    if(linkedWhatsAppController?.snapshot().connected && linkedWhatsAppController.sendReply) {
      const controller=linkedWhatsAppController;
      work.push(channels.bridge.delivery.recover("whatsapp",async(saved)=>{
        await controller.sendReply!(saved.chatId,saved.reply);
      },()=>!drain.isDraining()));
    }
    channelRecovery=Promise.allSettled(work).then(()=>undefined).finally(()=>{channelRecovery=undefined;});
  };
  if(composedCustomerChannels?.bridge.delivery) {
    channelRecoveryTimer=setInterval(runChannelRecovery,5000);
    channelRecoveryTimer.unref();
    runChannelRecovery();
  }
  if (incomingCalls) {
    incomingRecoveryTimer = setInterval(runIncomingRecovery, 1000);
    incomingRecoveryTimer.unref();
    runIncomingRecovery();
  }

  const runTalkPushDedupePurge = async () => {
    if (
      talkPushDedupePurgeRunning ||
      drain.isDraining() ||
      !database.talkPushDedupe
    ) {
      return;
    }
    talkPushDedupePurgeRunning = true;
    try {
      await database.talkPushDedupe.purgeExpired({
        before: new Date().toISOString(),
        limit: 1000,
      });
    } catch {
      // Push remains best effort. Retention cleanup must never crash Gateway.
    } finally {
      talkPushDedupePurgeRunning = false;
    }
  };

  if (database.talkPushDedupe) {
    talkPushDedupePurgeTimer = setInterval(() => {
      void runTalkPushDedupePurge();
    }, 6 * 60 * 60 * 1000);
    talkPushDedupePurgeTimer.unref();
    void runTalkPushDedupePurge();
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
    ...(talkPushDelivery ? { talkPushDelivery } : {}),
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

