package ng.unigeria.unigeria.shell

import android.annotation.SuppressLint
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.res.ColorStateList
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Typeface
import android.net.Uri
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.PopupMenu
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
import androidx.webkit.WebViewCompat
import androidx.webkit.WebViewFeature
import java.io.ByteArrayInputStream
import java.net.URI
import ng.unigeria.unigeria.R

/**
 * Unprivileged publisher reader. Publisher content receives no MasanawaNative
 * bridge and does not share the main app WebView's request interception.
 */
internal class ShellArticleReader(
    private val activity: ComponentActivity,
    private val host: FrameLayout,
    private val onNavigate: (String) -> Unit,
) {
    private var surface: LinearLayout? = null
    private var browser: WebView? = null
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
        currentPublisherUrl = url

        val page = LinearLayout(activity).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.WHITE)
            elevation = 24f
        }
        // Use the Masanawa home header's single-row white branding.
        // Article controls live in an overflow menu, not a second toolbar.
        val brand = LinearLayout(activity).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(Color.WHITE)
        }
        ViewCompat.setOnApplyWindowInsetsListener(brand) { view, insets ->
            val bars = insets.getInsets(
                WindowInsetsCompat.Type.statusBars() or WindowInsetsCompat.Type.displayCutout()
            )
            view.setPadding(8.dp() + bars.left, 4.dp() + bars.top, 8.dp() + bars.right, 4.dp())
            insets
        }
        brand.addView(actionButton("←", "Back to previous page", 26f) { back() })
        brand.addView(ImageView(activity).apply {
            setImageResource(R.drawable.reader_header_brand)
            contentDescription = null
            importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
        }, LinearLayout.LayoutParams(34.dp(), 34.dp()).apply {
            setMargins(0, 0, 6.dp(), 0)
        })
        brand.addView(TextView(activity).apply {
            text = "Masanawa"
            textSize = 21f
            setTypeface(null, Typeface.BOLD)
            setTextColor(Color.rgb(17, 27, 33))
            gravity = Gravity.CENTER_VERTICAL
            maxLines = 1
        }, LinearLayout.LayoutParams(0, 52.dp(), 1f))
        val more = actionButton("⋮", "Article options", 28f) {} as TextView
        more.setOnClickListener {
            PopupMenu(activity, more).apply {
                menu.add("Reload article")
                menu.add("Open original in browser")
                setOnMenuItemClickListener { item ->
                    when (item.title.toString()) {
                        "Reload article" -> browser?.reload()
                        "Open original in browser" -> openExternal(browser?.url?.takeIf(::safeArticleUrl) ?: url)
                    }
                    true
                }
            }.show()
        }
        brand.addView(more)
        brand.addView(actionButton("×", "Close article and return to Masanawa", 29f) { close() })
        page.addView(brand)

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
            // Prefer document-start cosmetic filtering to avoid visible ad flashes.
            // Unsupported Android System WebViews retain onPageFinished fallback.
            if (WebViewFeature.isFeatureSupported(WebViewFeature.DOCUMENT_START_SCRIPT)) {
                WebViewCompat.addDocumentStartJavaScript(
                    this, ShellArticlePrivacy.cosmeticCleanupScript, setOf("*")
                )
            }
            webViewClient = object : WebViewClient() {
                override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean =
                    request.isForMainFrame && (
                        !safeArticleUrl(request.url.toString()) ||
                        ShellArticlePrivacy.shouldBlock(request.url.toString(), currentPublisherUrl)
                    )

                override fun shouldInterceptRequest(
                    view: WebView, request: WebResourceRequest
                ): WebResourceResponse? {
                    // Only block recognizable ads/trackers inside this isolated reader.
                    // Never intercept the publisher document or authenticated app.
                    if (request.isForMainFrame ||
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
                    }
                }

                override fun onPageFinished(view: WebView, url: String) {
                    if (safeArticleUrl(url) && browser === view)
                        view.evaluateJavascript(ShellArticlePrivacy.cosmeticCleanupScript, null)
                }

                override fun onReceivedError(
                    view: WebView, request: WebResourceRequest, error: WebResourceError
                ) {
                    if (request.isForMainFrame) Toast.makeText(
                        activity,
                        "Publisher could not load. Use the ⋮ menu to reload or open in a browser.",
                        Toast.LENGTH_LONG
                    ).show()
                }
            }
        }
        page.addView(web, LinearLayout.LayoutParams(-1, 0, 1f))
        // Keep the exact five bottom destinations offered by the main web app.
        val divider = View(activity).apply { setBackgroundColor(Color.rgb(231, 234, 236)) }
        page.addView(divider, LinearLayout.LayoutParams(-1, 1.dp()))
        val bottom = LinearLayout(activity).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(Color.WHITE)
        }
        val items: List<Triple<String, String, Int>> = listOf(
            Triple("Home", "home", R.drawable.reader_nav_home),
            Triple("Chats", "chats", R.drawable.reader_nav_chats),
            Triple("Wallet", "wallet", R.drawable.reader_nav_wallet),
            Triple("Calls", "calls", R.drawable.reader_nav_calls),
            Triple("Contacts", "people", R.drawable.reader_nav_contacts)
        )
        items.forEach { (label, route, drawable) ->
            val selected = route == "home"
            val color = if (selected) Color.rgb(20, 157, 85) else Color.rgb(103, 119, 129)
            val tab = LinearLayout(activity).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER
                setPadding(1.dp(), 3.dp(), 1.dp(), 2.dp())
                contentDescription = label
                isClickable = true
                isFocusable = true
                setOnClickListener { close(); onNavigate(route) }
            }
            tab.addView(ImageView(activity).apply {
                setImageResource(drawable)
                imageTintList = ColorStateList.valueOf(color)
                contentDescription = null
                importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
            }, LinearLayout.LayoutParams(23.dp(), 23.dp()))
            tab.addView(TextView(activity).apply {
                text = label
                textSize = 11f
                gravity = Gravity.CENTER
                setTypeface(null, if (selected) Typeface.BOLD else Typeface.NORMAL)
                setTextColor(color)
                setPadding(0, 3.dp(), 0, 0)
            })
            bottom.addView(tab, LinearLayout.LayoutParams(0, 64.dp(), 1f))
        }
        page.addView(bottom)
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

    private fun openExternal(destination: String) {
        if (!safeArticleUrl(destination)) return
        try {
            activity.startActivity(
                Intent(Intent.ACTION_VIEW, Uri.parse(destination))
                    .addCategory(Intent.CATEGORY_BROWSABLE)
            )
        } catch (_: ActivityNotFoundException) {
            Toast.makeText(activity, "No external browser is available.", Toast.LENGTH_LONG).show()
        }
    }

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
