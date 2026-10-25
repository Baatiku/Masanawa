import {createConfiguredStatusObjectStore} from "@masanawa/providers";
import {createCreatorMediaCleanup} from "./jobs/creator/media_deletions.js";
import { pathToFileURL } from "node:url";
import { readRequiredEnv } from "@masanawa/contracts";
import {
  createDrainState,
  readNodeServiceRuntimeConfig,
  startNodeService,
  type ManagedNodeServer,
  type NodeServiceRuntimeConfig,
  type NodeSignalSource,
  type ServiceLifecycleLogger,
} from "@masanawa/node-runtime";
import { createPostgresServiceDependency, createPostgresMobilePushRepository, createPostgresAccountDeletionAccessRevoker, platformProductMigrationRoots, type Pool } from "@masanawa/postgres";
import {createFcmPushSender} from "@masanawa/mobile-push";
import { createFinancialNotificationRuntime } from "./jobs/notifications/outbox.js";
import { createP2pExpiryRuntime } from "./jobs/msnw/p2p_expiry.js";
import { createP2pCustodyReconciliation } from "./jobs/msnw/p2p_reconciliation.js";
import { createJobScheduler } from "./jobs/scheduler.js";
import { createScheduledFeedRuntime } from "./jobs/home_feed/postgres_runtime.js";
import { createMsnwFundingObligationRecovery } from "./jobs/msnw/funding_obligations.js";
import { createMsnwFinalityVerifier } from "./jobs/msnw/chain_finality.js";
import { createMsnwCustodyIssuanceRuntime } from "./jobs/msnw/custody_issuance.js";
import { createMsnwReserveAudit } from "./jobs/msnw/reserve_audit.js";
import { createMsnwMerchantSettlementRuntime } from "./jobs/msnw/paystack_merchant_settlement.js";
import { createAccountDeletionFinancialClearance, createAccountDeletionPrivacyWorker } from "./jobs/privacy/account_deletion.js";
import { createDurableJobHealth } from "./jobs/durable_health.js";
import { createStaleConversationTurnRecovery } from "./jobs/conversations/stale_turns.js";
import {
  createWorkerApp,
  type WorkerAppOptions,
  type ReadinessCheck,
} from "./app.js";

export type ServiceSignal = "SIGINT" | "SIGTERM";

export interface ServiceProcess extends NodeSignalSource {
  exitCode: number | undefined;
  exit(code: number): never;
}

export interface ServiceDatabaseDependency {
  readonly readinessCheck: ReadinessCheck;
  readonly pool?: Pool;
  close(): Promise<void>;
}

export type ServiceDatabaseFactory = (
  env: Readonly<Record<string, string | undefined>>,
) => ServiceDatabaseDependency;

export type WorkerServiceConfig = NodeServiceRuntimeConfig;

export interface StartWorkerServiceOptions {
  readonly env?: Readonly<Record<string, string | undefined>>;
  readonly processRef?: ServiceProcess;
  readonly logger?: ServiceLifecycleLogger;
  readonly databaseFactory?: ServiceDatabaseFactory;
  readonly appFactory?: (options: WorkerAppOptions) => ManagedNodeServer;
  readonly appOptions?: Omit<WorkerAppOptions, "isDraining">;
}

export interface WorkerServiceRuntime {
  readonly config: WorkerServiceConfig;
  readonly address: string;
  readonly app: ManagedNodeServer;
  isDraining(): boolean;
  drain(): void;
  shutdown(reason?: ServiceSignal | "manual"): Promise<void>;
  disposeSignals(): void;
}

