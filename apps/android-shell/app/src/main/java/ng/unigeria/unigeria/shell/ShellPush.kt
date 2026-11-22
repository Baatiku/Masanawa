package ng.unigeria.unigeria.shell

import android.Manifest
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.pm.PackageManager
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import com.google.firebase.FirebaseApp
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import org.json.JSONObject
import org.json.JSONArray
import java.util.UUID

/** The web client binds the token to the authenticated account via the Gateway. */
internal object ShellPush {
    private const val updatesChannel = "masanawa_work"
    private const val callsChannel = "masanawa_calls"
    private const val newsChannel = "masanawa_news"
    private const val newsNotificationId = 0x4e5753
    private const val newsGroupKey = "masanawa.news.articles"
    private const val newsPrefsName = "masanawa-shell-news"
    private const val newsEntriesKey = "articles-v2"

    fun initialize(context: Context): Boolean {
        if (FirebaseApp.getApps(context).isNotEmpty()) return true
        // FirebaseInitProvider normally reads the Google Services generated
        // resources before this method. Re-try once for unusual process starts.
        return try {
            FirebaseApp.initializeApp(context) != null
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

    fun ensureChannels(context: Context) {
        if (Build.VERSION.SDK_INT < 26) return
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        manager.createNotificationChannel(NotificationChannel(
            updatesChannel, "Masanawa updates", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Messages, account notices and call alerts"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
        })
        manager.createNotificationChannel(NotificationChannel(
            callsChannel, "Masanawa incoming calls", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Incoming Masanawa call invitations"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
        })
        manager.createNotificationChannel(NotificationChannel(
            newsChannel, "News updates", NotificationManager.IMPORTANCE_DEFAULT).apply {
            description = "Unread and newly published Masanawa news articles"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
            setShowBadge(true)
        })
    }

    /** The unread badge remains quiet. Android 7+ can unfold a proper group
     * of child news notifications, while InboxStyle also shows each article's
     * headline/description on the summary when users expand it. */
    private fun storedNews(context: Context): List<ShellNewsPreview> {
        val raw = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .getString(newsEntriesKey, null) ?: return emptyList()
        return try { ShellNewsDigest.read(JSONArray(raw)) }
        catch (_: org.json.JSONException) { emptyList() }
    }

    private fun newsChildId(id: String): Int = 0x20000000 or (id.hashCode() and 0x0fffffff)

    private fun newsPendingIntent(context: Context, requestCode: Int): PendingIntent {
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse("https://app.masanawa.com/?tab=home")
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        return PendingIntent.getActivity(context, requestCode, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
    }

    private fun publishNewsGroup(context: Context, count: Int, items: List<ShellNewsPreview>) {
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) return
        ensureChannels(context)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        // Every entry owns its own expandable BigTextStyle row. Children are
        // silent, so one group does not buzz multiple times.
        items.forEach { item ->
            val id = newsChildId(item.id)
            val child = NotificationCompat.Builder(context, newsChannel)
                .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_stat_masanawa)
                .setContentTitle(item.publisher)
                .setContentText(item.title)
                .setStyle(NotificationCompat.BigTextStyle().bigText(ShellNewsDigest.detail(item))
                    .setBigContentTitle(item.publisher))
                .setContentIntent(newsPendingIntent(context, id))
                .setAutoCancel(true)
                .setOnlyAlertOnce(true)
                .setSilent(true)
                .setGroup(newsGroupKey)
                .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_SUMMARY)
                .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
                .setColor(ContextCompat.getColor(context, ng.unigeria.unigeria.R.color.masanawa_notification_color))
                .setCategory(NotificationCompat.CATEGORY_RECOMMENDATION)
                .build()
            manager.notify(id, child)
        }
        val title = if (count == 1) "1 unread news article" else "$count unread news articles"
        val inbox = NotificationCompat.InboxStyle().setBigContentTitle(title)
            .setSummaryText("$count unread · Masanawa News")
        items.forEach { inbox.addLine(ShellNewsDigest.line(it)) }
        if (count > items.size && items.isNotEmpty()) inbox.addLine("+${count - items.size} more unread updates in Home")
        val summary = NotificationCompat.Builder(context, newsChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_stat_masanawa)
            .setContentTitle(title)
            .setContentText(items.firstOrNull()?.let { "${it.publisher}: ${it.title}" } ?: title)
            .setStyle(inbox)
            .setContentIntent(newsPendingIntent(context, newsNotificationId))
            .setOnlyAlertOnce(true)
            .setNumber(count)
            .setGroup(newsGroupKey)
            .setGroupSummary(true)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_SUMMARY)
            .setCategory(NotificationCompat.CATEGORY_RECOMMENDATION)
            .setColor(ContextCompat.getColor(context, ng.unigeria.unigeria.R.color.masanawa_notification_color))
            .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
        manager.notify(newsNotificationId, summary)
    }

    private fun storeNews(context: Context, count: Int, rows: List<ShellNewsPreview>) {
        context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .edit().putInt("unread", count).putString(newsEntriesKey, ShellNewsDigest.encode(rows)).apply()
    }

    fun updateNewsBadge(context: Context, count: Int, latestHeadline: String? = null,
                        previews: JSONArray? = null) {
        if (count !in 0..999) return
        val prefs = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val prior = storedNews(context)
        if (count == 0) {
            prior.forEach { manager.cancel(newsChildId(it.id)) }
            manager.cancel(newsNotificationId)
            prefs.edit().putInt("unread", 0).remove(newsEntriesKey).remove("lastHeadline").apply()
            return
        }
        val incoming = ShellNewsDigest.read(previews)
        val fallback = if (incoming.isEmpty() && prior.isEmpty())
            ShellNewsDigest.normalized("news-last", "Masanawa News", latestHeadline, null)
                ?.let { listOf(it) } ?: emptyList() else emptyList()
        val items = ShellNewsDigest.merge(incoming + fallback, prior)
        val encoded = ShellNewsDigest.encode(items)
        val unchanged = prefs.getInt("unread", -1) == count &&
            prefs.getString(newsEntriesKey, null) == encoded &&
            Build.VERSION.SDK_INT >= 23 &&
            manager.activeNotifications.any { it.id == newsNotificationId }
        if (unchanged) return
        val liveIds = items.map { it.id }.toSet()
        prior.filter { it.id !in liveIds }.forEach { manager.cancel(newsChildId(it.id)) }
        storeNews(context, count, items)
        publishNewsGroup(context, count, items)
    }

    /** FCM child and foreground-web hints feed the same persistent public-news
     * digest, keyed by article ID rather than by whichever arrived last. */
    private fun postNewsArticle(context: Context, eventId: String?, publisher: String?,
                                headline: String?, description: String?) {
        val item = ShellNewsDigest.normalized(eventId, publisher, headline, description) ?: return
        val previous = storedNews(context)
        val merged = ShellNewsDigest.merge(listOf(item), previous)
        val current = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .getInt("unread", 0)
        val count = if (previous.any { it.id == item.id }) maxOf(current, merged.size)
            else maxOf(current + 1, merged.size).coerceAtMost(999)
        storeNews(context, count, merged)
        publishNewsGroup(context, count, merged)
    }

    fun showNotification(context: Context, route: String, incomingCall: Boolean = false,
                         news: Boolean = false, headline: String? = null, summary: String? = null,
                         eventId: String? = null, publisher: String? = null) {
        if (news) { postNewsArticle(context, eventId, publisher, headline, summary); return }
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED)
            return
        ensureChannels(context)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse(route)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        // One request code for every destination. Using 0 would make earlier
        // notifications open the most recently received contact instead.
        val requestCode = ShellNotificationIdentity.requestCode(route, incomingCall)
        val pending = PendingIntent.getActivity(context, requestCode, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val newsTitle = ShellNotificationIdentity.publicNewsText(headline, 180)
        val newsBody = ShellNotificationIdentity.publicNewsText(summary, 300)
        val notification = NotificationCompat.Builder(context, if (incomingCall) callsChannel else if (news) newsChannel else updatesChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_stat_masanawa)
            .setContentTitle(if (incomingCall) "Incoming call" else if (news) newsTitle ?: "Masanawa News" else "Masanawa")
            .setContentText(if (incomingCall) "Open Calls to respond" else if (news) newsBody ?: newsTitle ?: "New publisher article" else "Open the app to view your update")
            .setStyle(if (news) NotificationCompat.BigTextStyle().bigText(newsBody ?: newsTitle ?: "New publisher article") else NotificationCompat.BigTextStyle())
            .setContentIntent(pending)
            .setAutoCancel(true)
            .setColor(ContextCompat.getColor(context, ng.unigeria.unigeria.R.color.masanawa_notification_color))
            .setCategory(if (incomingCall) NotificationCompat.CATEGORY_CALL else NotificationCompat.CATEGORY_MESSAGE)
            .setVisibility(if (news) NotificationCompat.VISIBILITY_PUBLIC else NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .build()
        val notificationId = if (news && !eventId.isNullOrBlank())
            ("masanawa-news:$eventId").hashCode() and Int.MAX_VALUE
        else (System.currentTimeMillis() % Int.MAX_VALUE).toInt()
        manager.notify(notificationId, notification)
    }
}

