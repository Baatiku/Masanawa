import { assertMsnwNgnPolicyRate } from "@masanawa/commerce";
import { readFile } from "node:fs/promises";
import { createPostgresServiceDependency, platformProductMigrationRoots } from "@masanawa/postgres";
import {
  createMsnwIssuanceAdmission,
  msnwAdmissionMessage,
} from "./jobs/msnw/issuance_admission.js";

/**
 * Explicit operator command; never run as a background minting job.
 * Signing takes place OUTSIDE Railway. Private key material must not enter
 * this process, Git, Railway or an end-user device.
 *
 * node --conditions=production dist/msnw_admission_cli.js message approval.json
 * node --conditions=production dist/msnw_admission_cli.js admit signed.json
 */
export async function runMsnwAdmissionCli(
  args: readonly string[],
  env: Readonly<Record<string,string|undefined>> = process.env,
): Promise<void> {
  const [command,filename]=args;
  if ((command!=="message" && command!=="admit") || !filename)
    throw new Error("usage: msnw-admission [message|admit] <signed-json-file>");
  const body=JSON.parse(await readFile(filename,"utf8")) as Record<string,unknown>;
  if (command==="message") {
    const fields={...body};
    delete fields.signature;
    process.stdout.write(msnwAdmissionMessage(fields as never).toString("utf8")+"\n");
    return;
  }
  if (!env.DATABASE_URL || !env.MSNW_CHAIN_ID ||
      !env.MSNW_TOKEN_CONTRACT ||
      !env.MSNW_RESERVE_APPROVER_PUBLIC_KEY ||
      !env.MSNW_MINT_APPROVER_PUBLIC_KEY)
    throw new Error("msnw.admission.runtime_configuration_required");
  const database=createPostgresServiceDependency({
    connectionString:env.DATABASE_URL,applicationName:"masanawa-msnw-admission",
    migrationRoots:platformProductMigrationRoots(),
  });
  try {
    if (!database.pool) throw new Error("msnw.admission.postgres_unavailable");
    const runtime=createMsnwIssuanceAdmission({
      pool:database.pool,chainId:env.MSNW_CHAIN_ID,
      contract:env.MSNW_TOKEN_CONTRACT,
      rateKoboPerMsnw:assertMsnwNgnPolicyRate(env.MSNW_MINT_PRICE_KOBO_PER_MSNW),
      reserveApproverPublicKey:env.MSNW_RESERVE_APPROVER_PUBLIC_KEY,
      mintApproverPublicKey:env.MSNW_MINT_APPROVER_PUBLIC_KEY,
    });
    const result=await runtime.admit(body);
    process.stdout.write(JSON.stringify(result)+"\n");
  } finally {await database.close();}
}

const invoked=process.argv[1] &&
  /(?:^|[/\\])msnw_admission_cli\.(?:js|ts)$/.test(process.argv[1]);
if (invoked) {
  runMsnwAdmissionCli(process.argv.slice(2)).catch((error:unknown)=>{
    process.stderr.write(JSON.stringify({error:error instanceof Error
      ?error.message:"msnw.admission.failed"})+"\n");
    process.exitCode=1;
  });
}
