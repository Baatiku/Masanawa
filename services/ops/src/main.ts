import {createOwnerMailbox} from './owner_mailbox.js';
import {createWhatsAppAdmin} from './whatsapp_admin.js';
import {createDataReconciliation} from './data_reconciliation.js';
import {FlutterwaveBillsClient,FlutterwaveHttpTransport} from '@masanawa/providers';
import { pathToFileURL } from "node:url";
import {createVoiceAdmin} from './voice_admin.js';
import {createWalletAdmin} from './wallet_admin.js';
import {createUsageBillingAdmin} from './usage_billing_admin.js';
import {createBillstackPaymentAdmin} from './billstack_payment_admin.js';
import {getSettledBillstackTransfer} from '@masanawa/providers';
import {createPersonaAdmin} from './persona_admin.js';
import {createPortraitAdmin} from './portrait_admin.js';
import {createRoleAdmin} from './role_admin.js';
import {createContentAdmin} from './content_admin.js';
import {createUserAdmin} from './user_admin.js';
import {createDataAdmin} from './data_admin.js';
import {createEvidenceAdmin} from './evidence_admin.js';
import {PgHomeFeedRepository,createNgnWalletRepository} from '@masanawa/postgres';
import type {
  AgentPresentationRepository,
  CharacterSkillAssignmentRepository,
} from "@masanawa/agents";
import type { CharacterVersionReferenceReader } from "@masanawa/identity";
import type { SkillRepository } from "@masanawa/skills";
import { readRequiredEnv } from "@masanawa/contracts";
import { createPostgresPlatformSessionRepository } from "@masanawa/postgres";
import { createOpsAdminDashboardService, parseOpsAdminGrants } from "./admin_dashboard.js";
import {createCivicResponseAdmin} from './civic_response_admin.js';
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
  createPostgresAgentPresentationRepository,
  createPostgresCharacterSkillAssignmentRepository,
  createPostgresCharacterVersionReferenceReader,
  createPostgresServiceDependency,
  createPostgresSkillRepository,
} from "@masanawa/postgres";
import {
  createAgentAdminService,
  type AgentAdminAuthorizer,
} from "./agent_admin.js";
import {
  createOpsApp,
  type OpsAppOptions,
  type ReadinessCheck,
} from "./app.js";

export type ServiceSignal = "SIGINT" | "SIGTERM";

export interface ServiceProcess extends NodeSignalSource {
  exitCode: number | undefined;
  exit(code: number): never;
}

export interface ServiceDatabaseDependency {
  readonly civicResponseAdmin?:ReturnType<typeof createCivicResponseAdmin>;
  readonly whatsappAdmin?:ReturnType<typeof createWhatsAppAdmin>;
  readonly evidenceAdmin?: ReturnType<typeof createEvidenceAdmin>;
  readonly voiceAdmin?: ReturnType<typeof createVoiceAdmin>;
  readonly walletAdmin?: ReturnType<typeof createWalletAdmin>;
  readonly usageBillingAdmin?: ReturnType<typeof createUsageBillingAdmin>;
  readonly billstackPaymentAdmin?: ReturnType<typeof createBillstackPaymentAdmin>;
  readonly personaAdmin?: ReturnType<typeof createPersonaAdmin>;
  readonly portraitAdmin?: ReturnType<typeof createPortraitAdmin>;
  readonly roleAdmin?: ReturnType<typeof createRoleAdmin>;
  readonly contentAdmin?: ReturnType<typeof createContentAdmin>;
  readonly userAdmin?: ReturnType<typeof createUserAdmin>;
  readonly ownerMailbox?:ReturnType<typeof createOwnerMailbox>;
  readonly dataReconciliation?:ReturnType<typeof createDataReconciliation>;
  readonly dataAdmin?: ReturnType<typeof createDataAdmin>;
  readonly readinessCheck: ReadinessCheck;
  readonly agentPresentations?: AgentPresentationRepository;
  readonly characterSkillAssignments?: CharacterSkillAssignmentRepository;
  readonly characterVersions?: CharacterVersionReferenceReader;
  readonly skills?: SkillRepository;
  readonly adminDashboard?: ReturnType<typeof createOpsAdminDashboardService>;
  close(): Promise<void>;
}