export function parseWorkerServiceConfig(
  env: Readonly<Record<string, string | undefined>> = process.env,
): WorkerServiceConfig {
  return readNodeServiceRuntimeConfig(
    {
      ...env,
      HOST: env.MASANAWA_WORKER_HOST ?? env.HOST,
      PORT: env.MASANAWA_WORKER_PORT ?? env.PORT,
    },
    {
      port: 3001,
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

  return createPostgresServiceDependency({
    connectionString,
    applicationName: "masanawa-worker",
    migrationRoots:platformProductMigrationRoots(),
  });
}

export async function startWorkerService(
  options: StartWorkerServiceOptions = {},
): Promise<WorkerServiceRuntime> {
  const env = options.env ?? process.env;
  const config = parseWorkerServiceConfig(env);
  const processRef = options.processRef ?? (process as ServiceProcess);
  const drain = createDrainState();
  const databaseFactory =
    options.databaseFactory ?? createDefaultDatabaseDependency;
  const database = databaseFactory(env);
  const appFactory = options.appFactory ?? createWorkerApp;
  let creatorMediaCleanup: ReturnType<typeof createJobScheduler> | undefined;
  let feedPublisher: ReturnType<typeof createJobScheduler> | undefined;
  let financialNotices: ReturnType<typeof createJobScheduler> | undefined;
  let p2pExpiry: ReturnType<typeof createJobScheduler> | undefined;
  let p2pAudit: ReturnType<typeof createJobScheduler> | undefined;
  let msnwObligationRecovery: ReturnType<typeof createJobScheduler> | undefined;
  let msnwFinality: ReturnType<typeof createJobScheduler> | undefined;
  let msnwMerchantSettlements: ReturnType<typeof createJobScheduler> | undefined;
  let privacyDeletion: ReturnType<typeof createJobScheduler> | undefined;
  let conversationRecovery: ReturnType<typeof createJobScheduler> | undefined;

  let app: ManagedNodeServer;
  try {
    if (!database.pool) throw new Error("worker_postgres_pool_required");
    // No provider re-execution. Recovery only settles abandoned turn receipts.
    const staleTurns = createStaleConversationTurnRecovery(database.pool);
    conversationRecovery = createJobScheduler({
      runOnce: staleTurns.runOnce,
      enabled: () => !drain.isDraining(),
      intervalMs: 60_000,
      onError: () => process.stderr.write(JSON.stringify({
        event: "masana_chat.recovery_pending", reason: "database_unavailable",
      }) + "\n"),
    });
    // Account deletion only after exact financial clearance and owner OTP.
    const accessRevoker = createPostgresAccountDeletionAccessRevoker(
      database.pool, createAccountDeletionFinancialClearance(),
    );
    const privacy = createAccountDeletionPrivacyWorker({
      pool: database.pool,
      revoke: input => accessRevoker.revoke(input),
    });
    privacyDeletion = createJobScheduler({
      runOnce: privacy.runOnce,
      enabled: () => !drain.isDraining(),
      intervalMs: 60_000,
      onError: () => process.stderr.write(JSON.stringify({
        event: "privacy.deletion.retry", reason: "database_or_clearance_unavailable",
      }) + "\n"),
    });
    const creatorObjects=createConfiguredStatusObjectStore(env)?.objects;
    if(creatorObjects?.statObject){
      const cleanup=createCreatorMediaCleanup({pool:database.pool,enabled:()=>!drain.isDraining(),
        objects:{deleteObject:creatorObjects.deleteObject,statObject:creatorObjects.statObject}});
      creatorMediaCleanup=createJobScheduler({runOnce:cleanup.runOnce,
        enabled:()=>!drain.isDraining(),intervalMs:60000,
        onError:()=>process.stderr.write(JSON.stringify({event:"creator_media.retry",reason:"batch_failed"})+"\n"),
      });
    }
    // Durable scheduled posts use the canonical feed editorial CAS and audit.
    // Polling needs no new queue or manual feature enablement.
    const feed = createScheduledFeedRuntime({
      pool: database.pool,
      enabled: () => !drain.isDraining(),
    });
    feedPublisher = createJobScheduler({
      runOnce: feed.runOnce,
      enabled: () => !drain.isDraining(),
      intervalMs: 15_000,
      onError: () => {
        process.stderr.write(JSON.stringify({
          event: "status_scheduled.retry", reason: "batch_failed",
        }) + "\n");
      },
    });
    // Missing immutable funding obligations are recovered from independently
    // Paystack-verified fiat evidence. This job never mints or spends MSNW.
    const obligationRecovery = createMsnwFundingObligationRecovery(database.pool);
    msnwObligationRecovery = createJobScheduler({
      runOnce: obligationRecovery.runOnce,
      enabled: () => !drain.isDraining(),
      intervalMs: 30_000,
      onError: () => process.stderr.write(JSON.stringify({
        event: "msnw_funding_obligations.retry", reason: "batch_failed",
      }) + "\n"),
    });
    // Paystack merchant-payout proof is separate from initial user payment.
    // Confirming that Paystack settled a payment does NOT mint an MSNW token.
    if (env.PAYSTACK_SECRET_KEY?.trim()) {
      const paystackSettlement = createMsnwMerchantSettlementRuntime({
        pool: database.pool,paystackSecretKey: env.PAYSTACK_SECRET_KEY,
      });
      msnwMerchantSettlements = createJobScheduler({
        runOnce:paystackSettlement.runOnce,enabled:()=>!drain.isDraining(),
        intervalMs:120000,
        onError:()=>process.stderr.write(JSON.stringify({
          event:"msnw_paystack_payout.retry",reason:"provider_or_database_unavailable",
        })+"\n"),
      });
    }
    // Finalized MSNW issuance can be read without a mint private key. Full
    // verified chain configuration is mandatory before starting the job.
    const msnwChainSettings = [env.MSNW_CHAIN_ID,env.MSNW_TOKEN_CONTRACT,
      env.MSNW_RPC_URL,env.MSNW_CUSTODY_ADDRESS,
      env.MSNW_TOKEN_BYTECODE_SHA256];
    if (msnwChainSettings.every(value => value?.trim())) {
      const verifier = createMsnwFinalityVerifier({
        chainId: env.MSNW_CHAIN_ID!,contract: env.MSNW_TOKEN_CONTRACT!,
        custody: env.MSNW_CUSTODY_ADDRESS!,rpcUrl: env.MSNW_RPC_URL!,
        bytecodeSha256: env.MSNW_TOKEN_BYTECODE_SHA256!,
      });
      const issuer = createMsnwCustodyIssuanceRuntime({pool:database.pool,verifier});
      const reserveAudit = createMsnwReserveAudit({pool:database.pool,verifier});
      msnwFinality = createJobScheduler({
        runOnce: async () => {
          // Before attempting more custody issuance recovery, prove that
          // current ledger liabilities fit the official finalized on-chain
          // custodian's real balance. A shortfall cannot be ignored or
          // converted into spendable customer funds.
          await reserveAudit.runOnce();
          return issuer.runOnce();
        },
        enabled:() => !drain.isDraining(),
        intervalMs: 30000,
        onError: () => process.stderr.write(JSON.stringify({
          event: "msnw_issuance.recovery_pending",reason:"verification_or_ledger_failed",
        }) + "\n"),
      });
    }
    if (env.MASANAWA_FIREBASE_SERVICE_ACCOUNT_JSON?.trim()) {
      const financial = createFinancialNotificationRuntime({
        pool: database.pool,
        sender: createFcmPushSender({
          serviceAccountJson: env.MASANAWA_FIREBASE_SERVICE_ACCOUNT_JSON,
          repository: createPostgresMobilePushRepository(database.pool),
        }),
      });
      financialNotices = createJobScheduler({
        runOnce: financial.runOnce,
        enabled: () => !drain.isDraining(),
        intervalMs: 15000,
        onError: () => process.stderr.write(JSON.stringify({
          event: "notifications.financial.retry", reason: "batch_failed",
        }) + "\n"),
      });
    }
    // No separate escrow scheduler authority: the canonical PG function
    // takes bounded SKIP LOCKED order claims and performs refund+event
    // postings in the same transaction. No backend feature flag.
    const expiry=createP2pExpiryRuntime(database.pool);
    p2pExpiry=createJobScheduler({
      runOnce:expiry.runOnce,enabled:()=>!drain.isDraining(),
      intervalMs:20000,
      onError:()=>process.stderr.write(JSON.stringify({
        event:"p2p.expiry.retry",reason:"batch_failed",
      })+"\n"),
    });
    // A financial mismatch must be visible to operations, never silently
    // repaired by creating balances or retrying completed payouts.
    const audit=createP2pCustodyReconciliation(database.pool);
    p2pAudit=createJobScheduler({
      runOnce:async()=>{
        const result=await audit.runOnce();
        if(result.inconsistentOrders>0 || result.underReservedSellers>0 ||
            result.undeliveredDeadLetters>0){
          process.stderr.write(JSON.stringify({
            event:"p2p.custody_reconciliation.alert",...result,
          })+"\\n");
        }
      },
      enabled:()=>!drain.isDraining(),
      intervalMs:60000,
      onError:()=>process.stderr.write(JSON.stringify({
        event:"p2p.custody_reconciliation.retry",reason:"audit_unavailable",
      })+"\\n"),
    });
    const schedulerHealth = (
      name: string,
      scheduler: ReturnType<typeof createJobScheduler> | undefined,
    ) => ({
      name,
      ...(scheduler?.health() ?? {
        enabled: false,
        runningSeconds: 0,
        lastSuccessAgeSeconds: null,
        stuck: 0,
        consecutiveFailures: 0,
      }),
    });
    app = appFactory({
      ...(options.appOptions ?? {}),
      ...(env.MASANAWA_OPS_MONITOR_TOKEN?.trim()
        ? { opsMonitorToken: env.MASANAWA_OPS_MONITOR_TOKEN.trim() }
        : {}),
      databaseJobs: () => createDurableJobHealth(database.pool!).read(),
      jobsHealth: () => [
        schedulerHealth("scheduled_feed", feedPublisher),
        schedulerHealth("creator_media_cleanup", creatorMediaCleanup),
        schedulerHealth("msnw_obligations", msnwObligationRecovery),
        schedulerHealth("msnw_merchant_settlement", msnwMerchantSettlements),
        schedulerHealth("msnw_finality", msnwFinality),
        schedulerHealth("p2p_expiry", p2pExpiry),
        schedulerHealth("p2p_custody_audit", p2pAudit),
        schedulerHealth("privacy_deletion", privacyDeletion),
        schedulerHealth("masana_chat_recovery", conversationRecovery),
      ],
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

  let lifecycle: Awaited<ReturnType<typeof startNodeService>>;
  try {
    lifecycle = await startNodeService({
      serviceName: "worker",
      server: app,
      config,
      signals: processRef,
      ...(options.logger ? { logger: options.logger } : {}),
      onDraining: drain.beginDraining,
      // Cancel the timer and await the current fenced outbox job before the
      // shared PostgreSQL pool shuts down; do not abandon in-flight claims.
      onAfterClose: async () => {
        await feedPublisher?.stop();
    await creatorMediaCleanup?.stop();
        await msnwObligationRecovery?.stop();
        await msnwMerchantSettlements?.stop();
        await msnwFinality?.stop();
        await financialNotices?.stop();
        await p2pExpiry?.stop();
        await p2pAudit?.stop();
        await privacyDeletion?.stop();
        await conversationRecovery?.stop();
        await database.close();
      },
      onFatalShutdown: () => {
        processRef.exitCode = 1;
      },
    });
    feedPublisher?.start();
    creatorMediaCleanup?.start();
    msnwObligationRecovery?.start();
    msnwMerchantSettlements?.start();
    msnwFinality?.start();
    financialNotices?.start();
    p2pExpiry?.start();
    p2pAudit?.start();
    privacyDeletion?.start();
    conversationRecovery?.start();
  } catch (error) {
    await feedPublisher?.stop();
    await creatorMediaCleanup?.stop();
    await msnwObligationRecovery?.stop();
    await msnwMerchantSettlements?.stop();
    await msnwFinality?.stop();
        await financialNotices?.stop();
    await p2pExpiry?.stop();
    await p2pAudit?.stop();
        await privacyDeletion?.stop();
        await conversationRecovery?.stop();
    await database.close().catch(() => undefined);
    throw error;
  }

  return Object.freeze({
    config,
    address: lifecycle.address,
    app,
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

/**
 * Worker startup errors may include untrusted provider/connection details.
 * Emit only fixed, non-sensitive diagnostic codes so Railway outages can be
 * repaired without leaking a Gemini key or PostgreSQL connection string.
 */
export function safeWorkerStartupReason(error: unknown): string {
  const message = error instanceof Error ? error.message : "";
  switch (message) {
    case "worker_postgres_pool_required":
    case "Missing required environment variable: DATABASE_URL":
    case "service.start_failed":
      return message;
    default:
      return "worker_startup_unknown";
  }
}

if (isDirectExecution()) {
  void startWorkerService().catch(error => {
    process.stderr.write(JSON.stringify({
      event: "service.start_failed",
      service: "worker",
      reason: safeWorkerStartupReason(error),
    }) + "\n");
    process.exitCode = 1;
  });
}
