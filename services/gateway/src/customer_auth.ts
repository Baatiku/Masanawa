import { createHash, randomBytes } from "node:crypto";
import { renderMasanawaOtpEmail, renderMasanawaWelcomeEmail } from "./auth_email_templates.js";
export { renderMasanawaOtpEmail, renderMasanawaWelcomeEmail } from "./auth_email_templates.js";
import {
  createOtpCode,
  hashDevicePassword,
  hashOtpCode,
  hashPlatformSessionToken,
  mintPlatformSessionToken,
  normalizePlatformAuthIdentifier,
  createAuthorityContext,
  type PlatformAuthChannel,
  type PlatformAuthProfile,
  type PlatformSessionIdentity,
  type PlatformSessionRepository,
} from "@masanawa/security";
import {
  createCanonicalId,
  nowInstant,
  parseCanonicalId,
  type CharacterId,
  type TenantId,
  type UserId,
} from "@masanawa/contracts";
import type {
  AgentPresentationRepository,
  CharacterSkillAssignmentRepository,
  PlatformAgentProfileRepository,
} from "@masanawa/agents";
import type {
  UserRelationshipProvisioner,
  UserRelationshipReader,
} from "@masanawa/identity";
import type {
  AgentConversationAdmission,
  AgentConversationAuthorizer,
} from "./agent_conversation_contract.js";
import type { AgentDirectoryAuthorizer } from "./agent_directory.js";
import type { CreatorCloneAuthorizer } from "./creator_clone.js";
import type { CommerceUserAuthorizer } from "./commerce_catalog.js";

export class CustomerAuthError extends Error {
  readonly code: string;
  readonly statusCode: number;
  constructor(code: string, statusCode: number) {
    super(code);
    this.name = "CustomerAuthError";
    this.code = code;
    this.statusCode = statusCode;
  }
}

export interface OtpDelivery {
  send(input: Readonly<{ identifier: string; code: string }>): Promise<void>;
  sendWelcome?(input: Readonly<{identifier:string;name:string;username?:string;userId:string}>): Promise<void>;
  sendSecurityAlert?(input: Readonly<{identifier:string;at:string}>): Promise<void>;
}

export interface PlatformCustomerSessionAuthorizer {
  authorize(input: Readonly<{
    authorizationHeader: string | undefined;
  }>): Promise<PlatformSessionIdentity>;
}

export interface PlatformFinancialAuthorizer {
  authorize(input: Readonly<{
    authorizationHeader: string | undefined;
  }>): Promise<Readonly<{ tenantId: TenantId; userId: UserId }>>;
}

export interface CustomerAuthService {
  capabilities(): Readonly<{
    otpChannels: readonly PlatformAuthChannel[];
  }>;
  sendOtp(input: Readonly<{ phone?: string; email?: string }>): Promise<Readonly<{
    phone?: string;
    email?: string;
    resendInSeconds: number;
  }>>;
  verifyOtp(input: Readonly<{
    phone?: string;
    email?: string;
    code: string;
    name?: string;
  }>): Promise<AuthTokensView>;
  accountStatus(input: Readonly<{
    phone: string;
    deviceId: string;
  }>): Promise<Readonly<{ registered: boolean; deviceKnown: boolean }>>;
  deviceRestore(input: Readonly<{
    phone: string;
    deviceId: string;
  }>): Promise<AuthTokensView>;
  passwordVerify(input: Readonly<{
    phone: string;
    deviceId: string;
    password: string;
  }>): Promise<AuthTokensView>;
  passwordSetup(input: Readonly<{
    phone: string;
    deviceId: string;
    password: string;
    name: string;
    email?: string;
  }>): Promise<AuthTokensView>;
  refresh(input: Readonly<{ refreshToken: string }>): Promise<AuthTokensView>;
  logout(input: Readonly<{ authorizationHeader: string | undefined }>): Promise<void>;
  sessions(input: Readonly<{authorizationHeader:string|undefined}>): Promise<readonly import("@masanawa/security").PlatformSessionView[]>;
  revokeSession(input: Readonly<{authorizationHeader:string|undefined;sessionId:string}>): Promise<void>;
  logoutAll(input: Readonly<{authorizationHeader:string|undefined}>): Promise<void>;
  loginHistory(input: Readonly<{authorizationHeader:string|undefined}>): Promise<readonly import("@masanawa/security").PlatformAuthEventView[]>;
  startEmailLink(input: Readonly<{authorizationHeader:string|undefined; email:string}>): Promise<Readonly<{resendInSeconds:number}>>;
  confirmEmailLink(input: Readonly<{authorizationHeader:string|undefined;email:string;code:string}>): Promise<Readonly<{email:string}>>;
  requestPasswordRecovery(input: Readonly<{phone:string}>): Promise<Readonly<{resendInSeconds:number}>>;
  completePasswordRecovery(input: Readonly<{phone:string;code:string;password:string}>): Promise<Readonly<{success:true}>>;
  beginWithdrawalStepUp(input: Readonly<{requestId:string;providerCode:string;amount:string;destinationAddress:string}> & Readonly<{authorizationHeader:string|undefined}>): Promise<Readonly<{resendInSeconds:number;delivery:"email"}>>;
  confirmWithdrawalStepUp(input: Readonly<{requestId:string;providerCode:string;amount:string;destinationAddress:string}> & Readonly<{authorizationHeader:string|undefined;code:string}>): Promise<Readonly<{stepUpToken:string;expiresInSeconds:number}>>;
  consumeWithdrawalStepUp(input: Readonly<{requestId:string;providerCode:string;amount:string;destinationAddress:string}> & Readonly<{authorizationHeader:string|undefined;stepUpToken:string|undefined}>): Promise<void>;
  beginContactChange(input: Readonly<{authorizationHeader:string|undefined;channel:PlatformAuthChannel;nextIdentifier:string}>): Promise<Readonly<{resendInSeconds:number}>>;
  completeContactChange(input: Readonly<{authorizationHeader:string|undefined;channel:PlatformAuthChannel;nextIdentifier:string;oldCode:string;newCode:string}>): Promise<Readonly<{success:true}>>;
  beginBankStepUp(input: Readonly<{authorizationHeader:string|undefined;bankCode:string;accountNumber:string}>): Promise<Readonly<{resendInSeconds:number}>>;
  confirmBankStepUp(input: Readonly<{authorizationHeader:string|undefined;bankCode:string;accountNumber:string;code:string}>): Promise<Readonly<{stepUpToken:string}>>;
  consumeBankStepUp(input: Readonly<{authorizationHeader:string|undefined;bankCode:string;accountNumber:string;stepUpToken:string|undefined}>): Promise<void>;
  authorizeSensitiveMutation(input: Readonly<{authorizationHeader:string|undefined}>): Promise<void>;
}

export interface AuthUserView {
  readonly id: string;
  readonly name: string;
  readonly username?: string;
  readonly phone: string | null;
  readonly email: string | null;
  readonly locale: string;
  readonly status:"ACTIVE"|"RESTRICTED"|"RECOVERY";
  readonly role: "CITIZEN";
  readonly isNewUser: boolean;
  readonly communityId: null;
  readonly stateId: null;
  readonly createdAt: string;
}