export type ServiceDatabaseFactory = (
  env: Readonly<Record<string, string | undefined>>,
) => ServiceDatabaseDependency;

export type OpsServiceConfig = NodeServiceRuntimeConfig;

export interface StartOpsServiceOptions {
  readonly env?: Readonly<Record<string, string | undefined>>;
  readonly processRef?: ServiceProcess;
  readonly logger?: ServiceLifecycleLogger;
  readonly databaseFactory?: ServiceDatabaseFactory;
  readonly appFactory?: (options: OpsAppOptions) => ManagedNodeServer;
  readonly appOptions?: Omit<OpsAppOptions, "isDraining">;
  readonly agentAdminAuthorizer?: AgentAdminAuthorizer;
}

export interface OpsServiceRuntime {
  readonly config: OpsServiceConfig;
  readonly address: string;
  readonly app: ManagedNodeServer;
  isDraining(): boolean;
  drain(): void;
  shutdown(reason?: ServiceSignal | "manual"): Promise<void>;
  disposeSignals(): void;
}

export function parseOpsServiceConfig(
  env: Readonly<Record<string, string | undefined>> = process.env,
): OpsServiceConfig {
  return readNodeServiceRuntimeConfig(
    {
      ...env,
      HOST: env.MASANAWA_OPS_HOST ?? env.HOST,
      PORT: env.MASANAWA_OPS_PORT ?? env.PORT,
    },
    {
      port: 3002,
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
    applicationName: "masanawa-ops",
  });
  const flutterwave=env.FLUTTERWAVE_SECRET_KEY?.trim()?new FlutterwaveBillsClient({secretKey:env.FLUTTERWAVE_SECRET_KEY.trim(),country:'NG',transport:new FlutterwaveHttpTransport({timeoutMs:5000})}):undefined;
  const adminDashboard=createOpsAdminDashboardService({sessions:createPostgresPlatformSessionRepository(database.pool),pool:database.pool,grants:parseOpsAdminGrants(env.MASANAWA_OPS_ADMIN_GRANTS_JSON),dynamicCapabilities:async(tenantId,userId)=>{const caps=(await database.pool.query(`SELECT capabilities FROM security.ops_admin_roles WHERE tenant_id=$1 AND user_id=$2`,[tenantId,userId])).rows[0]?.capabilities;return Array.isArray(caps)?caps.filter((c:unknown):c is string=>typeof c==='string'&&/^[a-z]+(?:\.[a-z]+)+$/.test(c)):[];}});
  return Object.freeze({
    civicResponseAdmin:createCivicResponseAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    whatsappAdmin:createWhatsAppAdmin({pool:database.pool,authorize:adminDashboard.authorize,env}),
    evidenceAdmin:createEvidenceAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    walletAdmin:createWalletAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    usageBillingAdmin:createUsageBillingAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    billstackPaymentAdmin:createBillstackPaymentAdmin({pool:database.pool,authorize:adminDashboard.authorize,
      deposit:createNgnWalletRepository(database.pool).deposit,
      ...(env.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||env.BILLSTACK_SECRET_KEY?.trim()?{
        transaction:(sessionId:string)=>getSettledBillstackTransfer({
          secretKey:(env.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||env.BILLSTACK_SECRET_KEY?.trim())!,sessionId,
        }),
      }:{}),
    }),
    personaAdmin:createPersonaAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    portraitAdmin:createPortraitAdmin({pool:database.pool,authorize:adminDashboard.authorize,publicBaseUrl:env.MASANAWA_PUBLIC_BASE_URL}),
    roleAdmin:createRoleAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    contentAdmin:createContentAdmin({pool:database.pool,feed:new PgHomeFeedRepository(database.pool,true,true),authorize:adminDashboard.authorize}),
    userAdmin:createUserAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    ownerMailbox:createOwnerMailbox({pool:database.pool,authorize:adminDashboard.authorize,env}),
    dataReconciliation:createDataReconciliation({pool:database.pool,authorize:adminDashboard.authorize,...(flutterwave?{status:(reference:string)=>flutterwave.getStatus(reference)}:{})}),
    dataAdmin:createDataAdmin({pool:database.pool,authorize:adminDashboard.authorize,initialApprovals:env.MASANAWA_NGN_DATA_APPROVALS_JSON,...(flutterwave?{listItems:(billerCode:string)=>flutterwave.listItems(billerCode)}:{})}),
    voiceAdmin:createVoiceAdmin({pool:database.pool,authorize:adminDashboard.authorize,...((env.MASANAWA_GEMINI_API_KEY??env.GEMINI_API_KEY)?{apiKey:env.MASANAWA_GEMINI_API_KEY??env.GEMINI_API_KEY}:{})}),
    readinessCheck: database.readinessCheck,
    adminDashboard,
    agentPresentations: createPostgresAgentPresentationRepository(database.pool),
    characterSkillAssignments:
      createPostgresCharacterSkillAssignmentRepository(database.pool),
    characterVersions:
      createPostgresCharacterVersionReferenceReader(database.pool),
    skills: createPostgresSkillRepository(database.pool),
    close: database.close,
  });
}

