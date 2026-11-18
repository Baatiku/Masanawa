import {createOwnerMailbox} from './owner_mailbox.js';
import {createWhatsAppAdmin} from './whatsapp_admin.js';
import {createDataReconciliation} from './data_reconciliation.js';
import {FlutterwaveBillsClient,FlutterwaveHttpTransport} from '@masanawa/providers';
import { pathToFileURL } from "node:url";
import {createVoiceAdmin} from './voice_admin.js';
import {createWalletAdmin} from './wallet_admin.js';
import {createPersonaAdmin} from './persona_admin.js';
import {createPortraitAdmin} from './portrait_admin.js';
import {createRoleAdmin} from './role_admin.js';
import {createContentAdmin} from './content_admin.js';
import {createUserAdmin} from './user_admin.js';
import {createDataAdmin} from './data_admin.js';
import {createEvidenceAdmin} from './evidence_admin.js';
import {PgHomeFeedRepository} from '@masanawa/postgres';
import type {
  AgentPresentationRepository,
  CharacterSkillAssignmentRepository,
} from "@masanawa/agents";
import type { CharacterVersionReferenceReader } from "@masanawa/identity";
import type { SkillRepository } from "@masanawa/skills";
import { readRequiredEnv } from "@masanawa/contracts";
import { createPostgresPlatformSessionRepository } from "@masanawa/postgres";
import { createOpsAdminDashboardService, parseOpsAdminGrants } from "./admin_dashboard.js";
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
  readonly whatsappAdmin?:ReturnType<typeof createWhatsAppAdmin>;
  readonly evidenceAdmin?: ReturnType<typeof createEvidenceAdmin>;
  readonly voiceAdmin?: ReturnType<typeof createVoiceAdmin>;
  readonly walletAdmin?: ReturnType<typeof createWalletAdmin>;
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
    whatsappAdmin:createWhatsAppAdmin({pool:database.pool,authorize:adminDashboard.authorize,env}),
    evidenceAdmin:createEvidenceAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
    walletAdmin:createWalletAdmin({pool:database.pool,authorize:adminDashboard.authorize}),
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
      ...(database.personaAdmin ? {personaAdmin:database.personaAdmin}:{}),
      ...(database.portraitAdmin ? {portraitAdmin:database.portraitAdmin}:{}),
      ...(database.roleAdmin ? {roleAdmin:database.roleAdmin}:{}),
      ...(database.contentAdmin ? {contentAdmin:database.contentAdmin}:{}),
      ...(database.userAdmin ? {userAdmin:database.userAdmin}:{}),
      ...(database.ownerMailbox?{ownerMailbox:database.ownerMailbox}:{}),
      ...(database.dataReconciliation?{dataReconciliation:database.dataReconciliation}:{}),
      ...(database.dataAdmin ? {dataAdmin:database.dataAdmin}:{}),
      runtimeMetadata:{
        providers:[['Gemini',['MASANAWA_GEMINI_API_KEY','GEMINI_API_KEY','MASANAWA_ALPHA_GEMINI_API_KEY']],['Billstack',['MASANAWA_BILLSTACK_SECRET_KEY','BILLSTACK_SECRET_KEY']],['Flutterwave',['FLUTTERWAVE_SECRET_KEY','MASANAWA_FLUTTERWAVE_SECRET_KEY']],['Resend',['RESEND_API_KEY','MASANAWA_RESEND_API_KEY']]].map(([name,keys])=>({name:String(name),configured:(keys as string[]).some(k=>Boolean(env[k]?.trim())),verification:'not_checked'})),
        flags:['MASANAWA_NGN_CALLS_ENABLED','MASANAWA_NGN_DATA_CATALOG_ENABLED','MASANAWA_NGN_DATA_PURCHASE_ENABLED','MASANAWA_BILLSTACK_LIVE_DEPOSITS_ENABLED'].map(name=>({name,enabled:env[name]==='true'})),
      },
      ...(composedAgentAdmin ? { agentAdmin: composedAgentAdmin } : {}),
      ...(database.adminDashboard ? { adminDashboard: database.adminDashboard } : {}),
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