export interface AuthTokensView {
  readonly accessToken: string;
  readonly refreshToken: string;
  readonly accessExpiresIn: number;
  readonly user: AuthUserView;
}

function authUser(profile: PlatformAuthProfile, isNewUser: boolean): AuthUserView {
  return Object.freeze({
    id: profile.userId,
    name: profile.name,
    ...(profile.username ? {username:profile.username} : {}),
    phone: profile.phone,
    email: profile.email,
    locale: profile.locale,
    status: profile.accountState==="restricted"?"RESTRICTED" as const:
      profile.accountState==="recovery"?"RECOVERY" as const:"ACTIVE" as const,
    role: "CITIZEN" as const,
    isNewUser,
    communityId: null,
    stateId: null,
    createdAt: profile.createdAt,
  });
}

function assertDeviceId(deviceId: string): string {
  if (!/^[0-9a-f]{32}$/u.test(deviceId)) throw new CustomerAuthError("VALIDATION_FAILED", 400);
  return deviceId;
}

function assertPassword(password: string): string {
  if (!/^\d{6}$/u.test(password)) throw new CustomerAuthError("VALIDATION_FAILED", 400);
  return password;
}

function bearer(header: string | undefined): string | null {
  if (!header) return null;
  const match = /^Bearer\s+(.+)$/iu.exec(header.trim());
  return match?.[1]?.trim() || null;
}

function plusSeconds(iso: string, seconds: number): string {
  return new Date(Date.parse(iso) + seconds * 1000).toISOString();
}

function assertTtl(value: number, label: string, min: number, max: number): number {
  if (!Number.isSafeInteger(value) || value < min || value > max) {
    throw new TypeError(`${label} is invalid`);
  }
  return value;
}

