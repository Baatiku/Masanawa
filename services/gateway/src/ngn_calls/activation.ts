/** NGN call admission must never inherit the retired MB wallet's rollout bit.
 * The only production override is the explicit NGN call setting. */
export function ngnCallsEnabled(env: Readonly<NodeJS.ProcessEnv>): boolean {
  return env.MASANAWA_NGN_CALLS_ENABLED === "true";
}
