export class NgnCallRelayError extends Error {
  readonly code='ngn.call.relay_unavailable';
  readonly statusCode=503;
  constructor(){super('Voice connection is temporarily unavailable. Please try again.');}
}