export function createCustomerAuthService(input: Readonly<{
  repository: PlatformSessionRepository;
  tenantId: TenantId;
  otpPepper: string;
  emailDelivery?: OtpDelivery;
  smsDelivery?: OtpDelivery;
  accessTtlSeconds?: number;
  refreshTtlSeconds?: number;
  otpTtlSeconds?: number;
  resendSeconds?: number;
  now?: () => string;
}>): CustomerAuthService {
  const accessTtlSeconds = assertTtl(input.accessTtlSeconds ?? 900, "accessTtlSeconds", 60, 86_400);
  const refreshTtlSeconds = assertTtl(input.refreshTtlSeconds ?? 30 * 24 * 60 * 60, "refreshTtlSeconds", 3600, 365 * 24 * 60 * 60);
  const otpTtlSeconds = assertTtl(input.otpTtlSeconds ?? 600, "otpTtlSeconds", 60, 3600);
  const resendSeconds = assertTtl(input.resendSeconds ?? 60, "resendSeconds", 30, 3600);
  if (refreshTtlSeconds <= accessTtlSeconds) throw new TypeError("refreshTtlSeconds must exceed accessTtlSeconds");
  if (input.otpPepper.length < 32) throw new TypeError("MASANAWA_AUTH_OTP_PEPPER must be at least 32 characters");
  const now = input.now ?? (() => new Date().toISOString());

  function delivery(channel: PlatformAuthChannel): OtpDelivery {
    const result = channel === "email" ? input.emailDelivery : input.smsDelivery;
    if (!result) throw new CustomerAuthError("OTP_CHANNEL_UNAVAILABLE", 503);
    return result;
  }

  async function issueTokens(identity: PlatformSessionIdentity, isNewUser: boolean, deviceId?: string): Promise<AuthTokensView> {
    const issuedAt = now();
    const accessToken = mintPlatformSessionToken("access");
    const refreshToken = mintPlatformSessionToken("refresh");
    try {
      await input.repository.issueSession({
        identity,
        accessHash: hashPlatformSessionToken(accessToken),
        refreshHash: hashPlatformSessionToken(refreshToken),
        accessExpiresAt: plusSeconds(issuedAt, accessTtlSeconds),
        refreshExpiresAt: plusSeconds(issuedAt, refreshTtlSeconds),
        issuedAt,
        ...(deviceId ? {deviceId} : {}),
      });
    } catch (error) {
      if (error instanceof Error && error.message === "auth.account_inactive") {
        throw new CustomerAuthError("ACCOUNT_SUSPENDED", 403);
      }
      if(error instanceof Error && error.message==="auth.account_suspended")
        throw new CustomerAuthError("ACCOUNT_SUSPENDED",403);
      throw error;
    }
    return Object.freeze({
      accessToken,
      refreshToken,
      accessExpiresIn: accessTtlSeconds,
      user: authUser(identity.profile, isNewUser),
    });
  }

  async function requireSession(header: string | undefined) {
    const token=bearer(header);
    if(!token)throw new CustomerAuthError("UNAUTHORIZED",401);
    let accessHash:string;
    try{accessHash=hashPlatformSessionToken(token);}
    catch{throw new CustomerAuthError("UNAUTHORIZED",401);}
    const identity=await input.repository.resolveAccess({accessHash,at:now()});
    if(!identity)throw new CustomerAuthError("UNAUTHORIZED",401);
    return {identity,accessHash};
  }
  type Withdrawal = Readonly<{requestId:string;providerCode:string;amount:string;destinationAddress:string}>;
  function withdrawalFingerprint(request:Withdrawal):string {
    if(!request.requestId || request.requestId.length>128 ||
       !request.providerCode || request.providerCode.length>32 ||
       !request.amount || request.amount.length>80 ||
       !request.destinationAddress || request.destinationAddress.length>512)
      throw new CustomerAuthError("VALIDATION_FAILED",400);
    return createHash("sha256").update(JSON.stringify([
      "crypto_withdrawal",request.requestId,request.providerCode,
      request.amount,request.destinationAddress,
    ])).digest("hex");
  }
  function stepUpChallengeKey(userId:string,fingerprint:string):string {
    return "stepup:"+createHash("sha256").update(userId+":"+fingerprint).digest("hex");
  }
  function bankFingerprint(bankCode:string,accountNumber:string):string {
    if(!/^[0-9]{3,6}$/u.test(bankCode) || !/^[0-9]{10}$/u.test(accountNumber))
      throw new CustomerAuthError("VALIDATION_FAILED",400);
    return createHash("sha256").update(JSON.stringify(["p2p_bank_method",bankCode,accountNumber])).digest("hex");
  }
  function changeKeys(userId:string,channel:PlatformAuthChannel,oldValue:string,newValue:string) {
    const fingerprint=createHash("sha256").update(JSON.stringify([userId,channel,oldValue,newValue])).digest("hex");
    return {oldKey:"contact-old:"+fingerprint,newKey:"contact-new:"+fingerprint};
  }
  const otpChannels = Object.freeze([
    ...(input.emailDelivery ? ["email" as const] : []),
    ...(input.smsDelivery ? ["sms" as const] : []),
  ]);

  return Object.freeze<CustomerAuthService>({
    capabilities() {
      return Object.freeze({ otpChannels });
    },

    async sendOtp(request) {
      let normalized;
      try {
        normalized = normalizePlatformAuthIdentifier(request);
      } catch {
        throw new CustomerAuthError("VALIDATION_FAILED", 400);
      }
      const code = createOtpCode();
      const createdAt = now();
      const codeHash = hashOtpCode({
        pepper: input.otpPepper,
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        code,
      });
      try {
        await input.repository.putOtpChallenge({
          tenantId: input.tenantId,
          channel: normalized.channel,
          identifier: normalized.identifier,
          codeHash,
          createdAt,
          expiresAt: plusSeconds(createdAt, otpTtlSeconds),
          resendAfter: plusSeconds(createdAt, resendSeconds),
          maxAttempts: 5,
        });
      } catch (error) {
        if (error instanceof Error && error.message === "auth.otp.cooldown") {
          throw new CustomerAuthError("OTP_RATE_LIMITED", 429);
        }
        throw error;
      }
      try {
        await delivery(normalized.channel).send({ identifier: normalized.identifier, code });
      } catch {
        await input.repository.cancelOtpChallenge({
          tenantId: input.tenantId,
          channel: normalized.channel,
          identifier: normalized.identifier,
          codeHash,
        }).catch(() => undefined);
        throw new CustomerAuthError("OTP_DELIVERY_UNAVAILABLE", 503);
      }
      return Object.freeze({
        ...(normalized.channel === "email"
          ? { email: normalized.identifier }
          : { phone: normalized.identifier }),
        resendInSeconds: resendSeconds,
      });
    },

    async verifyOtp(request) {
      let normalized;
      try {
        normalized = normalizePlatformAuthIdentifier(request);
      } catch {
        throw new CustomerAuthError("VALIDATION_FAILED", 400);
      }
      if (!/^\d{6}$/u.test(request.code)) throw new CustomerAuthError("OTP_INVALID", 400);
      const verifiedAt = now();
      const codeHash = hashOtpCode({
        pepper: input.otpPepper,
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        code: request.code,
      });
      // Prove possession first without burning the one-time challenge. A new
      // user may need to supply a name in a second request from the existing
      // mobile onboarding flow.
      const validation = await input.repository.consumeOtpChallenge({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        codeHash,
        consumedAt: verifiedAt,
        consume: false,
      });
      if (validation === "locked") throw new CustomerAuthError("OTP_LOCKED", 429);
      if (validation !== "accepted") throw new CustomerAuthError("OTP_INVALID", 400);

      let profile = await input.repository.resolveProfile({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        observedAt: verifiedAt,
      });
      const name = request.name?.trim();
      if (!profile && !name) throw new CustomerAuthError("NAME_REQUIRED_ON_SIGNUP", 400);

      // Consume atomically only when this request can actually complete sign-in.
      const consumed = await input.repository.consumeOtpChallenge({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        codeHash,
        consumedAt: verifiedAt,
      });
      if (consumed === "locked") throw new CustomerAuthError("OTP_LOCKED", 429);
      if (consumed !== "accepted") throw new CustomerAuthError("OTP_INVALID", 400);

      const isNewUser = !profile;
      if (!profile) {
        profile = await input.repository.createProfile({
          tenantId: input.tenantId,
          channel: normalized.channel,
          identifier: normalized.identifier,
          name: name!,
          locale: "en-NG",
          createdAt: verifiedAt,
        });
      }
      const tokens=await issueTokens(
        Object.freeze({ tenantId: profile.tenantId, userId: profile.userId, profile }),
        isNewUser,
      );
      if(isNewUser && profile.email && normalized.channel==="email") {
        // Delivery failure must not undo a completed account/session. Resend
        // deduplicates the stable account key; no welcome on ordinary logins.
        await input.emailDelivery?.sendWelcome?.({identifier:profile.email,name:profile.name,
          ...(profile.username?{username:profile.username}:{}),userId:profile.userId}).catch(()=>undefined);
      }
      return tokens;
    },

    async accountStatus(request) {
      let normalized;
      try {
        normalized = normalizePlatformAuthIdentifier({ phone: request.phone });
      } catch {
        throw new CustomerAuthError("VALIDATION_FAILED", 400);
      }
      const deviceId = assertDeviceId(request.deviceId);
      const observedAt = now();
      const profile = await input.repository.resolveProfile({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        observedAt,
      });
      if (!profile) return Object.freeze({ registered: false, deviceKnown: false });
      const deviceKnown = await input.repository.isDeviceKnown({
        tenantId: input.tenantId,
        userId: profile.userId,
        deviceId,
      });
      return Object.freeze({ registered: true, deviceKnown });
    },

    async deviceRestore(request) {
      // Recognizing an installation UUID does not prove possession of a secret.
      // Existing clients fall back to the password screen on this 401.
      assertDeviceId(request.deviceId);
      throw new CustomerAuthError("PASSWORD_REQUIRED",401);
    },

    async passwordVerify(request) {
      let normalized;
      try {
        normalized = normalizePlatformAuthIdentifier({ phone: request.phone });
      } catch {
        throw new CustomerAuthError("VALIDATION_FAILED", 400);
      }
      const deviceId = assertDeviceId(request.deviceId);
      const password = assertPassword(request.password);
      const at = now();
      const profile = await input.repository.resolveProfile({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        observedAt: at,
      });
      if (!profile) throw new CustomerAuthError("ACCOUNT_NOT_FOUND", 404);
      const passwordHash = hashDevicePassword({
        pepper: input.otpPepper,
        tenantId: input.tenantId,
        userId: profile.userId,
        password,
      });
      const result = await input.repository.verifyPasswordCredential({
        tenantId: input.tenantId,
        userId: profile.userId,
        passwordHash,
        at,
      });
      if (result === "missing") throw new CustomerAuthError("PASSWORD_NOT_SET", 409);
      if (result === "locked") {
        await input.repository.recordAuthEvent?.({
          tenantId:input.tenantId,userId:profile.userId,action:"password_locked",at,
        });
        throw new CustomerAuthError("PASSWORD_LOCKED", 429);
      }
      if (result !== "accepted") {
        await input.repository.recordAuthEvent?.({tenantId:input.tenantId,userId:profile.userId,action:"password_failed",at});
        throw new CustomerAuthError("PASSWORD_INVALID",400);
      }
      await input.repository.recordAuthEvent?.({tenantId:input.tenantId,userId:profile.userId,action:"password_accepted",at});
      const known=await input.repository.isDeviceKnown({
        tenantId:input.tenantId,userId:profile.userId,deviceId,
      });
      await input.repository.registerDevice({
        tenantId: input.tenantId,
        userId: profile.userId,
        deviceId,
        at,
      });
      const tokens=await issueTokens(
        Object.freeze({ tenantId: profile.tenantId, userId: profile.userId, profile }),
        false,
        deviceId,
      );
      if(!known) {
        await input.repository.recordAuthEvent?.({
          tenantId:input.tenantId,userId:profile.userId,action:"new_device_signin",at,
        }).catch(()=>undefined);
        if(profile.email) {
          await input.emailDelivery?.sendSecurityAlert?.({identifier:profile.email,at})
            .catch(()=>undefined);
        }
      }
      return tokens;
    },

    async passwordSetup(request) {
      let normalized;
      try {
        normalized = normalizePlatformAuthIdentifier({ phone: request.phone });
      } catch {
        throw new CustomerAuthError("VALIDATION_FAILED", 400);
      }
      const deviceId = assertDeviceId(request.deviceId);
      const password = assertPassword(request.password);
      const name = request.name.trim();
      if (!name || name.length > 160) throw new CustomerAuthError("VALIDATION_FAILED", 400);
      // Validate the optional address, but do not bind it to a login identity.
      // Email linking requires explicit possession proof after registration.
      if (request.email !== undefined) {
        try { normalizePlatformAuthIdentifier({email:request.email}); }
        catch { throw new CustomerAuthError("VALIDATION_FAILED",400); }
      }
      const createdAt = now();
      const existing = await input.repository.resolveProfile({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        observedAt: createdAt,
      });
      if (existing) throw new CustomerAuthError("ACCOUNT_EXISTS", 409);
      let profile = await input.repository.createProfile({
        tenantId: input.tenantId,
        channel: normalized.channel,
        identifier: normalized.identifier,
        name,
        locale: "en-NG",
        createdAt,
      });
      await input.repository.setPasswordCredential({
        tenantId: input.tenantId,
        userId: profile.userId,
        passwordHash: hashDevicePassword({
          pepper: input.otpPepper,
          tenantId: input.tenantId,
          userId: profile.userId,
          password,
        }),
        createdAt,
      });
      // An email typed during phone registration is NOT proof of possession.
      // Never grant it a login identity until its OTP is consumed via
      // /v1/auth/security/email/confirm by this authenticated account.
      await input.repository.registerDevice({
        tenantId: input.tenantId,
        userId: profile.userId,
        deviceId,
        at: createdAt,
      });
      return issueTokens(
        Object.freeze({ tenantId: profile.tenantId, userId: profile.userId, profile }),
        true,
        deviceId,
      );
    },

    async refresh(request) {
      let refreshHash: string;
      try {
        refreshHash = hashPlatformSessionToken(request.refreshToken);
      } catch {
        throw new CustomerAuthError("SESSION_NOT_FOUND", 401);
      }
      const rotatedAt = now();
      const accessToken = mintPlatformSessionToken("access");
      const refreshToken = mintPlatformSessionToken("refresh");
      const identity = await input.repository.rotateRefresh({
        refreshHash,
        nextAccessHash: hashPlatformSessionToken(accessToken),
        nextRefreshHash: hashPlatformSessionToken(refreshToken),
        accessExpiresAt: plusSeconds(rotatedAt, accessTtlSeconds),
        refreshExpiresAt: plusSeconds(rotatedAt, refreshTtlSeconds),
        rotatedAt,
      });
      if (!identity) throw new CustomerAuthError("SESSION_NOT_FOUND", 401);
      return Object.freeze({
        accessToken,
        refreshToken,
        accessExpiresIn: accessTtlSeconds,
        user: authUser(identity.profile, false),
      });
    },

    async requestPasswordRecovery(request) {
      let normalized;
      try {normalized=normalizePlatformAuthIdentifier({phone:request.phone});}
      catch {throw new CustomerAuthError("VALIDATION_FAILED",400);}
      if(!input.smsDelivery)throw new CustomerAuthError("RECOVERY_CHANNEL_UNAVAILABLE",503);
      const profile=await input.repository.resolveProfile({
        tenantId:input.tenantId,channel:"sms",identifier:normalized.identifier,observedAt:now(),
      });
      if(!profile)throw new CustomerAuthError("ACCOUNT_NOT_FOUND",404);
      const response=await this.sendOtp({phone:normalized.identifier});
      return {resendInSeconds:response.resendInSeconds};
    },
    async completePasswordRecovery(request) {
      let normalized;
      try {normalized=normalizePlatformAuthIdentifier({phone:request.phone});}
      catch {throw new CustomerAuthError("VALIDATION_FAILED",400);}
      if(!input.smsDelivery)throw new CustomerAuthError("RECOVERY_CHANNEL_UNAVAILABLE",503);
      const password=assertPassword(request.password);
      if(!/^\d{6}$/u.test(request.code))throw new CustomerAuthError("OTP_INVALID",400);
      const at=now();
      const profile=await input.repository.resolveProfile({
        tenantId:input.tenantId,channel:"sms",identifier:normalized.identifier,observedAt:at,
      });
      if(!profile)throw new CustomerAuthError("ACCOUNT_NOT_FOUND",404);
      const codeHash=hashOtpCode({
        pepper:input.otpPepper,tenantId:input.tenantId,
        channel:"sms",identifier:normalized.identifier,code:request.code,
      });
      const consumed=await input.repository.consumeOtpChallenge({
        tenantId:input.tenantId,channel:"sms",identifier:normalized.identifier,
        codeHash,consumedAt:at,
      });
      if(consumed==="locked")throw new CustomerAuthError("OTP_LOCKED",429);
      if(consumed==="expired")throw new CustomerAuthError("OTP_EXPIRED",400);
      if(consumed!=="accepted")throw new CustomerAuthError("OTP_INVALID",400);
      if(!input.repository.resetPasswordCredential)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const result=await input.repository.resetPasswordCredential({
        tenantId:profile.tenantId,userId:profile.userId,at,
        passwordHash:hashDevicePassword({pepper:input.otpPepper,
          tenantId:profile.tenantId,userId:profile.userId,password}),
      });
      if(result==="reused")throw new CustomerAuthError("PASSWORD_REUSED",409);
      if(result!=="changed")throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      // No token minted by recovery. User must sign in again with new password.
      return {success:true as const};
    },

    async startEmailLink(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      let email:string;
      try {email=normalizePlatformAuthIdentifier({email:request.email}).identifier;}
      catch {throw new CustomerAuthError("VALIDATION_FAILED",400);}
      if (identity.profile.email && identity.profile.email !== email)
        throw new CustomerAuthError("EMAIL_CHANGE_UNAVAILABLE",409);
      const existing=await input.repository.resolveProfile({
        tenantId:identity.tenantId,channel:"email",identifier:email,observedAt:now(),
      });
      if(existing && existing.userId !== identity.userId)
        throw new CustomerAuthError("EMAIL_ALREADY_LINKED",409);
      const response=await this.sendOtp({email});
      return {resendInSeconds:response.resendInSeconds};
    },
    async confirmEmailLink(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      let email:string;
      try {email=normalizePlatformAuthIdentifier({email:request.email}).identifier;}
      catch {throw new CustomerAuthError("VALIDATION_FAILED",400);}
      if (identity.profile.email && identity.profile.email !== email)
        throw new CustomerAuthError("EMAIL_CHANGE_UNAVAILABLE",409);
      if(!/^\d{6}$/u.test(request.code))
        throw new CustomerAuthError("OTP_INVALID",400);
      const at=now();
      const codeHash=hashOtpCode({pepper:input.otpPepper,
        tenantId:identity.tenantId,channel:"email",identifier:email,code:request.code});
      const checked=await input.repository.consumeOtpChallenge({
        tenantId:identity.tenantId,channel:"email",identifier:email,codeHash,consumedAt:at,consume:false,
      });
      if(checked==="locked")throw new CustomerAuthError("OTP_LOCKED",429);
      if(checked!=="accepted")throw new CustomerAuthError("OTP_INVALID",400);
      const consumed=await input.repository.consumeOtpChallenge({
        tenantId:identity.tenantId,channel:"email",identifier:email,codeHash,consumedAt:at,
      });
      if(consumed!=="accepted")throw new CustomerAuthError("OTP_INVALID",400);
      try {
        const attached=await input.repository.attachIdentity({
          tenantId:identity.tenantId,userId:identity.userId,channel:"email",identifier:email,linkedAt:at,
        });
        if(!attached)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      } catch(error) {
        if(error instanceof Error && error.message==="auth.identity_taken")
          throw new CustomerAuthError("EMAIL_ALREADY_LINKED",409);
        if(error instanceof Error && error.message==="auth.email_change_requires_recovery")
          throw new CustomerAuthError("EMAIL_CHANGE_UNAVAILABLE",409);
        throw error;
      }
      return {email};
    },

    async authorizeSensitiveMutation(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      if(!input.repository.readAccountState)
        throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const state=await input.repository.readAccountState({
        tenantId:identity.tenantId,userId:identity.userId,at:now(),
      });
      if(state==="suspended")throw new CustomerAuthError("ACCOUNT_SUSPENDED",403);
      if(state==="restricted")throw new CustomerAuthError("ACCOUNT_RESTRICTED",403);
      if(state==="recovery")throw new CustomerAuthError("ACCOUNT_RECOVERY_HOLD",403);
    },

    async beginWithdrawalStepUp(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      const fingerprint=withdrawalFingerprint(request);
      const email=identity.profile.email;
      if(!email || !input.emailDelivery)throw new CustomerAuthError("STEP_UP_EMAIL_REQUIRED",409);
      const key=stepUpChallengeKey(identity.userId,fingerprint);
      const code=createOtpCode();
      const at=now();
      const codeHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:"email",identifier:key,code});
      try {
        await input.repository.putOtpChallenge({tenantId:identity.tenantId,
          channel:"email",identifier:key,codeHash,createdAt:at,
          expiresAt:plusSeconds(at,otpTtlSeconds),resendAfter:plusSeconds(at,resendSeconds),maxAttempts:5});
      } catch(error) {
        if(error instanceof Error && error.message==="auth.otp.cooldown")
          throw new CustomerAuthError("OTP_RATE_LIMITED",429);
        throw error;
      }
      try { await input.emailDelivery.send({identifier:email,code}); }
      catch {
        await input.repository.cancelOtpChallenge({tenantId:identity.tenantId,
          channel:"email",identifier:key,codeHash}).catch(()=>undefined);
        throw new CustomerAuthError("OTP_DELIVERY_UNAVAILABLE",503);
      }
      return {delivery:"email" as const,resendInSeconds:resendSeconds};
    },
    async confirmWithdrawalStepUp(request) {
      const {identity,accessHash}=await requireSession(request.authorizationHeader);
      const fingerprint=withdrawalFingerprint(request);
      if(!/^\d{6}$/u.test(request.code))throw new CustomerAuthError("OTP_INVALID",400);
      if(!identity.profile.email || !input.emailDelivery)
        throw new CustomerAuthError("STEP_UP_EMAIL_REQUIRED",409);
      const identifier=stepUpChallengeKey(identity.userId,fingerprint);
      const at=now();
      const codeHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:"email",identifier,code:request.code});
      if(!input.repository.issueActionGrant)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const status=await input.repository.consumeOtpChallenge({
        tenantId:identity.tenantId,channel:"email",identifier,codeHash,consumedAt:at});
      if(status!=="accepted")throw new CustomerAuthError(status==="locked"?"OTP_LOCKED":
        status==="expired"?"OTP_EXPIRED":"OTP_INVALID",status==="locked"?429:400);
      const stepUpToken="stp_"+randomBytes(32).toString("base64url");
      await input.repository.issueActionGrant({accessHash,
        grantHash:createHash("sha256").update(stepUpToken).digest("hex"),
        operation:"crypto_withdrawal",fingerprint,issuedAt:at,expiresAt:plusSeconds(at,300)});
      return {stepUpToken,expiresInSeconds:300};
    },
    async consumeWithdrawalStepUp(request) {
      const {accessHash}=await requireSession(request.authorizationHeader);
      const fingerprint=withdrawalFingerprint(request);
      if(!request.stepUpToken || !/^stp_[A-Za-z0-9_-]{43}$/u.test(request.stepUpToken))
        throw new CustomerAuthError("STEP_UP_REQUIRED",403);
      if(!input.repository.consumeActionGrant)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const valid=await input.repository.consumeActionGrant({
        accessHash,grantHash:createHash("sha256").update(request.stepUpToken).digest("hex"),
        operation:"crypto_withdrawal",fingerprint,at:now()});
      if(!valid)throw new CustomerAuthError("STEP_UP_REQUIRED",403);
    },

    async beginBankStepUp(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      const fingerprint=bankFingerprint(request.bankCode,request.accountNumber);
      if(!identity.profile.email||!input.emailDelivery)
        throw new CustomerAuthError("STEP_UP_EMAIL_REQUIRED",409);
      const identifier=stepUpChallengeKey(identity.userId,fingerprint);
      const code=createOtpCode(),at=now();
      const codeHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:"email",identifier,code});
      try{
        await input.repository.putOtpChallenge({
          tenantId:identity.tenantId,channel:"email",identifier,codeHash,
          createdAt:at,expiresAt:plusSeconds(at,600),
          resendAfter:plusSeconds(at,60),maxAttempts:5,
        });
      }catch(error){
        if(error instanceof Error&&error.message==="auth.otp.cooldown")
          throw new CustomerAuthError("OTP_RATE_LIMITED",429);
        throw error;
      }
      try{await input.emailDelivery.send({identifier:identity.profile.email,code});}
      catch{
        await input.repository.cancelOtpChallenge({
          tenantId:identity.tenantId,channel:"email",identifier,codeHash,
        }).catch(()=>undefined);
        throw new CustomerAuthError("OTP_DELIVERY_UNAVAILABLE",503);
      }
      return {resendInSeconds:60};
    },
    async confirmBankStepUp(request) {
      const {identity,accessHash}=await requireSession(request.authorizationHeader);
      const fingerprint=bankFingerprint(request.bankCode,request.accountNumber);
      if(!identity.profile.email||!input.emailDelivery)
        throw new CustomerAuthError("STEP_UP_EMAIL_REQUIRED",409);
      if(!/^\d{6}$/u.test(request.code))throw new CustomerAuthError("OTP_INVALID",400);
      if(!input.repository.issueActionGrant)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const identifier=stepUpChallengeKey(identity.userId,fingerprint),at=now();
      const codeHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:"email",identifier,code:request.code});
      const result=await input.repository.consumeOtpChallenge({
        tenantId:identity.tenantId,channel:"email",identifier,codeHash,consumedAt:at,
      });
      if(result!=="accepted")throw new CustomerAuthError(result==="locked"?
        "OTP_LOCKED":"OTP_INVALID",result==="locked"?429:400);
      const stepUpToken="stp_"+randomBytes(32).toString("base64url");
      await input.repository.issueActionGrant({
        accessHash,operation:"p2p_bank_method",fingerprint,
        grantHash:createHash("sha256").update(stepUpToken).digest("hex"),
        issuedAt:at,expiresAt:plusSeconds(at,300),
      });
      return {stepUpToken};
    },
    async consumeBankStepUp(request) {
      const {accessHash}=await requireSession(request.authorizationHeader);
      const fingerprint=bankFingerprint(request.bankCode,request.accountNumber);
      if(!request.stepUpToken || !/^stp_[A-Za-z0-9_-]{43}$/u.test(request.stepUpToken))
        throw new CustomerAuthError("STEP_UP_REQUIRED",403);
      if(!input.repository.consumeActionGrant)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const valid=await input.repository.consumeActionGrant({
        accessHash,operation:"p2p_bank_method",fingerprint,
        grantHash:createHash("sha256").update(request.stepUpToken).digest("hex"),at:now(),
      });
      if(!valid)throw new CustomerAuthError("STEP_UP_REQUIRED",403);
    },

    async beginContactChange(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      if(request.channel!=="email" && request.channel!=="sms")
        throw new CustomerAuthError("VALIDATION_FAILED",400);
      let destination:string;
      try {
        const id=normalizePlatformAuthIdentifier(request.channel==="email"?
          {email:request.nextIdentifier}:{phone:request.nextIdentifier});
        destination=id.identifier;
      }catch{throw new CustomerAuthError("VALIDATION_FAILED",400);}
      const current=request.channel==="email"?identity.profile.email:identity.profile.phone;
      const sender=request.channel==="email"?input.emailDelivery:input.smsDelivery;
      if(!current)throw new CustomerAuthError("CONTACT_NOT_LINKED",409);
      if(!sender)throw new CustomerAuthError("OTP_CHANNEL_UNAVAILABLE",503);
      if(current===destination)throw new CustomerAuthError("CONTACT_UNCHANGED",409);
      const existing=await input.repository.resolveProfile({
        tenantId:identity.tenantId,channel:request.channel,identifier:destination,observedAt:now(),
      });
      if(existing)throw new CustomerAuthError("CONTACT_ALREADY_USED",409);
      const keys=changeKeys(identity.userId,request.channel,current,destination);
      const at=now(),oldCode=createOtpCode(),newCode=createOtpCode();
      const oldHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:request.channel,identifier:keys.oldKey,code:oldCode});
      const newHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:request.channel,identifier:keys.newKey,code:newCode});
      const common={tenantId:identity.tenantId,channel:request.channel,
        createdAt:at,expiresAt:plusSeconds(at,600),
        resendAfter:plusSeconds(at,60),maxAttempts:5};
      try{
        await input.repository.putOtpChallenge({...common,identifier:keys.oldKey,codeHash:oldHash});
        await input.repository.putOtpChallenge({...common,identifier:keys.newKey,codeHash:newHash});
      }catch(error){
        if(error instanceof Error && error.message==="auth.otp.cooldown")
          throw new CustomerAuthError("OTP_RATE_LIMITED",429);
        throw error;
      }
      try{
        await sender.send({identifier:current,code:oldCode});
        await sender.send({identifier:destination,code:newCode});
      }catch{
        await Promise.all([
          input.repository.cancelOtpChallenge({tenantId:identity.tenantId,
            channel:request.channel,identifier:keys.oldKey,codeHash:oldHash}),
          input.repository.cancelOtpChallenge({tenantId:identity.tenantId,
            channel:request.channel,identifier:keys.newKey,codeHash:newHash}),
        ].map(p=>p.catch(()=>undefined)));
        throw new CustomerAuthError("OTP_DELIVERY_UNAVAILABLE",503);
      }
      return {resendInSeconds:60};
    },
    async completeContactChange(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      if(request.channel!=="email" && request.channel!=="sms")
        throw new CustomerAuthError("VALIDATION_FAILED",400);
      let destination:string;
      try{
        destination=normalizePlatformAuthIdentifier(request.channel==="email"?
          {email:request.nextIdentifier}:{phone:request.nextIdentifier}).identifier;
      }catch{throw new CustomerAuthError("VALIDATION_FAILED",400);}
      if(!/^\d{6}$/u.test(request.oldCode) || !/^\d{6}$/u.test(request.newCode))
        throw new CustomerAuthError("OTP_INVALID",400);
      const current=request.channel==="email"?identity.profile.email:identity.profile.phone;
      if(!current || current===destination)throw new CustomerAuthError("CONTACT_UNCHANGED",409);
      const keys=changeKeys(identity.userId,request.channel,current,destination);
      const at=now();
      const oldHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:request.channel,identifier:keys.oldKey,code:request.oldCode});
      const newHash=hashOtpCode({pepper:input.otpPepper,tenantId:identity.tenantId,
        channel:request.channel,identifier:keys.newKey,code:request.newCode});
      for(const [key,hash] of [[keys.oldKey,oldHash],[keys.newKey,newHash]] as const){
        const result=await input.repository.consumeOtpChallenge({
          tenantId:identity.tenantId,channel:request.channel,identifier:key,
          codeHash:hash,consumedAt:at,consume:false,
        });
        if(result!=="accepted")throw new CustomerAuthError(
          result==="locked"?"OTP_LOCKED":result==="expired"?"OTP_EXPIRED":"OTP_INVALID",
          result==="locked"?429:400,
        );
      }
      if(!input.repository.replaceIdentity)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      for(const [key,hash] of [[keys.oldKey,oldHash],[keys.newKey,newHash]] as const){
        const result=await input.repository.consumeOtpChallenge({
          tenantId:identity.tenantId,channel:request.channel,identifier:key,
          codeHash:hash,consumedAt:at,
        });
        if(result!=="accepted")throw new CustomerAuthError("OTP_INVALID",400);
      }
      try{
        await input.repository.replaceIdentity({
          tenantId:identity.tenantId,userId:identity.userId,channel:request.channel,
          previousIdentifier:current,nextIdentifier:destination,at,
        });
      }catch(error){
        if(error instanceof Error && error.message==="auth.identity_taken")
          throw new CustomerAuthError("CONTACT_ALREADY_USED",409);
        if(error instanceof Error && error.message==="auth.contact_changed_since_verification")
          throw new CustomerAuthError("CONTACT_CHANGED_RETRY",409);
        throw error;
      }
      return {success:true as const};
    },

    async sessions(request) {
      const {identity,accessHash}=await requireSession(request.authorizationHeader);
      if(!input.repository.listSessions)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      return input.repository.listSessions({tenantId:identity.tenantId,userId:identity.userId,accessHash,at:now()});
    },
    async revokeSession(request) {
      if(!/^[0-9a-f]{8}-[0-9a-f]{4}-[1-8][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/iu.test(request.sessionId))
        throw new CustomerAuthError("VALIDATION_FAILED",400);
      const {identity}=await requireSession(request.authorizationHeader);
      if(!input.repository.revokeSession)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      const revoked=await input.repository.revokeSession({
        tenantId:identity.tenantId,userId:identity.userId,sessionId:request.sessionId,revokedAt:now(),
      });
      if(!revoked)throw new CustomerAuthError("SESSION_NOT_FOUND",404);
      await input.repository.recordAuthEvent?.({tenantId:identity.tenantId,userId:identity.userId,action:"session_revoked",at:now()});
    },
    async logoutAll(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      if(!input.repository.revokeAllSessions)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      await input.repository.revokeAllSessions({tenantId:identity.tenantId,userId:identity.userId,revokedAt:now()});
      await input.repository.recordAuthEvent?.({tenantId:identity.tenantId,userId:identity.userId,action:"logout_all",at:now()});
    },
    async loginHistory(request) {
      const {identity}=await requireSession(request.authorizationHeader);
      if(!input.repository.listAuthEvents)throw new CustomerAuthError("AUTH_UNAVAILABLE",503);
      return input.repository.listAuthEvents({tenantId:identity.tenantId,userId:identity.userId,limit:50});
    },
    async logout(request) {
      const token = bearer(request.authorizationHeader);
      if (!token) return;
      try {
        await input.repository.revokeAccess({
          accessHash: hashPlatformSessionToken(token),
          revokedAt: now(),
        });
      } catch {
        return;
      }
    },
  });
}

