/** Owner-approved platform reference; foreign exchange remains a separate quote. */
export const MSNW_PRICING_POLICY = Object.freeze({
  id: 'msnw-ngn-1-v1', referenceCurrency: 'NGN',
  atomicPerMsnw: '1000000', koboPerMsnw: '100', atomicPerKobo: '10000',
});
export function assertMsnwNgnPolicyRate(configured?: string): string {
  if (configured !== undefined && configured.trim() !== MSNW_PRICING_POLICY.koboPerMsnw)
    throw new Error('msnw.pricing.policy_conflict');
  return MSNW_PRICING_POLICY.koboPerMsnw;
}
export function msnwAtomicFromNgnKobo(kobo: string): string {
  if (!/^(0|[1-9][0-9]{0,23})$/.test(kobo)) throw new Error('msnw.pricing.amount_invalid');
  return (BigInt(kobo) * 10000n).toString();
}
export function msnwNgnReference(atomic: string): string {
  if (!/^(0|[1-9][0-9]{0,77})$/.test(atomic)) throw new Error('msnw.pricing.amount_invalid');
  return `${BigInt(atomic)/1000000n}.${(BigInt(atomic)%1000000n).toString().padStart(6,'0')}`;
}
