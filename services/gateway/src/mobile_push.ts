import type {
  MobilePushRepository,
} from "@masanawa/agents";
import type { AgentConversationAuthorizer } from "./agent_conversation_contract.js";
import { parseCanonicalId } from "@masanawa/contracts";

export interface MobilePushRegistrationService {
  register(input: {
    readonly authorizationHeader: string | undefined;
    readonly characterId: string;
    readonly installationId: string;
    readonly platform: "android" | "ios";
    readonly token: string;
  }): Promise<{ readonly registered: true }>;
  unregister(input: {
    readonly authorizationHeader: string | undefined;
    readonly characterId: string;
    readonly installationId: string;
  }): Promise<{ readonly unregistered: true }>;
}

export function createMobilePushRegistrationService(input: {
  readonly authorizer: AgentConversationAuthorizer;
  readonly repository: MobilePushRepository;
}): MobilePushRegistrationService {
  const service: MobilePushRegistrationService = {
    async register(request) {
      const characterId = parseCanonicalId("character", request.characterId);
      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId,
      });
      await input.repository.register({
        tenantId: admission.scope.tenantId,
        userId: admission.scope.userId,
        installationId: request.installationId,
        platform: request.platform,
        token: request.token,
      });
      return Object.freeze({ registered: true as const });
    },
    async unregister(request) {
      const characterId = parseCanonicalId("character", request.characterId);
      const admission = await input.authorizer.authorize({
        authorizationHeader: request.authorizationHeader,
        characterId,
      });
      await input.repository.unregister({
        tenantId: admission.scope.tenantId,
        userId: admission.scope.userId,
        installationId: request.installationId,
      });
      return Object.freeze({ unregistered: true as const });
    },
  };
  return Object.freeze(service);
}


export {createFcmPushSender,mobilePushAndroidChannel} from "@masanawa/mobile-push";
export type {MobilePushSender} from "@masanawa/mobile-push";