export function createPlatformCustomerSessionAuthorizer(input: Readonly<{
  repository: PlatformSessionRepository;
  now?: () => string;
}>): PlatformCustomerSessionAuthorizer {
  const now = input.now ?? (() => new Date().toISOString());
  return Object.freeze({
    async authorize(request: Parameters<PlatformCustomerSessionAuthorizer["authorize"]>[0]) {
      const token = bearer(request.authorizationHeader);
      if (!token) throw new CustomerAuthError("UNAUTHORIZED", 401);
      let accessHash: string;
      try {
        accessHash = hashPlatformSessionToken(token);
      } catch {
        throw new CustomerAuthError("UNAUTHORIZED", 401);
      }
      let identity: PlatformSessionIdentity | null;
      try {
        identity = await input.repository.resolveAccess({ accessHash, at: now() });
      } catch {
        throw new CustomerAuthError("AUTH_UNAVAILABLE", 503);
      }
      if (!identity) throw new CustomerAuthError("UNAUTHORIZED", 401);
      return identity;
    },
  });
}

export function createPlatformSessionFinancialAuthorizer(input: Readonly<{
  repository: PlatformSessionRepository;
  now?: () => string;
}>): PlatformFinancialAuthorizer {
  const now = input.now ?? (() => new Date().toISOString());
  return Object.freeze({
    async authorize(request: Parameters<PlatformFinancialAuthorizer["authorize"]>[0]) {
      const token = bearer(request.authorizationHeader);
      if (!token) throw new Error("financial.auth.unauthorized");
      let accessHash: string;
      try {
        accessHash = hashPlatformSessionToken(token);
      } catch {
        throw new Error("financial.auth.unauthorized");
      }
      const identity = await input.repository.resolveAccess({ accessHash, at: now() });
      if (!identity) throw new Error("financial.auth.unauthorized");
      return Object.freeze({ tenantId: identity.tenantId, userId: identity.userId });
    },
  });
}

