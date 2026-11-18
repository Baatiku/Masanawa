/** Direct provider tokens cannot enforce the server-owned MB budget. Old clients
 * receive a bounded compatibility response; authorized MB admission uses its
 * separate private token service and one-use same-origin relay grant. */
export class MbCallAdmissionRequiredError extends Error {
  readonly code='calls.mb_admission_required';
  readonly statusCode=409;
  constructor(){super('Start a reviewed MB call to continue.');}
}
export const reviewedMbCallRequired=Object.freeze({
  async validate():Promise<void>{throw new MbCallAdmissionRequiredError();},
  async tokenIssued():Promise<void>{throw new MbCallAdmissionRequiredError();},
});
