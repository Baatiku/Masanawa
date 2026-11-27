package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WebOriginPolicyTest {
    @Test fun productionHttpsIsAllowed() {
        assertTrue(WebOriginPolicy.isTrusted("https://app.chatmeup.online/"))
        assertTrue(WebOriginPolicy.isTrusted("https://app.chatmeup.online/chats?selected=123"))
        assertTrue(WebOriginPolicy.isTrusted("https://app.chatmeup.online:443/wallet"))
    }

    @Test fun lookalikesAreRejected() {
        listOf(
            "http://app.chatmeup.online/", "https://app.chatmeup.online.evil.com/",
            "https://evil.com/?next=app.chatmeup.online", "https://app.chatmeup.online:444/",
            "https://user@app.chatmeup.online/", "javascript:alert(1)",
            "file:///etc/passwd", "https://masanawa.com/", "",
        ).forEach { assertFalse("Unexpected trust: $it", WebOriginPolicy.isTrusted(it)) }
        assertFalse(WebOriginPolicy.isTrusted("https://app.masanawa.com/"))
        assertFalse(WebOriginPolicy.isTrusted(null))
    }

    @Test fun externalSchemesStayBounded() {
        assertTrue(WebOriginPolicy.mayOpenExternally("https://news.example.com/story"))
        assertTrue(WebOriginPolicy.mayOpenExternally("mailto:help@example.com"))
        assertTrue(WebOriginPolicy.mayOpenExternally("tel:+2348000000000"))
        listOf("intent://open", "javascript:alert(1)", "file:///x", "content://x")
            .forEach { assertFalse(WebOriginPolicy.mayOpenExternally(it)) }
    }

    @Test fun untrustedLaunchesNeverBecomeWebviewPages() {
        assertEquals(WebOriginPolicy.HOME, WebOriginPolicy.safeLaunchUrl("https://other.example/"))
        assertEquals("https://app.chatmeup.online/calls", WebOriginPolicy.safeLaunchUrl("https://app.chatmeup.online/calls"))
    }
}