export function createResendOtpDelivery(input: Readonly<{
  apiKey: string;
  from: string;
  fetchImpl?: typeof fetch;
  publicBaseUrl?: string;
}>): OtpDelivery {
  const apiKey = input.apiKey.trim();
  const from = input.from.trim();
  if (!apiKey || !from) throw new TypeError("Resend OTP delivery configuration is incomplete");
  const fetchImpl = input.fetchImpl ?? fetch;
  return Object.freeze({
    async send(request: Parameters<OtpDelivery["send"]>[0]) {
      const message = renderMasanawaOtpEmail(request.code,input.publicBaseUrl);
      const response = await fetchImpl("https://api.resend.com/emails", {
        signal: AbortSignal.timeout(8000),
        method: "POST",
        headers: {
          authorization: `Bearer ${apiKey}`,
          "content-type": "application/json",
          accept: "application/json",
        },
        body: JSON.stringify({
          from,
          to: [request.identifier],
          subject: message.subject,
          text: message.text,
          html: message.html,
          tags: [{ name: "category", value: "authentication_otp" }],
        }),
      });
      if (!response.ok) throw new Error("auth.resend_delivery_failed");
    },
    async sendSecurityAlert(request: Readonly<{identifier:string;at:string}>) {
      const response=await fetchImpl("https://api.resend.com/emails",{
        method:"POST",signal:AbortSignal.timeout(8000),
        headers:{authorization:`Bearer ${apiKey}`,"content-type":"application/json"},
        body:JSON.stringify({
          from,to:[request.identifier],subject:"Masanawa security notice",
          text:`A sign-in to your Masanawa account used a new device at ${request.at}. If this was not you, open Account Security and sign out of all devices.`,
          tags:[{name:"category",value:"account_security"}],
        }),
      });
      if(!response.ok)throw new Error("auth.security_notice_failed");
    },
    async sendWelcome(request: Readonly<{identifier:string;name:string;username?:string;userId:string}>) {
      const message=renderMasanawaWelcomeEmail(request,input.publicBaseUrl);
      const response=await fetchImpl("https://api.resend.com/emails",{
        method:"POST",signal:AbortSignal.timeout(5000),
        headers:{authorization:`Bearer ${apiKey}`,"content-type":"application/json",
          "idempotency-key":`masanawa-welcome-${request.userId}`},
        body:JSON.stringify({from,to:[request.identifier],...message,tags:[{name:"category",value:"account_welcome"}]}),
      });
      if(!response.ok)throw new Error("auth.welcome_delivery_failed");
    },
  });
}

