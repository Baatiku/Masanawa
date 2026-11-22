package ng.unigeria.unigeria.shell

import android.Manifest
import android.annotation.SuppressLint
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.ClipData
import android.content.pm.PackageManager
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.Typeface
import android.net.Uri
import android.provider.MediaStore
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.content.Context
import android.content.BroadcastReceiver
import android.content.IntentFilter
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.SystemClock
import android.view.Gravity
import android.view.HapticFeedbackConstants
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
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
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.OnBackPressedCallback
import androidx.activity.enableEdgeToEdge
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.lifecycle.Lifecycle
import androidx.webkit.WebViewCompat
import androidx.webkit.WebViewFeature
import androidx.webkit.JavaScriptReplyProxy
import org.json.JSONObject
import java.io.File

/**
 * Small, replaceable Android host for the existing Cloudflare-hosted UI.
 * It deliberately does not expose wallet, credentials or arbitrary native APIs
 * to JavaScript; those operations remain server-authenticated web flows.
 */
class ShellActivity : ComponentActivity() {
    private lateinit var container: FrameLayout
    private lateinit var webView: WebView
    private lateinit var articleReader: ShellArticleReader
    private lateinit var failureView: View
    private lateinit var failureText: TextView
    private lateinit var loadingBar: ProgressBar
    private var firstPageVisible = false
    private var keyboardVisible = false
    private var safeTopDp = 0
    private var safeBottomDp = 0
    private var safeLeftDp = 0
    private var safeRightDp = 0
    private var fileCallback: android.webkit.ValueCallback<Array<Uri>>? = null
    private var pendingMediaRequest: PermissionRequest? = null
    private var lastTrustedUrl = WebOriginPolicy.HOME
    private lateinit var downloads: ShellDownloads
    private var pendingSharedText: String? = null
    private var pendingSharedAttachment: Uri? = null
    private var pendingCameraUri: Uri? = null
    private var pendingCameraFile: File? = null
    private var pendingCameraPicker: Intent? = null
    private var protectScreen = false
    private var callActive = false
    private val webUpdateHandler = Handler(Looper.getMainLooper())
    private var lastWebCheckAt = 0L
    private var webCheckRunning = false
    private var pendingWebRefresh = false
    private val webUpdatePrefs by lazy {
        getSharedPreferences("masanawa_web_updates", Context.MODE_PRIVATE)
    }
    private val webUpdatePoll = object : Runnable {
        override fun run() {
            checkWebDeployment()
            webUpdateHandler.postDelayed(this, ShellWebUpdates.CHECK_INTERVAL_MS)
        }
    }
    private var pendingPushReply: JavaScriptReplyProxy? = null
    private val callControls = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            if (!::webView.isInitialized || !WebOriginPolicy.isTrusted(webView.url)) return
            when (intent.getStringExtra(ShellCallService.REMOTE_EVENT)) {
                ShellCallService.EVENT_END -> {
                    webView.evaluateJavascript(
                        "window.dispatchEvent(new Event('masanawa-native-call-hangup'))", null)
                    stopCallService()
                }
                ShellCallService.EVENT_MUTE -> {
                    val muted = intent.getBooleanExtra(ShellCallService.REMOTE_MUTED, false)
                    webView.evaluateJavascript(
                        "window.dispatchEvent(new CustomEvent('masanawa-native-call-mute',{detail:{muted:${muted}}}))", null)
                }
            }
        }
    }

    private val notificationPermission = registerForActivityResult(ActivityResultContracts.RequestPermission()) { granted ->
        val reply = pendingPushReply
        pendingPushReply = null
        if (reply != null) {
            if (granted) sendPushToken(reply)
            else reply.postMessage("{\"type\":\"push-error\",\"message\":\"Notification permission denied.\"}")
        }
    }

    private val saveDocument = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        downloads.onDestinationSelected(if (result.resultCode == RESULT_OK) result.data?.data else null)
    }

    private val capturePermission = registerForActivityResult(ActivityResultContracts.RequestPermission()) { allowed ->
        val picker = pendingCameraPicker
        pendingCameraPicker = null
        if (picker != null) launchFileChooser(picker, allowed)
    }

    private val filePicker = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        val selected = WebChromeClient.FileChooserParams.parseResult(result.resultCode, result.data)
        val photo = pendingCameraFile
        val uri = pendingCameraUri
        val captured = selected.isNullOrEmpty() && result.resultCode == RESULT_OK && (photo?.length() ?: 0L) > 0 && uri != null
        val resultUris = if (captured) arrayOf(uri!!) else selected
        fileCallback?.onReceiveValue(resultUris)
        fileCallback = null
        if (resultUris?.contains(uri) != true) photo?.delete()
        pendingCameraFile = null
        pendingCameraUri = null
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
        installSplashScreen()
        super.onCreate(savedInstanceState)
        // The WebView must cover the entire window. It forwards the system-bar
        // safe areas to CSS; padding its parent creates the floating white
        // strips and can double-count the keyboard on newer WebView releases.
        enableEdgeToEdge()
        WindowInsetsControllerCompat(window, window.decorView).isAppearanceLightStatusBars = true
        WindowInsetsControllerCompat(window, window.decorView).isAppearanceLightNavigationBars = true
        // The web app owns its loading screen; no redundant native hold.

        container = FrameLayout(this).apply { setBackgroundColor(Color.WHITE) }
        ViewCompat.setOnApplyWindowInsetsListener(container) { _, insets ->
            // Observe the IME only; never resize or pad the WebView here.
            // Modern WebView owns visual-viewport resizing for the keyboard.
            // Pass a CSS fallback for older WebView versions that expose zero
            // env(safe-area-inset-*) values despite edge-to-edge hosting.
            val bars = insets.getInsets(WindowInsetsCompat.Type.systemBars() or WindowInsetsCompat.Type.displayCutout())
            val density = resources.displayMetrics.density
            val top = (bars.top / density + .5f).toInt()
            val bottom = (bars.bottom / density + .5f).toInt()
            val left = (bars.left / density + .5f).toInt()
            val right = (bars.right / density + .5f).toInt()
            val next = insets.isVisible(WindowInsetsCompat.Type.ime())
            if (next != keyboardVisible || top != safeTopDp || bottom != safeBottomDp ||
                left != safeLeftDp || right != safeRightDp) {
                keyboardVisible = next
                safeTopDp = top
                safeBottomDp = bottom
                safeLeftDp = left
                safeRightDp = right
                syncKeyboardClass()
            }
            insets
        }
        downloads = ShellDownloads(this, { name, mime ->
            saveDocument.launch(Intent(Intent.ACTION_CREATE_DOCUMENT).apply {
                addCategory(Intent.CATEGORY_OPENABLE)
                type = mime
                putExtra(Intent.EXTRA_TITLE, name)
            })
        }, { message -> Toast.makeText(this, message, Toast.LENGTH_LONG).show() })
        ShellPush.ensureChannels(this)
        ContextCompat.registerReceiver(this, callControls,
            IntentFilter(ShellCallService.REMOTE_CONTROL), ContextCompat.RECEIVER_NOT_EXPORTED)
        File(cacheDir, "capture").listFiles()?.filter {
            it.name.startsWith("masanawa-capture-") && System.currentTimeMillis() - it.lastModified() > 3_600_000
        }?.forEach { it.delete() }
        webView = newWebView()
        pendingWebRefresh = webUpdatePrefs.getBoolean("pending_refresh", false)
        container.addView(webView, FrameLayout.LayoutParams(-1, -1))
        articleReader = ShellArticleReader(this, container) { destination ->
            // Native tabs operate on the existing trusted Masanawa web navigation.
            // Publisher WebViews cannot call this bridge or access the authenticated app.
            if (WebOriginPolicy.isTrusted(webView.url)) {
                val selector = when (destination) {
                    "home", "chats", "wallet", "calls" -> ".wa-rail [data-tab=\"$destination\"]"
                    "people" -> ".wa-rail-utility"
                    else -> null
                }
                if (selector != null) {
                    val script = "(function(){const tab=document.querySelector(" +
                        JSONObject.quote(selector) +
                        ");if(tab){tab.click();return true}return false})()"
                    webView.evaluateJavascript(script) { result ->
                        // If a future web release changes the DOM selector,
                        // do not leave the tab looking clickable but inert.
                        if (result != "true" && WebOriginPolicy.isTrusted(webView.url)) {
                            webView.loadUrl("https://app.masanawa.com/?tab=$destination")
                        }
                    }
                }
            }
        }
        setupLoadingBar()
        setupFailureView()
        setContentView(container)

        onBackPressedDispatcher.addCallback(this, object : OnBackPressedCallback(true) {
            override fun handleOnBackPressed() {
                if (articleReader.back()) return
                if (!WebOriginPolicy.isTrusted(webView.url)) {
                    fallbackBack()
                    return
                }
                // Close web dialogs, sheets and the current chat before
                // navigating WebView history or exiting the Activity.
                webView.evaluateJavascript(
                    "(function(){try{return window.__masanawaHandleAndroidBack?.()||'history'}catch(_){return 'history'}})()"
                ) { result ->
                    when (ShellBackResult.fromJavaScript(result)) {
                        ShellBackResult.HANDLED -> Unit
                        ShellBackResult.EXIT -> exitShell()
                        ShellBackResult.HISTORY -> fallbackBack()
                    }
                }
            }

            private fun fallbackBack() {
                if (webView.canGoBack()) webView.goBack() else exitShell()
            }

            private fun exitShell() {
                isEnabled = false
                onBackPressedDispatcher.onBackPressed()
            }
        })

        collectSharedInput(intent)
        if (savedInstanceState == null || webView.restoreState(savedInstanceState) == null)
            webView.loadUrl(launchUrl(intent))
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        collectSharedInput(intent)
        if (intent.action == Intent.ACTION_VIEW || intent.hasExtra("deepLink") || intent.hasExtra("characterId"))
            webView.loadUrl(launchUrl(intent))
        else dispatchSharedText()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        webView.saveState(outState)
        super.onSaveInstanceState(outState)
    }

    override fun onPause() {
        webUpdateHandler.removeCallbacks(webUpdatePoll)
        // Keep sensitive content out of the Android recent-apps thumbnail.
        window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
        // A customer-authorized foreground microphone session must not be
        // paused with the UI while the foreground call service is active.
        if (!callActive) webView.onPause()
        articleReader.onPause()
        super.onPause()
    }

    override fun onResume() {
        super.onResume()
        if (!protectScreen) window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
        webView.onResume()
        articleReader.onResume()
        if (WebOriginPolicy.isTrusted(webView.url))
            webView.evaluateJavascript("window.dispatchEvent(new Event('masanawa-native-resume'))", null)
        webUpdateHandler.removeCallbacks(webUpdatePoll)
        webUpdateHandler.post(webUpdatePoll)
        if (pendingWebRefresh) webUpdateHandler.postDelayed({ maybeRefreshWeb() }, 500L)
    }

    override fun onStop() {
        CookieManager.getInstance().flush()
        super.onStop()
    }

    override fun onDestroy() {
        webUpdateHandler.removeCallbacks(webUpdatePoll)
        unregisterReceiver(callControls)
        stopCallService()
        pendingMediaRequest?.deny()
        pendingMediaRequest = null
        fileCallback?.onReceiveValue(null)
        fileCallback = null
        articleReader.close()
        container.removeView(webView)
        webView.destroy()
        downloads.close()
        super.onDestroy()
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun newWebView(): WebView = WebView(this).apply {
        setBackgroundColor(Color.WHITE)
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
        setDownloadListener { url, _, contentDisposition, mimeType, _ ->
            if (url != null && WebOriginPolicy.isTrusted(url))
                downloads.beginHttp(url, android.webkit.URLUtil.guessFileName(url, contentDisposition, mimeType), mimeType)
            else Toast.makeText(this@ShellActivity, "Use Masanawa's private file download control.", Toast.LENGTH_LONG).show()
        }
        if (WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
            WebViewCompat.addWebMessageListener(this, "MasanawaNative", setOf("https://app.masanawa.com")) {
                _, message, origin, isMainFrame, reply ->
                if (isMainFrame && WebOriginPolicy.isTrusted(origin.toString())) {
                    val payload = try { JSONObject(message.data ?: "") } catch (_: Exception) { null }
                    if (payload != null) handleNativeMessage(payload, reply)
                }
            }
        }

        webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                if (!request.isForMainFrame) return false
                val url = request.url.toString()
                if (WebOriginPolicy.isTrusted(url)) return false
                val route = ShellDeepLinks.route(url)
                if (route != null) {
                    view.loadUrl(route)
                    return true
                }
                openOutside(url)
                return true
            }

            override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
                if (WebOriginPolicy.isTrusted(url)) {
                    firstPageVisible = false
                    lastTrustedUrl = url
                    failureView.visibility = View.GONE
                }
            }

            override fun onPageFinished(view: WebView, url: String) {
                firstPageVisible = true
                if (WebOriginPolicy.isTrusted(url)) {
                    syncKeyboardClass()
                    dispatchSharedText()
                }
            }

            override fun onPageCommitVisible(view: WebView, url: String) {
                if (WebOriginPolicy.isTrusted(url)) firstPageVisible = true
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
                stopCallService()
                container.removeView(view)
                view.destroy()
                webView = newWebView()
                container.addView(webView, 0, FrameLayout.LayoutParams(-1, -1))
                showFailure(false)
                return true
            }
        }

        webChromeClient = object : WebChromeClient() {
            override fun onProgressChanged(view: WebView, newProgress: Int) {
                if (::loadingBar.isInitialized) {
                    loadingBar.progress = newProgress
                    loadingBar.visibility =
                        if (newProgress in 1..94 && failureView.visibility != View.VISIBLE)
                            View.VISIBLE else View.GONE
                }
            }
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
                val incoming = pendingSharedAttachment
                if (incoming?.scheme == "content") {
                    pendingSharedAttachment = null
                    fileCallback?.onReceiveValue(arrayOf(incoming))
                    fileCallback = null
                    return true
                }
                try {
                    val chooser = fileChooserParams.createIntent()
                    val capture = fileChooserParams.isCaptureEnabled &&
                        fileChooserParams.acceptTypes.any { it.startsWith("image/") }
                    if (capture && ContextCompat.checkSelfPermission(this@ShellActivity,
                            Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
                        pendingCameraPicker = chooser
                        capturePermission.launch(Manifest.permission.CAMERA)
                    } else launchFileChooser(chooser, capture)
                } catch (_: RuntimeException) {
                    fileCallback?.onReceiveValue(null)
                    fileCallback = null
                }
                return true
            }
        }
    }

    private fun launchFileChooser(picker: Intent, offerCamera: Boolean) {
        try {
            if (!offerCamera) { filePicker.launch(picker); return }
            val dir = File(cacheDir, "capture").apply { mkdirs() }
            val photo = File.createTempFile("masanawa-capture-", ".jpg", dir)
            val uri = FileProvider.getUriForFile(this, "$packageName.shellfiles", photo)
            pendingCameraFile = photo
            pendingCameraUri = uri
            val camera = Intent(MediaStore.ACTION_IMAGE_CAPTURE).apply {
                putExtra(MediaStore.EXTRA_OUTPUT, uri)
                clipData = ClipData.newRawUri("Masanawa photo", uri)
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
            }
            filePicker.launch(Intent.createChooser(picker, "Choose or take a photo").apply {
                putExtra(Intent.EXTRA_INITIAL_INTENTS, arrayOf(camera))
            })
        } catch (_: Exception) {
            pendingCameraFile?.delete()
            pendingCameraFile = null
            pendingCameraUri = null
            try { filePicker.launch(picker) } catch (_: Exception) { fileCallback?.onReceiveValue(null); fileCallback = null }
        }
    }

    private fun launchUrl(intent: Intent?): String =
        ShellDeepLinks.route(intent?.takeIf { it.action == Intent.ACTION_VIEW }?.dataString)
            ?: ShellDeepLinks.route(intent?.getStringExtra("deepLink"))
            ?: ShellDeepLinks.route(intent?.getStringExtra("characterId")?.let { "masanawa://chat/$it" })
            ?: WebOriginPolicy.HOME

    private fun collectSharedInput(intent: Intent?) {
        if (intent?.action != Intent.ACTION_SEND) return
        val text = intent.getStringExtra(Intent.EXTRA_TEXT)?.trim()?.take(4_000)
        if (!text.isNullOrEmpty()) pendingSharedText = text
        val attachment = if (Build.VERSION.SDK_INT >= 33)
            intent.getParcelableExtra(Intent.EXTRA_STREAM, Uri::class.java)
        else @Suppress("DEPRECATION") (intent.getParcelableExtra(Intent.EXTRA_STREAM) as? Uri)
        if (attachment?.scheme == "content") {
            pendingSharedAttachment = attachment
            Toast.makeText(this, "Open a chat and tap Attach to use the shared file.", Toast.LENGTH_LONG).show()
        }
    }

    private fun dispatchSharedText() {
        val shared = pendingSharedText ?: return
        if (!WebOriginPolicy.isTrusted(webView.url)) return
        pendingSharedText = null
        val quoted = JSONObject.quote(shared)
        webView.evaluateJavascript("window.__masanawaSharedText=$quoted;window.dispatchEvent(new Event('masanawa-native-share'));", null)
    }

    private fun handleNativeMessage(payload: JSONObject, reply: JavaScriptReplyProxy) {
        when (payload.optString("type")) {
            "open-article" -> {
                val requestId = payload.optString("requestId")
                val opened = articleReader.open(payload.optString("url"))
                // The web side must not treat message delivery as proof that
                // this installed native shell opened its private reader.
                if (Regex("^[a-fA-F0-9-]{36}$").matches(requestId)) {
                    reply.postMessage(JSONObject().put("type", "open-article-result")
                        .put("requestId", requestId).put("opened", opened).toString())
                }
            }
            "news-unread-count" -> {
                // Trusted main-frame origin; public headline, never account data.
                val count = payload.optInt("count", -1)
                if (count in 0..999) ShellPush.updateNewsBadge(this, count, payload.optString("headline"))
            }
            "privacy" -> {
                protectScreen = payload.optBoolean("enabled", false)
                if (protectScreen) window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
                else window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
            }
            "download-begin", "download-chunk", "download-end", "download-cancel" -> downloads.receive(payload)
            "push-token-request" -> {
                if (Build.VERSION.SDK_INT >= 33 && ContextCompat.checkSelfPermission(this,
                        Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) {
                    if (payload.optBoolean("prompt", true)) {
                        pendingPushReply = reply
                        notificationPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
                    } else reply.postMessage(
                        "{\"type\":\"push-error\",\"message\":\"Notification permission is disabled.\"}")
                } else sendPushToken(reply)
            }
            "push-token-delete" -> ShellPush.deleteToken(this)
            "call-state" -> {
                val active = payload.optBoolean("active", false)
                if (active && !callActive &&
                    ContextCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO) == PackageManager.PERMISSION_GRANTED) {
                    try {
                        ContextCompat.startForegroundService(this, Intent(this, ShellCallService::class.java).apply { action = ShellCallService.START })
                        callActive = true
                    } catch (_: RuntimeException) { callActive = false }
                } else if (!active) stopCallService()
            }
            "share-text" -> {
                val value = payload.optString("text").take(4_000)
                if (value.isNotBlank()) startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).apply {
                    type = "text/plain"
                    putExtra(Intent.EXTRA_TEXT, value)
                }, "Share from Masanawa"))
            }
            "haptic" -> {
                val effect = when (payload.optString("kind")) {
                    "selection" -> HapticFeedbackConstants.CLOCK_TICK
                    "confirm" -> if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R)
                        HapticFeedbackConstants.CONFIRM else HapticFeedbackConstants.VIRTUAL_KEY
                    "reject" -> if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R)
                        HapticFeedbackConstants.REJECT else HapticFeedbackConstants.LONG_PRESS
                    else -> null
                }
                if (effect != null) webView.performHapticFeedback(effect)
            }
        }
    }

    private fun stopCallService() {
        if (!callActive) return
        callActive = false
        try {
            startService(Intent(this, ShellCallService::class.java).apply { action = ShellCallService.STOP })
        } catch (_: RuntimeException) {
            stopService(Intent(this, ShellCallService::class.java))
        }
    }

    private fun sendPushToken(reply: JavaScriptReplyProxy) {
        ShellPush.getToken(this) { message ->
            runOnUiThread { reply.postMessage(message.toString()) }
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
            setPadding(dp(24), dp(24), dp(24), dp(24))
            setBackgroundColor(Color.WHITE)
            visibility = View.GONE
        }
        ViewCompat.setOnApplyWindowInsetsListener(content) { view, insets ->
            val bars = insets.getInsets(WindowInsetsCompat.Type.systemBars() or WindowInsetsCompat.Type.displayCutout())
            view.setPadding(maxOf(dp(24), bars.left), maxOf(dp(24), bars.top),
                maxOf(dp(24), bars.right), maxOf(dp(24), bars.bottom))
            // The WebView is a sibling and must still receive the original
            // insets. Never consume them on this parent or overlay.
            insets
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
        firstPageVisible = true
        if (::loadingBar.isInitialized) loadingBar.visibility = View.GONE
        failureText.setText(if (security) ng.unigeria.unigeria.R.string.shell_security_description
            else if (!hasInternetNetwork()) ng.unigeria.unigeria.R.string.shell_offline_description
            else ng.unigeria.unigeria.R.string.shell_connection_description)
        failureView.visibility = View.VISIBLE
        ViewCompat.requestApplyInsets(failureView)
    }

    private fun setupLoadingBar() {
        loadingBar = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            max = 100
            isIndeterminate = false
            progressTintList = ColorStateList.valueOf(Color.rgb(37, 211, 102))
            progressBackgroundTintList = ColorStateList.valueOf(Color.TRANSPARENT)
            visibility = View.GONE
        }
        container.addView(loadingBar, FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, dp(3), Gravity.TOP))
        ViewCompat.setOnApplyWindowInsetsListener(loadingBar) { view, insets ->
            val top = insets.getInsets(WindowInsetsCompat.Type.statusBars() or WindowInsetsCompat.Type.displayCutout()).top
            (view.layoutParams as FrameLayout.LayoutParams).let { params ->
                if (params.topMargin != top) {
                    params.topMargin = top
                    view.layoutParams = params
                }
            }
            insets
        }
    }

    private fun hasInternetNetwork(): Boolean {
        val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = manager.activeNetwork ?: return false
        return manager.getNetworkCapabilities(network)?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) == true
    }


    private fun checkWebDeployment() {
        val now = SystemClock.elapsedRealtime()
        if (webCheckRunning || (lastWebCheckAt != 0L && now - lastWebCheckAt < 30_000L) ||
            !hasInternetNetwork()) return
        lastWebCheckAt = now
        webCheckRunning = true
        Thread({
            val fingerprint = ShellWebUpdates.fetchFingerprint(
                webUpdatePrefs.getString("document_fingerprint", null)?.startsWith("release:") == true
            )
            runOnUiThread {
                webCheckRunning = false
                if (isFinishing || isDestroyed || fingerprint == null) return@runOnUiThread
                val previous = webUpdatePrefs.getString("document_fingerprint", null)
                if (ShellWebUpdates.changed(previous, fingerprint)) {
                    pendingWebRefresh = true
                    webUpdatePrefs.edit().putString("document_fingerprint", fingerprint)
                        .putBoolean("pending_refresh", true).apply()
                    // Do not interrupt article reading or a foreground draft/call.
                    // Apply the deployment on a safe later resume.
                } else if (previous == null || !ShellWebUpdates.sameSource(previous, fingerprint)) {
                    webUpdatePrefs.edit().putString("document_fingerprint", fingerprint).apply()
                }
            }
        }, "masanawa-web-deployment-check").apply { isDaemon = true }.start()
    }

    private fun maybeRefreshWeb() {
        if (!pendingWebRefresh || isFinishing || isDestroyed || !::webView.isInitialized) return
        if (!lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) return
        if (articleReader.isOpen() || callActive || fileCallback != null || pendingMediaRequest != null ||
            !WebOriginPolicy.isTrusted(webView.url) || !firstPageVisible || !hasWindowFocus()) return
        webView.evaluateJavascript(ShellWebUpdates.safeToReloadScript) { safe ->
            if (!pendingWebRefresh || isFinishing || isDestroyed) return@evaluateJavascript
            if (safe != "true" || articleReader.isOpen() || callActive ||
                fileCallback != null || pendingMediaRequest != null || !hasWindowFocus()) return@evaluateJavascript
            pendingWebRefresh = false
            webUpdatePrefs.edit().putBoolean("pending_refresh", false).apply()
            // Preserve session cookies and authenticated storage.
            webView.clearCache(false)
            webView.evaluateJavascript(ShellWebUpdates.reloadScript, null)
        }
    }

    private fun syncKeyboardClass() {
        if (::webView.isInitialized && WebOriginPolicy.isTrusted(webView.url)) {
            webView.evaluateJavascript(
                "(function(){const root=document.documentElement;" +
                    "root.classList.toggle('masanawa-native-keyboard-open',$keyboardVisible);" +
                    "root.style.setProperty('--masanawa-native-safe-top','${safeTopDp}px');" +
                    "root.style.setProperty('--masanawa-native-safe-bottom','${safeBottomDp}px');" +
                    "root.style.setProperty('--masanawa-native-safe-left','${safeLeftDp}px');" +
                    "root.style.setProperty('--masanawa-native-safe-right','${safeRightDp}px');" +
                    "})()", null)
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density + .5f).toInt()
}

