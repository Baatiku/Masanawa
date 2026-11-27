package ng.unigeria.unigeria.shell

import org.junit.Assert.*
import org.junit.Test

class ShellDeepLinksTest {
    @Test fun chatAndWalletNavigateToWebRoutes() {
        assertEquals("https://app.chatmeup.online/?profile=character_12345678", ShellDeepLinks.route("masanawa://chat/character_12345678"))
        assertEquals("https://app.chatmeup.online/?profile=character_12345678", ShellDeepLinks.route("masanawa://chat?persona=character_12345678"))
        assertEquals("https://app.chatmeup.online/?profile=bola-tinubu", ShellDeepLinks.route("masanawa://chat?persona=bola-tinubu"))
        assertEquals("https://app.chatmeup.online/?tab=wallet", ShellDeepLinks.route("masanawa://wallet/activity"))
        assertEquals("https://app.chatmeup.online/?tab=calls", ShellDeepLinks.route("masanawa://calls/history"))
        assertEquals("https://app.chatmeup.online/?tab=profile", ShellDeepLinks.route("masanawa://notifications"))
        assertEquals("https://app.chatmeup.online/?tab=home", ShellDeepLinks.route("masanawa://home"))
    }

    @Test fun forumNoticesHaveOnlyTheScopedNavigationRoute() {
        assertEquals("https://app.chatmeup.online/?tab=forum", ShellDeepLinks.route("masanawa://forum"))
        assertNull(ShellDeepLinks.route("masanawa://forum?account=other"))
        assertNull(ShellDeepLinks.route("masanawa://forum/anything"))
        assertNull(ShellDeepLinks.route("masanawa://rooms"))
    }

    @Test fun oldAppLinksResolveWithoutGrantingOldOriginTrust() {
        assertEquals("https://app.chatmeup.online/?tab=calls", ShellDeepLinks.route("https://app.masanawa.com/?tab=calls"))
        assertFalse(WebOriginPolicy.isTrusted("https://app.masanawa.com/"))
        assertNull(ShellDeepLinks.route("https://app.masanawa.com.evil.test/"))
    }

    @Test fun rejectUnknownAndPrivilegeBearingRoutes() {
        for (url in listOf("masanawa://chat?persona=character_123&token=steal", "masanawa://wallet?send=1000",
                "masanawa://chat/../../../wallet", "masanawa://chat/character_123#secret",
                "masanawa://chat@evil.test/character_123", "intent://wallet", "https://app.chatmeup.online.evil.test/")) {
            assertNull(url, ShellDeepLinks.route(url))
        }
    }
}