export function createHttpSmsOtpDelivery(input: Readonly<{
  endpoint: string;
  bearerToken: string;
  fetchImpl?: typeof fetch;
}>): OtpDelivery {
  const endpoint = new URL(input.endpoint);
  if (endpoint.protocol !== "https:") throw new TypeError("SMS OTP endpoint must use HTTPS");
  const token = input.bearerToken.trim();
  if (!token) throw new TypeError("SMS OTP bearer token is required");
  const fetchImpl = input.fetchImpl ?? fetch;
  return Object.freeze({
    async send(request: Parameters<OtpDelivery["send"]>[0]) {
      const response = await fetchImpl(endpoint, {
        method: "POST",
        headers: {
          authorization: `Bearer ${token}`,
          "content-type": "application/json",
          accept: "application/json",
        },
        body: JSON.stringify({
          to: request.identifier,
          message: `Your Masanawa sign-in code is ${request.code}. It expires in 10 minutes.`,
        }),
      });
      if (!response.ok) throw new Error("auth.sms_delivery_failed");
    },
  });
}


export function createPlatformCustomerAuthorizers(input: Readonly<{
  sessions: PlatformCustomerSessionAuthorizer;
  presentations: AgentPresentationRepository;
  skillAssignments: CharacterSkillAssignmentRepository;
  relationships: UserRelationshipReader;
  relationshipProvisioner: UserRelationshipProvisioner;
  platformProfiles: PlatformAgentProfileRepository;
  policyRevision: string;
  publicTwinAdmission?: {
    canChat(input: Readonly<{
      tenantId: TenantId;
      userId: UserId;
      characterId: CharacterId;
    }>): Promise<boolean>;
    canContinue?(input: Readonly<{
      tenantId: TenantId;
      userId: UserId;
      characterId: CharacterId;
    }>): Promise<boolean>;
  };
}>): Readonly<{
  directory: AgentDirectoryAuthorizer;
  conversation: AgentConversationAuthorizer;
  creator: CreatorCloneAuthorizer;
  commerce: CommerceUserAuthorizer;
}> {
  const policyRevision = input.policyRevision.trim();
  if (!policyRevision || policyRevision.length > 160) {
    throw new TypeError("Platform policy revision is invalid");
  }

  async function session(authorizationHeader: string | undefined) {
    try {
      return await input.sessions.authorize({ authorizationHeader });
    } catch {
      throw new CustomerAuthError("UNAUTHORIZED", 401);
    }
  }

  async function admittedCharacterIds(
    tenantId: Parameters<UserRelationshipReader["listForUser"]>[0]["tenantId"],
    userId: Parameters<UserRelationshipReader["listForUser"]>[0]["userId"],
  ): Promise<readonly CharacterId[]> {
    const [relationships, platformAgents] = await Promise.all([
      input.relationships.listForUser({ tenantId, userId }),
      input.platformProfiles.listPlatformAgents
        ? input.platformProfiles.listPlatformAgents({ tenantId })
        : input.platformProfiles.listSupportAgents({ tenantId }),
    ]);
    const characterIds = new Set<CharacterId>();
    for (const relationship of relationships) {
      characterIds.add(relationship.characterId);
    }
    for (const profile of platformAgents) {
      characterIds.add(profile.characterId);
    }
    return Object.freeze([...characterIds]);
  }

  const directory: AgentDirectoryAuthorizer = Object.freeze({
    async authorize(request: Parameters<AgentDirectoryAuthorizer["authorize"]>[0]) {
      const identity = await session(request.authorizationHeader);
      return Object.freeze({
        tenantId: identity.tenantId,
        userId: identity.userId,
        characterIds: await admittedCharacterIds(
          identity.tenantId,
          identity.userId,
        ),
      });
    },
  });

  const conversation: AgentConversationAuthorizer = Object.freeze({
    async authorize(request: Parameters<AgentConversationAuthorizer["authorize"]>[0]): Promise<AgentConversationAdmission> {
      const identity = await session(request.authorizationHeader);
      const characterId = parseCanonicalId("character", request.characterId);
      const presentation = await input.presentations.readForCharacter({
        tenantId: identity.tenantId,
        characterId,
      });
      if (!presentation?.visibleInUserApp) {
        throw new CustomerAuthError("FORBIDDEN", 403);
      }

      let relationship = await input.relationships.readForUserCharacter({
        tenantId: identity.tenantId,
        userId: identity.userId,
        characterId,
      });
      if (!relationship) {
        const platform = await input.platformProfiles.readForCharacter({
          tenantId: identity.tenantId,
          characterId,
        });
        // Every canonical platform-owned Masana may accept a new user.
        // Specialist educators are NOT support agents, but their official
        // profile is enough to establish the normal relationship.
        if (!platform) {
          const publicTwinAllowed =
            input.publicTwinAdmission
              ? await input.publicTwinAdmission.canChat({
                  tenantId: identity.tenantId,
                  userId: identity.userId,
                  characterId,
                })
              : false;
          if (!publicTwinAllowed) {
            throw new CustomerAuthError("FORBIDDEN", 403);
          }
        }
        relationship = await input.relationshipProvisioner.getOrCreateForUserCharacter({
          tenantId: identity.tenantId,
          userId: identity.userId,
          characterId,
          createdAt: nowInstant(),
        });
      }

      if (
        input.publicTwinAdmission?.canContinue &&
        !(await input.publicTwinAdmission.canContinue({
          tenantId: identity.tenantId,
          userId: identity.userId,
          characterId,
        }))
      ) {
        throw new CustomerAuthError("FORBIDDEN", 403);
      }

      const assignment = await input.skillAssignments.readForCharacter({
        tenantId: identity.tenantId,
        characterId,
      });
      const requestId = createCanonicalId("request");
      const correlationId = createCanonicalId("correlation");
      return Object.freeze({
        scope: Object.freeze({
          tenantId: identity.tenantId,
          userId: identity.userId,
          characterId,
          relationshipId: relationship.relationshipId,
        }),
        characterVersionId: presentation.characterVersionId,
        bindings: Object.freeze({
          channelSessionId: null,
          presenceSessionId: null,
          skillVersionIds: Object.freeze([...(assignment?.skillVersionIds ?? [])]),
          taskIds: Object.freeze([]),
          workflowRunIds: Object.freeze([]),
        }),
        presentation: Object.freeze({
          displayName: presentation.displayName,
          roleLabel: presentation.roleLabel,
          about: presentation.about,
        }),
        authority: createAuthorityContext({
          tenantId: identity.tenantId,
          principal: Object.freeze({
            kind: "user" as const,
            userId: identity.userId,
          }),
          scopes: Object.freeze(["mobile.production"]),
          capabilities: Object.freeze([
            "agents.session.create",
            "agents.session.read",
            "agents.session.close",
            "agents.run.create",
            "agents.run.read",
            "agents.run.finish",
          ]),
          resourceScope: Object.freeze({
            relationshipIds: Object.freeze([relationship.relationshipId]),
          }),
          policyRevision,
          approvalIds: Object.freeze([]),
          delegationChain: Object.freeze([]),
          requestId,
          correlationId,
        }),
      });
    },
  });

  const creator: CreatorCloneAuthorizer = Object.freeze({
    async authorize(request: Parameters<CreatorCloneAuthorizer["authorize"]>[0]) {
      const identity = await session(request.authorizationHeader);
      return Object.freeze({
        tenantId: identity.tenantId,
        userId: identity.userId,
      });
    },
  });

  const commerce: CommerceUserAuthorizer = Object.freeze({
    async authorize(request: Parameters<CommerceUserAuthorizer["authorize"]>[0]) {
      const identity = await session(request.authorizationHeader);
      return Object.freeze({
        tenantId: identity.tenantId,
        userId: identity.userId,
      });
    },
  });

  return Object.freeze({ directory, conversation, creator, commerce });
}
