export class GbCallRelayError extends Error {
  readonly code='gb.call.relay_unavailable';
  readonly statusCode=503;
  constructor(){super('Voice connection is temporarily unavailable. Please try again.');}
}
