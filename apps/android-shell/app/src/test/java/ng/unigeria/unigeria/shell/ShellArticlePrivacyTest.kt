package ng.unigeria.unigeria.shell

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ShellArticlePrivacyTest {
    @Test fun blocksKnownAdvertisingSubresources() {
        listOf(
            "https://securepubads.g.doubleclick.net/tag/js/gpt.js",
            "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js",
            "https://cdn.taboola.com/libtrc/publisher/loader.js",
            "https://widgets.outbrain.com/outbrain.js",
            "https://google-analytics.com/collect",
            "https://cdn.mgid.com/widget.js"
        ).forEach { url ->
            assertTrue(url, ShellArticlePrivacy.shouldBlock(url, "https://punchng.com/news"))
        }
    }

    @Test fun preservesPublisherAssetsAndUnrelatedSites() {
        listOf(
            "https://punchng.com/assets/site.js",
            "https://cdn.punchng.com/images/cover.jpg",
            "https://www.bbc.com/hausa/articles/real-story",
            "https://news.example.com/story?redirect=doubleclick.net",
            "https://notdoubleclick.net/script.js",
            "file:///internal/ads",
            "javascript:alert('ad')"
        ).forEach { url ->
            assertFalse(url, ShellArticlePrivacy.shouldBlock(url, "https://punchng.com/news"))
        }
        assertFalse(ShellArticlePrivacy.shouldBlock("https://cdn.taboola.com/first-party.js", "https://taboola.com"))
        assertTrue(ShellArticlePrivacy.cosmeticCleanupScript.contains("masanawa-reader-ad-cleanup"))
    }
}
