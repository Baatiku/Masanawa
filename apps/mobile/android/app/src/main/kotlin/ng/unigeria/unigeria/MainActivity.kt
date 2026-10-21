package ng.unigeria.unigeria

import android.Manifest
import android.app.ActivityManager
import android.app.ApplicationExitInfo
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.media.AudioAttributes
import android.net.Uri
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioTrack
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlin.math.max

class MainActivity : FlutterActivity() {
    private var liveAudioTrack: AudioTrack? = null
    private var liveSampleRate: Int? = null
    private var deepLinkChannel: MethodChannel? = null
    private var diagnosticChannel: MethodChannel? = null
    private var callForegroundChannel: MethodChannel? = null
    private var signalingAudio: CallSignalingAudio? = null
    private var toneChannel: MethodChannel? = null
    private var activeCallOwners = 0
    @Volatile private var destroyed = false

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        signalingAudio = CallSignalingAudio(this)
        toneChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "masanawa/call_tone").also { channel ->
            channel.setMethodCallHandler { call, result ->
                val owner = call.argument<String>("owner")
                when (call.method) {
                    "start" -> result.success(if (owner == null) false else signalingAudio?.start(owner, call.argument<String>("kind") ?: "") == true)
                    "stop" -> { if (owner != null) signalingAudio?.stop(owner); result.success(true) }
                    else -> result.notImplemented()
                }
            }
        }

        diagnosticChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "masanawa/diagnostics",
        ).also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method == "previousExits") {
                    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                        result.success(emptyList<String>())
                    } else {
                        try {
                            val manager = getSystemService(ACTIVITY_SERVICE) as ActivityManager
                            // Android system records the previous crashes/ANRs.
                            // Never return descriptions, traces, PIDs, UIDs or timestamps.
                            val categories = manager.getHistoricalProcessExitReasons(
                                packageName, 0, 12
                            ).mapNotNull { entry ->
                                when (entry.reason) {
                                    ApplicationExitInfo.REASON_ANR -> "anr"
                                    ApplicationExitInfo.REASON_CRASH -> "java_crash"
                                    ApplicationExitInfo.REASON_CRASH_NATIVE -> "native_crash"
                                    ApplicationExitInfo.REASON_LOW_MEMORY -> "low_memory"
                                    else -> null
                                }
                            }.take(10)
                            result.success(categories)
                        } catch (_: RuntimeException) {
                            result.success(emptyList<String>())
                        }
                    }
                } else result.notImplemented()
            }
        }

        deepLinkChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "masanawa/deep_links",
        ).also { channel ->
            channel.setMethodCallHandler { call, result ->
                if (call.method == "initial") {
                    val uri = intent?.takeIf { it.action == Intent.ACTION_VIEW }?.data
                    result.success(uri?.takeIf(::isSupportedDeepLink)?.toString())
                    // Only deliver the launch intent once across reinitialization.
                    intent?.data = null
                } else {
                    result.notImplemented()
                }
            }
        }

        callForegroundChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "masanawa/live_call",
        ).also { channel ->
            channel.setMethodCallHandler { call, result ->
                when (call.method) {
                    "start" -> {
                        if (checkSelfPermission(Manifest.permission.RECORD_AUDIO)
                            != PackageManager.PERMISSION_GRANTED
                        ) {
                            result.success(false)
                        } else {
                            // Group calls share one microphone with several
                            // independent Masana Live sessions. Keep the
                            // service until the *last* session releases it.
                            val ready = if (activeCallOwners > 0) {
                                true
                            } else {
                                try {
                                    val service = Intent(
                                        this, MasanawaCallService::class.java
                                    ).apply {
                                        action = MasanawaCallService.ACTION_START
                                    }
                                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                                        startForegroundService(service)
                                    } else {
                                        startService(service)
                                    }
                                    true
                                } catch (_: SecurityException) {
                                    false
                                } catch (_: RuntimeException) {
                                    false
                                }
                            }
                            if (ready) activeCallOwners++
                            result.success(ready)
                        }
                    }

                    "stop" -> {
                        if (activeCallOwners > 0) {
                            activeCallOwners--
                            if (activeCallOwners == 0) {
                                stopService(Intent(this, MasanawaCallService::class.java))
                            }
                        }
                        result.success(true)
                    }

                    else -> result.notImplemented()
                }
            }
        }

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "masanawa/live_pcm",
            io.flutter.plugin.common.StandardMethodCodec.INSTANCE,
            flutterEngine.dartExecutor.binaryMessenger.makeBackgroundTaskQueue(),
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "start" -> {
                    val sampleRate = call.argument<Int>("sampleRate") ?: 24000
                    result.success(startLivePcm(sampleRate))
                }

                "write" -> {
                    val bytes = call.argument<ByteArray>("bytes")
                    if (bytes == null || bytes.isEmpty()) {
                        result.success(false)
                    } else {
                        val track = liveAudioTrack
                        if (track == null ||
                            track.state != AudioTrack.STATE_INITIALIZED
                        ) {
                            result.success(false)
                        } else {
                            result.success(writeLivePcm(bytes))
                        }
                    }
                }

                "stop" -> {
                    stopLivePcm()
                    result.success(true)
                }

                "release" -> {
                    stopLivePcm()
                    restoreAudioRoute()
                    result.success(true)
                }

                "speaker" -> {
                    val enabled = call.argument<Boolean>("enabled") ?: true
                    result.success(setSpeakerRoute(enabled))
                }

                else -> result.notImplemented()
            }
        }
    }

    @Synchronized
    private fun startLivePcm(sampleRate: Int): Boolean {
        if (destroyed) return false
        if (sampleRate !in 8000..48000) return false
        val existing = liveAudioTrack
        if (existing != null && liveSampleRate == sampleRate &&
            existing.state == AudioTrack.STATE_INITIALIZED &&
            existing.playState == AudioTrack.PLAYSTATE_PLAYING
        ) return true
        stopLivePcm()

        val minBuffer = AudioTrack.getMinBufferSize(
            sampleRate,
            AudioFormat.CHANNEL_OUT_MONO,
            AudioFormat.ENCODING_PCM_16BIT,
        )
        if (minBuffer <= 0) return false

        val format = AudioFormat.Builder()
            .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
            .setSampleRate(sampleRate)
            .setChannelMask(AudioFormat.CHANNEL_OUT_MONO)
            .build()

        val attributes = AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_VOICE_COMMUNICATION)
            .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
            .build()

        val track = AudioTrack(
            attributes,
            format,
            max(minBuffer * 2, sampleRate / 2),
            AudioTrack.MODE_STREAM,
            AudioManager.AUDIO_SESSION_ID_GENERATE,
        )
        if (track.state != AudioTrack.STATE_INITIALIZED) {
            track.release()
            return false
        }

        liveAudioTrack = track
        liveSampleRate = sampleRate
        track.play()
        return true
    }

    @Suppress("DEPRECATION")
    private fun setSpeakerRoute(enabled: Boolean): Boolean {
        val audioManager = getSystemService(AUDIO_SERVICE) as AudioManager
        return try {
            audioManager.mode = AudioManager.MODE_IN_COMMUNICATION
            audioManager.isSpeakerphoneOn = enabled
            true
        } catch (_: RuntimeException) {
            false
        }
    }

    @Synchronized
    private fun writeLivePcm(bytes: ByteArray): Boolean {
        val track = liveAudioTrack ?: return false
        if (track.state != AudioTrack.STATE_INITIALIZED) return false
        var offset = 0
        try {
            while (offset < bytes.size) {
                val written = track.write(bytes, offset, bytes.size - offset,
                    AudioTrack.WRITE_BLOCKING)
                if (written <= 0) return false
                offset += written
            }
            return true
        } catch (_: RuntimeException) {
            return false
        }
    }

    @Synchronized
    private fun stopLivePcm() {
        val track = liveAudioTrack ?: return
        liveAudioTrack = null
        liveSampleRate = null
        try {
            track.pause()
            track.flush()
            track.stop()
        } catch (_: IllegalStateException) {
            // Track may already be stopped by the platform.
        } finally {
            track.release()
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        val uri = intent.data
        if (intent.action == Intent.ACTION_VIEW && isSupportedDeepLink(uri)) {
            deepLinkChannel?.invokeMethod("open", uri.toString())
            intent.data = null
        }
    }

    private fun isSupportedDeepLink(uri: Uri?): Boolean {
        uri ?: return false
        if (uri.scheme == "masanawa") return true
        if (uri.scheme != "https" || !uri.host.equals("masanawa.com", ignoreCase = true)) {
            return false
        }
        if (uri.port != -1) return false
        val segments = uri.pathSegments
        return segments.size == 2 && segments[0] == "twin" && segments[1].isNotBlank()
    }

    override fun onDestroy() {
        destroyed = true
        signalingAudio?.stop()
        signalingAudio = null
        toneChannel?.setMethodCallHandler(null)
        toneChannel = null
        stopLivePcm()
        restoreAudioRoute()
        diagnosticChannel?.setMethodCallHandler(null)
        diagnosticChannel = null
        deepLinkChannel?.setMethodCallHandler(null)
        deepLinkChannel = null
        callForegroundChannel?.setMethodCallHandler(null)
        callForegroundChannel = null
        activeCallOwners = 0
        stopService(Intent(this, MasanawaCallService::class.java))
        super.onDestroy()
    }

    private fun restoreAudioRoute() {
        @Suppress("DEPRECATION")
        (getSystemService(AUDIO_SERVICE) as AudioManager).apply {
            isSpeakerphoneOn = false
            mode = AudioManager.MODE_NORMAL
        }
    }
}
