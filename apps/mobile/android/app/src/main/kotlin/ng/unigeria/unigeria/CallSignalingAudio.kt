package ng.unigeria.unigeria

import android.app.NotificationManager
import android.content.Context
import android.media.AudioManager
import android.media.ToneGenerator
import android.os.Handler
import android.os.Looper

/** Outgoing Masana ringback only; never connects media or starts billing. */
class CallSignalingAudio(private val context: Context) {
    private val manager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private val handler = Handler(Looper.getMainLooper())
    private var owner: String? = null
    private var ringback: ToneGenerator? = null
    private val timeout = Runnable { stop() }

    fun start(lease: String, kind: String): Boolean {
        if (lease.isEmpty() || lease.length > 100 || kind != "outgoing") return false
        stop()
        val notifications = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (notifications.currentInterruptionFilter != NotificationManager.INTERRUPTION_FILTER_ALL ||
            manager.ringerMode != AudioManager.RINGER_MODE_NORMAL) return false
        owner = lease
        return try {
            val tone = ToneGenerator(AudioManager.STREAM_VOICE_CALL, 65)
            ringback = tone
            tone.startTone(ToneGenerator.TONE_SUP_RINGTONE)
            handler.postDelayed(timeout, 60_000)
            true
        } catch (_: RuntimeException) {
            stop()
            false
        }
    }

    fun stop(lease: String? = null) {
        if (lease != null && lease != owner) return
        handler.removeCallbacks(timeout)
        runCatching { ringback?.stopTone() }
        runCatching { ringback?.release() }
        ringback = null
        owner = null
    }
}
