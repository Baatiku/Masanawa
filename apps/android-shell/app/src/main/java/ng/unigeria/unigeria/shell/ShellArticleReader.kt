package ng.unigeria.unigeria.shell

import android.annotation.SuppressLint
import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import android.webkit.WebResourceRequest
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.webkit.CookieManager
import androidx.activity.ComponentActivity
import java.net.URI

/** A publisher web page never receives MasanawaNative or access to the host's
 * privileged WebMessageListener. This second WebView is user-visible only. */
internal class ShellArticleReader(private val activity: ComponentActivity,private val host: FrameLayout) {
    private var surface: LinearLayout? = null
    private var browser: WebView? = null

    companion object {
        /** No file/content/intent/http URLs or local network targets. */
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
        val page = LinearLayout(activity).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(Color.WHITE)
            elevation = 24f
        }
        val toolbar = LinearLayout(activity).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(12.dp(), 4.dp(), 12.dp(), 4.dp())
            setBackgroundColor(Color.WHITE)
        }
        val backButton = button("‹") { back() }
        val label = TextView(activity).apply {
            text = "Masanawa · Read original"
            setTextColor(Color.rgb(20, 99, 65))
            textSize = 15f
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
        }
        val reload = button("↻") { browser?.reload() }
        val closeButton = button("×") { close() }
        toolbar.addView(backButton)
        toolbar.addView(label, LinearLayout.LayoutParams(0, 52.dp(), 1f))
        toolbar.addView(reload)
        toolbar.addView(closeButton)
        page.addView(toolbar)
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
            }
        }
        page.addView(web, LinearLayout.LayoutParams(-1, 0, 1f))
        surface = page
        browser = web
        host.addView(page, FrameLayout.LayoutParams(-1, -1))
        web.loadUrl(url)
        return true
    }

    /** True means native article navigation consumed the Android Back press. */
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
        if (view != null) host.removeView(view)
        web?.apply { stopLoading();loadUrl("about:blank");removeAllViews();destroy() }
    }

    private fun button(text: String, action: () -> Unit): View = TextView(activity).apply {
        this.text = text
        setTextColor(Color.rgb(19, 116, 72))
        textSize = 28f
        gravity = Gravity.CENTER
        layoutParams = LinearLayout.LayoutParams(44.dp(), 52.dp())
        contentDescription = when (text) { "‹" -> "Back"; "↻" -> "Reload"; else -> "Close article" }
        isClickable = true
        isFocusable = true
        setOnClickListener { action() }
    }
    private fun Int.dp() = (this * activity.resources.displayMetrics.density).toInt()
}
