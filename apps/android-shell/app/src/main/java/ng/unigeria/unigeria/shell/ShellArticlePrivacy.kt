package ng.unigeria.unigeria.shell

import java.net.URI
import java.util.Locale

/**
 * Narrow, bundled advertising protection, applied ONLY to third-party reader
 * subresources. No proxy, remote blocklist download, publisher text filtering,
 * or injection into Masanawa's authenticated WebView.
 */
internal object ShellArticlePrivacy {
    private val adAndTrackerHosts = setOf(
        "doubleclick.net", "googlesyndication.com", "googleadservices.com",
        "adservice.google.com", "google-analytics.com", "googletagmanager.com",
        "amazon-adsystem.com", "taboola.com", "outbrain.com", "criteo.com",
        "pubmatic.com", "rubiconproject.com", "openx.net", "adnxs.com",
        "adsrvr.org", "scorecardresearch.com", "quantserve.com", "moatads.com",
        "smartadserver.com", "mgid.com", "revcontent.com", "teads.tv",
        "lijit.com", "casalemedia.com", "sharethrough.com", "indexww.com",
        "media.net", "adskeeper.com", "adskeeper.co.uk", "exoclick.com"
    )

    fun shouldBlock(resourceUrl: String?, publisherUrl: String?): Boolean {
        return try {
        val uri = URI(resourceUrl ?: "")
        if (uri.scheme !in listOf("http", "https")) return false
        val host = uri.host?.lowercase(Locale.ROOT)?.trimEnd('.') ?: return false
        val publisher = URI(publisherUrl ?: "").host?.lowercase(Locale.ROOT)?.trimEnd('.')
        // Avoid breaking publisher-hosted content and navigation.
        if (publisher != null && (host == publisher || host.endsWith(".$publisher"))) return false
        adAndTrackerHosts.any { host == it || host.endsWith(".$it") }
        } catch (_: Exception) { false }
    }

    // Only target recognizable ad placeholders. Never hide article bodies,
    // paywalls, consent dialogs, publisher controls or editorial images.
    val cosmeticCleanupScript = """
        (function () {
            if (document.getElementById('masanawa-reader-ad-cleanup')) return;
            const style = document.createElement('style');
            style.id = 'masanawa-reader-ad-cleanup';
            style.textContent =
              '.adsbygoogle,.OUTBRAIN,[id^="div-gpt-ad"],[id^="google_ads"],' +
              '[data-ad-client],.taboola-widget,[id^="taboola-"]' +
              '{display:none!important;min-height:0!important;height:0!important}';
            (document.head || document.documentElement).appendChild(style);
        })();
    """.trimIndent()
}
