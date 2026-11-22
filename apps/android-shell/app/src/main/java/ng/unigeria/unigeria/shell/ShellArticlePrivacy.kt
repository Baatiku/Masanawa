package ng.unigeria.unigeria.shell

import java.net.URI
import java.util.Locale

/**
 * Bundled reader-only ad/tracker filtering. This never intercepts the Masanawa
 * authenticated WebView, nor does it proxy or inspect article content.
 *
 * Domain blocking is necessarily best-effort: publishers may serve ads from
 * undisclosed first-party paths. Preserve their editorial text and media.
 */
internal object ShellArticlePrivacy {
    private val adAndTrackerHosts = setOf(
        "doubleclick.net", "googlesyndication.com", "googleadservices.com",
        "adservice.google.com", "admanager.google.com", "googletagservices.com",
        "google-analytics.com", "googletagmanager.com", "amazon-adsystem.com",
        "aaxads.com", "taboola.com", "outbrain.com", "criteo.com",
        "pubmatic.com", "rubiconproject.com", "openx.net", "adnxs.com",
        "appnexus.com", "advertising.com", "adform.net", "adcolony.com",
        "adsrvr.org", "bidswitch.net", "yieldmo.com", "triplelift.com",
        "scorecardresearch.com", "quantserve.com", "moatads.com",
        "smartadserver.com", "smaato.net", "inmobi.com", "mgid.com",
        "revcontent.com", "teads.tv", "lijit.com", "casalemedia.com",
        "sharethrough.com", "indexww.com", "indexexchange.com", "media.net",
        "adskeeper.com", "adskeeper.co.uk", "exoclick.com", "popads.net",
        "propellerads.com", "adsterra.com", "monetag.com", "adcash.com",
        "bidr.io", "sovrn.com", "33across.com", "seedtag.com",
        "undertone.com", "improvedigital.com", "nativo.com", "gumgum.com",
        "stackadapt.com", "adroll.com", "rtbhouse.com", "hotjar.com",
        "clarity.ms", "segment.io", "onesignal.com"
    )
    private val firstPartyAdAssets = listOf(
        "/wp-content/plugins/advanced-ads/",
        "/wp-content/plugins/ad-inserter/",
        "/wp-content/plugins/quick-adsense/",
        "/wp-content/plugins/wp-quads/",
        "/adsbygoogle/",
        "/adserver/",
        "/ad-serving/",
        "/prebid/"
    )

    fun shouldBlock(resourceUrl: String?, publisherUrl: String?): Boolean {
        return try {
            val uri = URI(resourceUrl ?: "")
            if (!uri.scheme.equals("https", true) && !uri.scheme.equals("http", true)) return false
            val host = uri.host?.lowercase(Locale.ROOT)?.trimEnd('.') ?: return false
            val publisher = URI(publisherUrl ?: "").host?.lowercase(Locale.ROOT)?.trimEnd('.')
            val path = uri.path?.lowercase(Locale.ROOT) ?: ""
            // Treat only explicit advertising paths as first-party ads.
            // Broad /ads URLs and publisher media/CDNs must remain readable.
            if (publisher != null && (host == publisher || host.endsWith(".$publisher"))) {
                return firstPartyAdAssets.any { path.startsWith(it) || path.contains(it) }
            }
            adAndTrackerHosts.any { host == it || host.endsWith(".$it") }
        } catch (_: Exception) { false }
    }

    // Hide explicit ad widgets, without hiding articles, consent controls,
    // publisher bylines, images, or general content blocks.
    val cosmeticCleanupScript = """
        (function () {
          const id = 'masanawa-reader-ad-cleanup';
          const css = [
            'ins.adsbygoogle', '.adsbygoogle', '.OUTBRAIN',
            '[id^="div-gpt-ad"]', '[id^="google_ads"]', '[data-ad-client]',
            '[data-google-query-id]', '.taboola-widget', '[id^="taboola-"]',
            '[id^="outbrain-"]', '[id^="rc-widget-"]', '.mgid-widget',
            '[id^="ad-slot-"]', '[class~="ad-slot"]',
            'iframe[src*="doubleclick.net"]', 'iframe[src*="googlesyndication.com"]',
            'iframe[src*="taboola.com"]', 'iframe[src*="outbrain.com"]'
          ].join(',');
          const install = () => {
            if (document.getElementById(id)) return;
            const style = document.createElement('style');
            style.id = id;
            style.textContent = css + '{display:none!important;min-height:0!important;height:0!important;visibility:hidden!important}';
            (document.head || document.documentElement).appendChild(style);
          };
          const activate = () => {
            if (!document.documentElement) return;
            install();
            if (window.__masanawaReaderAdObserver) return;
            const observer = new MutationObserver(() => {
              if (!document.getElementById(id)) install();
            });
            observer.observe(document.documentElement, {childList:true,subtree:true});
            window.__masanawaReaderAdObserver = observer;
            window.addEventListener('pagehide', () => {
              observer.disconnect();
              delete window.__masanawaReaderAdObserver;
            }, {once:true});
          };
          if (document.documentElement) activate();
          else {
            // DOCUMENT_START_SCRIPT runs before the DOM exists. Attach at the
            // first document-element mutation, rather than waiting for load.
            const boot = new MutationObserver(() => {
              if (document.documentElement) { boot.disconnect(); activate(); }
            });
            boot.observe(document, {childList:true,subtree:true});
            document.addEventListener('DOMContentLoaded', () => {
              boot.disconnect(); activate();
            }, {once:true});
          }
        })();
    """.trimIndent()
}