export async function startOpsService(
  options: StartOpsServiceOptions = {},
): Promise<OpsServiceRuntime> {
  const env = options.env ?? process.env;
  const config = parseOpsServiceConfig(env);
  const processRef = options.processRef ?? (process as ServiceProcess);
  const drain = createDrainState();
  const databaseFactory =
    options.databaseFactory ?? createDefaultDatabaseDependency;
  const database = databaseFactory(env);
  const appFactory = options.appFactory ?? createOpsApp;

  const composedAgentAdmin =
    options.appOptions?.agentAdmin ??
    ((options.agentAdminAuthorizer || database.adminDashboard) &&
    database.agentPresentations &&
    database.characterSkillAssignments &&
    database.characterVersions &&
    database.skills
      ? createAgentAdminService({
          presentations: database.agentPresentations,
          skillAssignments: database.characterSkillAssignments,
          characterVersions: database.characterVersions,
          skills: database.skills,
          authorizer: options.agentAdminAuthorizer ?? {
            authorize: async (request) => {
              const actor = await database.adminDashboard!.authorize(request);
              return { tenantId: actor.tenantId as import("@masanawa/contracts").TenantId };
            },
          },
        })
      : undefined);

  let app: ManagedNodeServer;
  try {
    app = appFactory({
      ...(options.appOptions ?? {}),
      ...(database.whatsappAdmin?{whatsappAdmin:database.whatsappAdmin}:{}),
      ...(database.voiceAdmin ? {voiceAdmin:database.voiceAdmin}:{}),
      ...(database.evidenceAdmin ? {evidenceAdmin:database.evidenceAdmin}:{}),
      ...(database.walletAdmin ? {walletAdmin:database.walletAdmin}:{}),
      ...(database.usageBillingAdmin ? {usageBillingAdmin:database.usageBillingAdmin}:{}),
      ...(database.billstackPaymentAdmin ? {billstackPaymentAdmin:database.billstackPaymentAdmin}:{}),
      ...(database.personaAdmin ? {personaAdmin:database.personaAdmin}:{}),
      ...(database.portraitAdmin ? {portraitAdmin:database.portraitAdmin}:{}),
      ...(database.roleAdmin ? {roleAdmin:database.roleAdmin}:{}),
      ...(database.contentAdmin ? {contentAdmin:database.contentAdmin}:{}),
      ...(database.userAdmin ? {userAdmin:database.userAdmin}:{}),
      ...(database.ownerMailbox?{ownerMailbox:database.ownerMailbox}:{}),
      ...(database.dataReconciliation?{dataReconciliation:database.dataReconciliation}:{}),
      ...(database.dataAdmin ? {dataAdmin:database.dataAdmin}:{}),
      serviceHealthChecks: [
        {
          name: "Gateway readiness",
          check: async () => {
            try {
              // The Docker Compose service name is fixed, not user-controlled.
              const response = await fetch("http://gateway:3000/readyz", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              const report = await response.json() as { status?: unknown; checks?: { ready?: unknown }[] };
              return { ready: response.ok && report.status === "ready" &&
                (!Array.isArray(report.checks) || report.checks.every(item => item.ready === true)) };
            } catch { return { ready: false }; }
          },
        },
        {
          name: "Gateway authentication endpoint",
          check: async () => {
            try {
              const response = await fetch("http://gateway:3000/auth/capabilities", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              return { ready: response.ok };
            } catch { return { ready: false }; }
          },
        },
        {
          name: "Emergency category route",
          check: async () => {
            try {
              // This proves the public, non-mutating emergency catalogue is mounted,
              // NOT that incident interviews, location or AI audio work.
              const response = await fetch("http://gateway:3000/v1/response/categories", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              await response.body?.cancel();
              return { ready: response.status === 200 };
            } catch { return { ready: false }; }
          },
        },
        {
          name: "NGN call admission route",
          check: async () => {
            try {
              // Safe anonymous read with a nonexistent synthetic key: 401 means
              // the mounted route enforces authentication. 404 means absent/disabled.
              // No reservation, provider call, money or customer data is accessed.
              const response = await fetch("http://gateway:3000/v1/ngn/calls/admissions/original/healthcheck_route_probe", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              await response.body?.cancel();
              return { ready: response.status === 401 };
            } catch { return { ready: false }; }
          },
        },
        {
          name: "Browser push registration route",
          check: async () => {
            try {
              // Only check that an anonymous read is refused. This neither
              // registers a device nor claims real FCM/browser push delivery.
              const response = await fetch("http://gateway:3000/v1/account/browser-push", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              await response.body?.cancel();
              return { ready: response.status === 401 };
            } catch { return { ready: false }; }
          },
        },
        {
          name: "Worker readiness",
          check: async () => {
            try {
              // Private Compose DNS; an intentionally stopped Worker is not
              // evidence that background jobs or notifications are operating.
              const response = await fetch("http://worker:3001/readyz", {
                signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
              });
              const report = await response.json() as { status?: unknown; checks?: { ready?: unknown }[] };
              return { ready: response.ok && report.status === "ready" &&
                (!Array.isArray(report.checks) || report.checks.every(item => item.ready === true)) };
            } catch { return { ready: false }; }
          },
        },
      ],
      runtimeReleaseChecks: {
        gateway: async () => {
          try {
            const response = await fetch("http://gateway:3000/readyz", {
              signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
            });
            const header = response.headers.get("x-masanawa-release");
            await response.body?.cancel();
            return header;
          } catch { return null; }
        },
        worker: async () => {
          try {
            const response = await fetch("http://worker:3001/readyz", {
              signal: AbortSignal.timeout(2500), redirect: "error", cache: "no-store",
            });
            const header = response.headers.get("x-masanawa-release");
            await response.body?.cancel();
            return header;
          } catch { return null; }
        },
      },
      runtimeMetadata:{
        ...(/^[0-9a-f]{40}$/.test(env.MASANAWA_RELEASE_SHA ?? "") ? { releaseSha: env.MASANAWA_RELEASE_SHA! } : {}),
        providers:[['Gemini',['MASANAWA_GEMINI_API_KEY','GEMINI_API_KEY','MASANAWA_ALPHA_GEMINI_API_KEY']],['Billstack',['MASANAWA_BILLSTACK_SECRET_KEY','BILLSTACK_SECRET_KEY']],['Flutterwave',['FLUTTERWAVE_SECRET_KEY','MASANAWA_FLUTTERWAVE_SECRET_KEY']],['Resend',['RESEND_API_KEY','MASANAWA_RESEND_API_KEY']]].map(([name,keys])=>({name:String(name),configured:(keys as string[]).some(k=>Boolean(env[k]?.trim())),verification:'not_checked'})),
        flags:['MASANAWA_NGN_CALLS_ENABLED','MASANAWA_NGN_DATA_CATALOG_ENABLED','MASANAWA_NGN_DATA_PURCHASE_ENABLED','MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED'].map(name=>({name,enabled:env[name]==='true'})),
      },
      ...(composedAgentAdmin ? { agentAdmin: composedAgentAdmin } : {}),
      ...(database.adminDashboard ? { adminDashboard: database.adminDashboard } : {}),
      ...(database.civicResponseAdmin ? { civicResponseAdmin: database.civicResponseAdmin } : {}),
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

  const lifecycle = await startNodeService({
    serviceName: "ops",
    server: app,
    config,
    signals: processRef,
    ...(options.logger ? { logger: options.logger } : {}),
    onDraining: drain.beginDraining,
    onAfterClose: database.close,
    onFatalShutdown: () => {
      processRef.exitCode = 1;
    },
  });

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

if (isDirectExecution()) {
  void startOpsService().catch(() => {
    process.exitCode = 1;
  });
}
