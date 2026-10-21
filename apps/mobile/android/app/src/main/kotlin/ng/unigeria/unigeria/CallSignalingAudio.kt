package ng.unigeria.unigeria

import android.app.NotificationManager
import android.content.Context
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioManager
import android.media.Ringtone
import android.media.RingtoneManager
import android.media.ToneGenerator
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.VibrationEffect
import android.os.Vibrator

/** UI call signaling only; does not connect media, start billing or own a mic. */
class CallSignalingAudio(private val context: Context) {
    private val manager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private val handler = Handler(Looper.getMainLooper())
    private var owner: String? = null
    private var ringtone: Ringtone? = null
    private var ringback: ToneGenerator? = null
    private var vibrator: Vibrator? = null
    private var focus: AudioFocusRequest? = null
    private val legacyFocus = AudioManager.OnAudioFocusChangeListener { change ->
        if (change < 0) stop()
    }
    private val timeout = Runnable { stop() }

    @Suppress("DEPRECATION")
    fun start(lease: String, kind: String): Boolean {
        if (lease.isEmpty() || lease.length > 100 || kind !in listOf("incoming", "outgoing")) return false
        stop()
        val notifications = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        // Respect DND and silent mode; never override a user's interruption policy.
        if (notifications.currentInterruptionFilter != NotificationManager.INTERRUPTION_FILTER_ALL ||
            manager.ringerMode == AudioManager.RINGER_MODE_SILENT) return false
        val attributes = AudioAttributes.Builder()
            .setUsage(if (kind == "incoming") AudioAttributes.USAGE_NOTIFICATION_RINGTONE else AudioAttributes.USAGE_VOICE_COMMUNICATION_SIGNALLING)
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION).build()
        owner = lease
        try {
            if (kind == "incoming" && Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val request = AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT)
                    .setAudioAttributes(attributes).setOnAudioFocusChangeListener(legacyFocus).build()
                focus = request
                if (manager.requestAudioFocus(request) != AudioManager.AUDIOFOCUS_REQUEST_GRANTED) {
                    stop(); return false
                }
            } else if (kind == "incoming" && manager.requestAudioFocus(legacyFocus, AudioManager.STREAM_RING,
                    AudioManager.AUDIOFOCUS_GAIN_TRANSIENT) != AudioManager.AUDIOFOCUS_REQUEST_GRANTED) {
                stop(); return false
            }
            if (kind == "incoming" && manager.ringerMode == AudioManager.RINGER_MODE_VIBRATE) {
                val v = context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator
                vibrator = v
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    v.vibrate(VibrationEffect.createWaveform(longArrayOf(0, 600, 1400), 0), attributes)
                } else v.vibrate(longArrayOf(0, 600, 1400), 0)
            } else if (manager.ringerMode == AudioManager.RINGER_MODE_NORMAL) {
                if (kind == "incoming") {
                    val sound = RingtoneManager.getRingtone(context, RingtoneManager.getDefaultUri(RingtoneManager.TYPE_RINGTONE))
                    ringtone = sound
                    sound.audioAttributes = attributes
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) sound.isLooping = true
                    sound.play()
                } else {
                    val tone = ToneGenerator(AudioManager.STREAM_VOICE_CALL, 65)
                    ringback = tone
                    tone.startTone(ToneGenerator.TONE_SUP_RINGTONE)
                }
            }
            handler.postDelayed(timeout, 60_000)
            return true
        } catch (_: RuntimeException) {
            stop(); return false
        }
    }

    @Suppress("DEPRECATION")
    fun stop(lease: String? = null) {
        if (lease != null && lease != owner) return
        handler.removeCallbacks(timeout)
        ringtone?.stop(); ringtone = null
        ringback?.stopTone(); ringback?.release(); ringback = null
        vibrator?.cancel(); vibrator = null
        val request = focus
        focus = null
        if (owner != null) {
            owner = null
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && request != null) manager.abandonAudioFocusRequest(request)
            else manager.abandonAudioFocus(legacyFocus)
        }
    }
}
