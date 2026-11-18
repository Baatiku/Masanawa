package ng.unigeria.unigeria.shell

import org.junit.Assert.*
import org.junit.Test

class ShellDeepLinksTest {
    @Test fun chatAndWalletNavigateToWebRoutes() {
        assertEquals("https://app.masanawa.com/?profile=character_12345678", ShellDeepLinks.route("masanawa://chat/character_12345678"))
        assertEquals("https://app.masanawa.com/?profile=character_12345678", ShellDeepLinks.route("masanawa://chat?persona=character_12345678"))
        assertEquals("https://app.masanawa.com/?profile=bola-tinubu", ShellDeepLinks.route("masanawa://chat?persona=bola-tinubu"))
        assertEquals("https://app.masanawa.com/?tab=wallet", ShellDeepLinks.route("masanawa://wallet/activity"))
        assertEquals("https://app.masanawa.com/?tab=calls", ShellDeepLinks.route("masanawa://calls/history"))
        assertEquals("https://app.masanawa.com/?tab=profile", ShellDeepLinks.route("masanawa://notifications"))
    }

    @Test fun rejectUnknownAndPrivilegeBearingRoutes() {
        for (url in listOf("masanawa://chat?persona=character_123&token=steal", "masanawa://wallet?send=1000",
                "masanawa://chat/../../../wallet", "masanawa://chat/character_123#secret",
                "masanawa://chat@evil.test/character_123", "intent://wallet", "https://app.masanawa.com.evil.test/")) {
            assertNull(url, ShellDeepLinks.route(url))
        }
    }
}
