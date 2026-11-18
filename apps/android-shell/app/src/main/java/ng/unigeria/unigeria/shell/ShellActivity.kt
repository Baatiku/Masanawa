package ng.unigeria.unigeria.shell

import android.Manifest
import android.annotation.SuppressLint
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.pm.PackageManager
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Typeface
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.webkit.CookieManager
import android.webkit.PermissionRequest
import android.webkit.RenderProcessGoneDetail
import android.webkit.SslErrorHandler
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import android.net.http.SslError
import android.widget.Button
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.OnBackPressedCallback
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat

/**
 * Small, replaceable Android host for the existing Cloudflare-hosted UI.
 * It deliberately does not expose wallet, credentials or arbitrary native APIs
 * to JavaScript; those operations remain server-authenticated web flows.
 */
class ShellActivity : ComponentActivity() {
    private lateinit var container: FrameLayout
    private lateinit var webView: WebView
    private lateinit var failureView: View
    private lateinit var failureText: TextView
    private var fileCallback: android.webkit.ValueCallback<Array<Uri>>? = null
    private var pendingMediaRequest: PermissionRequest? = null
    private var lastTrustedUrl = WebOriginPolicy.HOME

    private val filePicker = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        fileCallback?.onReceiveValue(
            WebChromeClient.FileChooserParams.parseResult(result.resultCode, result.data)
        )
        fileCallback = null
    }

    private val mediaPermissions = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) { grants ->
        val request = pendingMediaRequest
        pendingMediaRequest = null
        if (request != null) {
            val requested = request.resources
            val allowed = requested.all { resource ->
                val permission = when (resource) {
                    PermissionRequest.RESOURCE_AUDIO_CAPTURE -> Manifest.permission.RECORD_AUDIO
                    PermissionRequest.RESOURCE_VIDEO_CAPTURE -> Manifest.permission.CAMERA
                    else -> null
                }
                permission != null && (grants[permission] == true ||
                    ContextCompat.checkSelfPermission(this, permission) == PackageManager.PERMISSION_GRANTED)
            }
            if (allowed && WebOriginPolicy.isTrusted(request.origin.toString())) {
                request.grant(requested)
            } else {
                request.deny()
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        window.statusBarColor = Color.WHITE
        window.navigationBarColor = Color.BLACK
        window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR

        container = FrameLayout(this)
        webView = newWebView()
        container.addView(webView, FrameLayout.LayoutParams(-1, -1))
        setupFailureView()
        setContentView(container)

        onBackPressedDispatcher.addCallback(this, object : OnBackPressedCallback(true) {
            override fun handleOnBackPressed() {
                if (webView.canGoBack()) webView.goBack() else {
                    isEnabled = false
                    onBackPressedDispatcher.onBackPressed()
                }
            }
        })

        if (savedInstanceState == null || webView.restoreState(savedInstanceState) == null) {
            webView.loadUrl(WebOriginPolicy.safeLaunchUrl(intent?.dataString))
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        webView.loadUrl(WebOriginPolicy.safeLaunchUrl(intent.dataString))
    }

    override fun onSaveInstanceState(outState: Bundle) {
        webView.saveState(outState)
        super.onSaveInstanceState(outState)
    }

    override fun onPause() {
        webView.onPause()
        super.onPause()
    }

    override fun onResume() {
        super.onResume()
        webView.onResume()
    }

    override fun onStop() {
        CookieManager.getInstance().flush()
        super.onStop()
    }

    override fun onDestroy() {
        pendingMediaRequest?.deny()
        pendingMediaRequest = null
        fileCallback?.onReceiveValue(null)
        fileCallback = null
        container.removeView(webView)
        webView.destroy()
        super.onDestroy()
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun newWebView(): WebView = WebView(this).apply {
        settings.javaScriptEnabled = true
        settings.domStorageEnabled = true
        settings.allowFileAccess = false
        settings.allowFileAccessFromFileURLs = false
        settings.allowUniversalAccessFromFileURLs = false
        settings.mixedContentMode = android.webkit.WebSettings.MIXED_CONTENT_NEVER_ALLOW
        settings.javaScriptCanOpenWindowsAutomatically = false
        settings.setSupportMultipleWindows(false)
        settings.mediaPlaybackRequiresUserGesture = true
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) settings.safeBrowsingEnabled = true
        CookieManager.getInstance().setAcceptCookie(true)
        CookieManager.getInstance().setAcceptThirdPartyCookies(this, false)

        webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                if (!request.isForMainFrame) return false
                val url = request.url.toString()
                if (WebOriginPolicy.isTrusted(url)) return false
                openOutside(url)
                return true
            }

            override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
                if (WebOriginPolicy.isTrusted(url)) {
                    lastTrustedUrl = url
                    failureView.visibility = View.GONE
                }
            }

            override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
                if (request.isForMainFrame) showFailure(false)
            }

            override fun onReceivedHttpError(view: WebView, request: WebResourceRequest, errorResponse: WebResourceResponse) {
                if (request.isForMainFrame && errorResponse.statusCode >= 500) showFailure(false)
            }

            override fun onReceivedSslError(view: WebView, handler: SslErrorHandler, error: SslError) {
                handler.cancel() // Never present a certificate-bypass option.
                if (WebOriginPolicy.isTrusted(error.url)) showFailure(true)
            }

            override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
                // A failed Chromium renderer must not crash the host activity.
                container.removeView(view)
                view.destroy()
                webView = newWebView()
                container.addView(webView, 0, FrameLayout.LayoutParams(-1, -1))
                showFailure(false)
                return true
            }
        }

        webChromeClient = object : WebChromeClient() {
            override fun onPermissionRequest(request: PermissionRequest) {
                runOnUiThread { authorizeMedia(request) }
            }

            override fun onPermissionRequestCanceled(request: PermissionRequest) {
                if (pendingMediaRequest === request) pendingMediaRequest = null
            }

            override fun onShowFileChooser(
                webView: WebView,
                filePathCallback: android.webkit.ValueCallback<Array<Uri>>,
                fileChooserParams: FileChooserParams,
            ): Boolean {
                if (!WebOriginPolicy.isTrusted(webView.url)) {
                    filePathCallback.onReceiveValue(null)
                    return true
                }
                fileCallback?.onReceiveValue(null)
                fileCallback = filePathCallback
                try {
                    filePicker.launch(fileChooserParams.createIntent())
                } catch (_: ActivityNotFoundException) {
                    fileCallback?.onReceiveValue(null)
                    fileCallback = null
                }
                return true
            }
        }
    }

    private fun authorizeMedia(request: PermissionRequest) {
        val resources = request.resources
        if (!WebOriginPolicy.isTrusted(request.origin.toString()) ||
            resources.isEmpty() ||
            resources.any { it != PermissionRequest.RESOURCE_AUDIO_CAPTURE && it != PermissionRequest.RESOURCE_VIDEO_CAPTURE } ||
            pendingMediaRequest != null
        ) {
            request.deny()
            return
        }

        val permissions = resources.map {
            if (it == PermissionRequest.RESOURCE_AUDIO_CAPTURE) Manifest.permission.RECORD_AUDIO
            else Manifest.permission.CAMERA
        }.distinct()
        val missing = permissions.filter { ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED }
        if (missing.isEmpty()) request.grant(resources) else {
            pendingMediaRequest = request
            mediaPermissions.launch(missing.toTypedArray())
        }
    }

    private fun openOutside(url: String) {
        if (!WebOriginPolicy.mayOpenExternally(url)) return
        try {
            startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)).addCategory(Intent.CATEGORY_BROWSABLE))
        } catch (_: ActivityNotFoundException) {
            Toast.makeText(this, "No app available to open this link", Toast.LENGTH_SHORT).show()
        }
    }

    private fun setupFailureView() {
        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setPadding(48, 48, 48, 48)
            setBackgroundColor(Color.WHITE)
            visibility = View.GONE
        }
        val title = TextView(this).apply {
            text = getString(ng.unigeria.unigeria.R.string.shell_connection_title)
            textSize = 21f
            setTextColor(Color.rgb(22, 40, 32))
            typeface = Typeface.DEFAULT_BOLD
            gravity = Gravity.CENTER
        }
        failureText = TextView(this).apply {
            text = getString(ng.unigeria.unigeria.R.string.shell_connection_description)
            textSize = 15f
            gravity = Gravity.CENTER
            setTextColor(Color.DKGRAY)
            setPadding(0, 24, 0, 28)
        }
        val retry = Button(this).apply {
            text = getString(ng.unigeria.unigeria.R.string.shell_retry)
            backgroundTintList = ColorStateList.valueOf(Color.rgb(37, 211, 102))
            setTextColor(Color.BLACK)
            setOnClickListener { webView.loadUrl(lastTrustedUrl) }
        }
        content.addView(title)
        content.addView(failureText)
        content.addView(retry)
        failureView = content
        container.addView(content, FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
        ))
    }

    private fun showFailure(security: Boolean) {
        failureText.setText(if (security) ng.unigeria.unigeria.R.string.shell_security_description
            else ng.unigeria.unigeria.R.string.shell_connection_description)
        failureView.visibility = View.VISIBLE
    }
}
