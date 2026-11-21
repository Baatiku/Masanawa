package ng.unigeria.unigeria.shell

import android.annotation.SuppressLint
import android.content.ActivityNotFoundException
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Typeface
import android.net.Uri
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import android.webkit.CookieManager
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.activity.ComponentActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import java.io.ByteArrayInputStream
import java.net.URI

/**
 * Unprivileged publisher reader. Publisher content receives no MasanawaNative
 * bridge and does not share the main app WebView's request interception.
 */
internal class ShellArticleReader(
    private val activity: ComponentActivity,
    private val host: FrameLayout,
) {
    private var surface: LinearLayout? = null
    private var browser: WebView? = null
    @Volatile private var blockingAds = true
    @Volatile private var currentPublisherUrl = ""

    companion object {
        /** Never navigate the reader to local or privileged URLs. */
        fun safeArticleUrl(value: String?): Boolean = try {
            val uri = URI(value ?: "")
            val domain = uri.host?.lowercase() ?: ""
            uri.scheme.equals("https", true) && uri.userInfo == null &&
                (uri.port == -1 || uri.port == 443) && domain.contains('.') &&
                domain.length <= 253 && !domain.endsWith(".local") &&
                !domain.endsWith(".internal") && !domain.endsWith(".localhost") &&
                domain != "localhost" && !domain.contains(':') &&
                !Regex("^\\d+(?:\\.\\d+){3}$").matches(domain) &&
                !domain.startsWith("127.") && !domain.startsWith("10.") &&
                !domain.startsWith("192.168.") && !domain.startsWith("169.254.")
        } catch (_: Exception) { false }
    }

    fun isOpen(): Boolean = surface != null

    @SuppressLint("SetJavaScriptEnabled")
    fun open(url: String): Boolean {
        if (!safeArticleUrl(url)) return false
        close()
        blockingAds = true
        currentPublisherUrl = url

        val page = LinearLayout(activity).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.WHITE)
            elevation = 24f
        }
        val brand = LinearLayout(activity).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(Color.rgb(37, 211, 102))
        }
        ViewCompat.setOnApplyWindowInsetsListener(brand) { view, insets ->
            val bars = insets.getInsets(
                WindowInsetsCompat.Type.statusBars() or WindowInsetsCompat.Type.displayCutout()
            )
            view.setPadding(8.dp() + bars.left, 4.dp() + bars.top, 8.dp() + bars.right, 4.dp())
            insets
        }
        brand.addView(actionButton("←", "Back to previous page", 26f) { back() })
        val titleGroup = LinearLayout(activity).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_VERTICAL
        }
        titleGroup.addView(TextView(activity).apply {
            text = "Masanawa"
            textSize = 20f
            setTypeface(null, Typeface.BOLD)
            setTextColor(Color.rgb(8, 51, 32))
            maxLines = 1
        })
        titleGroup.addView(TextView(activity).apply {
            text = "In-app article reader"
            textSize = 12f
            setTextColor(Color.rgb(8, 66, 40))
        })
        brand.addView(titleGroup, LinearLayout.LayoutParams(0, 52.dp(), 1f))
        brand.addView(actionButton("×", "Close article and return to Masanawa", 30f) { close() })
        page.addView(brand)

        val tools = LinearLayout(activity).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(12.dp(), 2.dp(), 8.dp(), 2.dp())
            setBackgroundColor(Color.rgb(241, 248, 243))
        }
        val publisher = TextView(activity).apply {
            text = publisherName(url)
            textSize = 13f
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
            setTextColor(Color.rgb(27, 58, 42))
        }
        tools.addView(publisher, LinearLayout.LayoutParams(0, 48.dp(), 1f))
        val protection = TextView(activity).apply {
            gravity = Gravity.CENTER
            text = "Ads off"
            textSize = 13f
            setTypeface(null, Typeface.BOLD)
            setTextColor(Color.rgb(8, 75, 43))
            contentDescription = "Ad blocking enabled. Tap to allow ads for this article."
            isClickable = true
            isFocusable = true
            minHeight = 48.dp()
            minWidth = 70.dp()
            setPadding(4.dp(), 0, 4.dp(), 0)
            setOnClickListener {
                blockingAds = !blockingAds
                text = if (blockingAds) "Ads off" else "Ads on"
                contentDescription = if (blockingAds) {
                    "Ad blocking enabled. Tap to allow ads for this article."
                } else {
                    "Ad blocking disabled. Tap to block ads for this article."
                }
                browser?.reload()
            }
        }
        tools.addView(protection)
        tools.addView(actionButton("↻", "Reload article", 27f) { browser?.reload() })
        tools.addView(actionButton("↗", "Open original article in external browser", 26f) {
            val destination = browser?.url?.takeIf(::safeArticleUrl) ?: url
            try {
                activity.startActivity(
                    Intent(Intent.ACTION_VIEW, Uri.parse(destination))
                        .addCategory(Intent.CATEGORY_BROWSABLE)
                )
            } catch (_: ActivityNotFoundException) {
                Toast.makeText(activity, "No external browser is available.", Toast.LENGTH_LONG).show()
            }
        })
        page.addView(tools)

        val web = WebView(activity).apply {
            setBackgroundColor(Color.WHITE)
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.allowFileAccess = false
            settings.allowContentAccess = false
            settings.allowFileAccessFromFileURLs = false
            settings.allowUniversalAccessFromFileURLs = false
            settings.mixedContentMode = WebSettings.MIXED_CONTENT_NEVER_ALLOW
            settings.javaScriptCanOpenWindowsAutomatically = false
            settings.setSupportMultipleWindows(false)
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O)
                settings.safeBrowsingEnabled = true
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, false)
            webViewClient = object : WebViewClient() {
                override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean =
                    request.isForMainFrame && !safeArticleUrl(request.url.toString())

                override fun shouldInterceptRequest(
                    view: WebView, request: WebResourceRequest
                ): WebResourceResponse? {
                    // Only block known third-party advertising/tracking subresources.
                    // Never intercept the publisher document or the authenticated app.
                    if (!blockingAds || request.isForMainFrame ||
                        !ShellArticlePrivacy.shouldBlock(
                            request.url.toString(), currentPublisherUrl
                        )
                    ) return null
                    return WebResourceResponse(
                        "text/plain", "UTF-8", ByteArrayInputStream(ByteArray(0))
                    )
                }

                override fun onPageStarted(view: WebView, url: String, favicon: Bitmap?) {
                    if (safeArticleUrl(url)) {
                        currentPublisherUrl = url
                        publisher.text = publisherName(url)
                    }
                }

                override fun onPageFinished(view: WebView, url: String) {
                    if (blockingAds && safeArticleUrl(url) && browser === view)
                        view.evaluateJavascript(ShellArticlePrivacy.cosmeticCleanupScript, null)
                }

                override fun onReceivedError(
                    view: WebView, request: WebResourceRequest, error: WebResourceError
                ) {
                    if (request.isForMainFrame) Toast.makeText(
                        activity,
                        "This publisher could not load. Try Reload or Open in browser (↗).",
                        Toast.LENGTH_LONG
                    ).show()
                }
            }
        }
        page.addView(web, LinearLayout.LayoutParams(-1, 0, 1f))
        ViewCompat.setOnApplyWindowInsetsListener(page) { view, insets ->
            val bars = insets.getInsets(
                WindowInsetsCompat.Type.navigationBars() or WindowInsetsCompat.Type.displayCutout()
            )
            view.setPadding(bars.left, 0, bars.right, bars.bottom)
            insets
        }
        surface = page
        browser = web
        host.addView(page, FrameLayout.LayoutParams(-1, -1))
        ViewCompat.requestApplyInsets(page)
        web.loadUrl(url)
        return true
    }

    /** Consume Android Back within the reader before falling through to the app. */
    fun back(): Boolean {
        val web = browser ?: return false
        if (web.canGoBack()) web.goBack() else close()
        return true
    }

    fun onPause() { browser?.onPause() }
    fun onResume() { browser?.onResume() }
    fun close() {
        val web = browser
        val view = surface
        browser = null
        surface = null
        currentPublisherUrl = ""
        if (view != null) host.removeView(view)
        web?.apply { stopLoading(); loadUrl("about:blank"); removeAllViews(); destroy() }
    }

    private fun publisherName(value: String): String =
        try { URI(value).host?.removePrefix("www.") ?: "Publisher website" }
        catch (_: Exception) { "Publisher website" }

    private fun actionButton(
        glyph: String, hint: String, fontSize: Float, action: () -> Unit
    ): View = TextView(activity).apply {
        text = glyph
        textSize = fontSize
        setTextColor(Color.rgb(8, 51, 32))
        gravity = Gravity.CENTER
        layoutParams = LinearLayout.LayoutParams(48.dp(), 48.dp())
        contentDescription = hint
        isClickable = true
        isFocusable = true
        setOnClickListener { action() }
    }

    private fun Int.dp() = (this * activity.resources.displayMetrics.density + .5f).toInt()
}