/** Notification contents stay generic on the lock screen; no user data goes into the Intent. */
class ShellFirebaseMessagingService : FirebaseMessagingService() {
    @Suppress("DEPRECATION") // Legacy token mode is required by the current Gateway push API.
    override fun onNewToken(token: String) {
        super.onNewToken(token)
        // Do not transmit a token in the background without an authenticated
        // account. The opted-in web client rebinds it upon the next resume.
        getSharedPreferences("masanawa-shell-push-events", Context.MODE_PRIVATE)
            .edit().putLong("refreshedAt", System.currentTimeMillis()).apply()
    }

    override fun onMessageReceived(message: RemoteMessage) {
        val type = message.data["type"] ?: return
        if (type == "news_article" || type == "news_update") {
            ShellPush.showNotification(this, "https://app.masanawa.com/?tab=home",
                news = true, headline = message.data["headline"], summary = message.data["summary"],
                eventId = message.data["eventId"], publisher = message.data["publisher"])
            return
        }
        if (!Regex("^[a-z][a-z0-9_]{0,63}$").matches(type) || type.startsWith("human_") ||
            type.startsWith("room_") || type.startsWith("p2p_")) return
        val route = ShellDeepLinks.route(message.data["deepLink"])
            ?: message.data["characterId"]?.let { ShellDeepLinks.route("masanawa://chat/$it") }
            ?: WebOriginPolicy.HOME
        ShellPush.showNotification(this, route,
            incomingCall = ShellNotificationIdentity.isIncomingCall(type, message.data["callId"]))
    }
}
