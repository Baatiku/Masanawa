/** Preserve existing relay settings for rollback. Direct mode is a deliberate
 * server/operator choice and never a fallback following a relay failure. */
export function flutterwaveTransportConfiguration(env:Readonly<Record<string,string|undefined>>){
 if(env.MASANAWA_FLUTTERWAVE_DIRECT_ENABLED==='true')return {};
 const baseUrl=env.FLUTTERWAVE_RELAY_URL?.trim();
 const relayToken=env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN?.trim();
 if(Boolean(baseUrl)!==Boolean(relayToken))throw new TypeError('Flutterwave relay URL and relay token must be configured together');
 return baseUrl&&relayToken?{baseUrl,relayToken,
  relayProtocol:env.FLUTTERWAVE_RELAY_PROTOCOL==='dual-header'?'dual-header' as const:'bearer' as const}:{};
}
