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
            "https://cdn.mgid.com/widget.js",
            "https://cdn.adform.net/banners/ad.js",
            "https://secure.adnxs.com/adview",
            "https://cdn.triplelift.com/a.js",
            "https://sdk.hotjar.com/collector.js",
            "https://script.clarity.ms/tag/abc",
            "https://cdn.googletagservices.com/tag/js/gpt.js",
            "https://click.adsterra.com/serve"
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
            "https://bbc.com/hausa/article?ad=googleadservices.com",
            "https://images.punchng.com/photos/story.webp",
            "https://cdn.punchng.com/wp-content/themes/punch/main.js",
            "file:///internal/ads",
            "javascript:alert('ad')"
        ).forEach { url ->
            assertFalse(url, ShellArticlePrivacy.shouldBlock(url, "https://punchng.com/news"))
        }
        assertFalse(ShellArticlePrivacy.shouldBlock("https://cdn.taboola.com/first-party.js", "https://taboola.com"))
        assertTrue(ShellArticlePrivacy.cosmeticCleanupScript.contains("masanawa-reader-ad-cleanup"))
        assertTrue(ShellArticlePrivacy.cosmeticCleanupScript.contains("MutationObserver"))
        assertFalse(ShellArticlePrivacy.cosmeticCleanupScript.contains("document.body.innerHTML"))
        assertTrue(ShellArticlePrivacy.shouldBlock(
            "https://punchng.com/wp-content/plugins/advanced-ads/assets/ad.js",
            "https://punchng.com/news"
        ))
        assertFalse(ShellArticlePrivacy.shouldBlock(
            "https://punchng.com/wp-content/uploads/2026/11/editorial.jpg",
            "https://punchng.com/news"
        ))
    }
}
