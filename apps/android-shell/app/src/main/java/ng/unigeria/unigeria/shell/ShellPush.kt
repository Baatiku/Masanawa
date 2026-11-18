package ng.unigeria.unigeria.shell

import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import com.google.firebase.FirebaseApp
import com.google.firebase.FirebaseOptions
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import org.json.JSONObject
import java.util.UUID

/** The web client binds the token to the authenticated account via the Gateway. */
internal object ShellPush {
    private const val channel = "masanawa_work"

    fun initialize(context: Context): Boolean {
        if (FirebaseApp.getApps(context).isNotEmpty()) return true
        val apiKey = context.getString(ng.unigeria.unigeria.R.string.masanawa_firebase_api_key)
        val appId = context.getString(ng.unigeria.unigeria.R.string.masanawa_firebase_app_id)
        val sender = context.getString(ng.unigeria.unigeria.R.string.masanawa_firebase_sender_id)
        val project = context.getString(ng.unigeria.unigeria.R.string.masanawa_firebase_project_id)
        if (listOf(apiKey, appId, sender, project).any { it.isBlank() }) return false
        return try {
            FirebaseApp.initializeApp(context, FirebaseOptions.Builder()
                .setApiKey(apiKey).setApplicationId(appId).setGcmSenderId(sender).setProjectId(project).build()) != null
        } catch (_: IllegalStateException) { false }
    }

    fun installation(context: Context): String {
        val prefs = context.getSharedPreferences("masanawa-shell-installation", Context.MODE_PRIVATE)
        return prefs.getString("installation", null) ?: "install_${UUID.randomUUID()}".also {
            prefs.edit().putString("installation", it).apply()
        }
    }

    fun getToken(context: Context, reply: (JSONObject) -> Unit) {
        if (!initialize(context)) {
            reply(JSONObject().put("type", "push-error").put("message", "Firebase Android configuration is required."))
            return
        }
        FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
            val token = if (task.isSuccessful) task.result else null
            if (token.isNullOrBlank()) reply(JSONObject().put("type", "push-error").put("message", "Device token unavailable."))
            else reply(JSONObject().put("type", "push-token").put("token", token)
                .put("installationId", installation(context)))
        }
    }

    fun deleteToken(context: Context) {
        if (initialize(context)) FirebaseMessaging.getInstance().deleteToken()
    }

    fun showNotification(context: Context, route: String) {
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (Build.VERSION.SDK_INT >= 26) manager.createNotificationChannel(NotificationChannel(
            channel, "Masanawa updates", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Messages, account notices and call alerts"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
        })
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse(route)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        val pending = PendingIntent.getActivity(context, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val notification = NotificationCompat.Builder(context, channel)
            .setSmallIcon(ng.unigeria.unigeria.R.mipmap.ic_launcher)
            .setContentTitle("Masanawa")
            .setContentText("Open the app to view your update")
            .setContentIntent(pending)
            .setAutoCancel(true)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .build()
        manager.notify((System.currentTimeMillis() % Int.MAX_VALUE).toInt(), notification)
    }
}

/** Notification contents stay generic on the lock screen; no user data goes into the Intent. */
class ShellFirebaseMessagingService : FirebaseMessagingService() {
    override fun onMessageReceived(message: RemoteMessage) {
        val type = message.data["type"] ?: return
        if (type !in setOf("agent_reply", "wallet", "account", "message", "incoming_call", "human_call", "human_message", "status")) return
        val route = ShellDeepLinks.route(message.data["deepLink"])
            ?: message.data["characterId"]?.let { ShellDeepLinks.route("masanawa://chat/$it") }
            ?: WebOriginPolicy.HOME
        ShellPush.showNotification(this, route)
    }
}
