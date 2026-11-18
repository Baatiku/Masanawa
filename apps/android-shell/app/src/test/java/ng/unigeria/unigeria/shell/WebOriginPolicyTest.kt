package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WebOriginPolicyTest {
    @Test fun productionHttpsIsAllowed() {
        assertTrue(WebOriginPolicy.isTrusted("https://app.masanawa.com/"))
        assertTrue(WebOriginPolicy.isTrusted("https://app.masanawa.com/chats?selected=123"))
        assertTrue(WebOriginPolicy.isTrusted("https://app.masanawa.com:443/wallet"))
    }

    @Test fun lookalikesAreRejected() {
        listOf(
            "http://app.masanawa.com/", "https://app.masanawa.com.evil.com/",
            "https://evil.com/?next=app.masanawa.com", "https://app.masanawa.com:444/",
            "https://user@app.masanawa.com/", "javascript:alert(1)",
            "file:///etc/passwd", "https://masanawa.com/", "",
        ).forEach { assertFalse("Unexpected trust: $it", WebOriginPolicy.isTrusted(it)) }
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
        assertEquals("https://app.masanawa.com/calls", WebOriginPolicy.safeLaunchUrl("https://app.masanawa.com/calls"))
    }
}
