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
    private const val presentedNewsKey = "presented-articles-v1"
    private const val newsArchiveKey = "public-news-archive-v1"
    private const val webSnapshotKey = "public-web-feed-v1"

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
            updatesChannel, "Citizenvoice updates", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Messages, account notices and call alerts"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
            setShowBadge(true)
        })
        manager.createNotificationChannel(NotificationChannel(
            callsChannel, "Citizenvoice incoming calls", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Incoming Citizenvoice call invitations"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
            setShowBadge(true)
        })
        manager.createNotificationChannel(NotificationChannel(
            newsChannel, "News updates", NotificationManager.IMPORTANCE_DEFAULT).apply {
            description = "Unread and newly published news articles"
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

    /** Public article archive survives shade dismissal and explicit mark-read. */
    @Synchronized
    fun publicNewsArchive(context: Context): JSONArray {
        val raw = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .getString(newsArchiveKey, null)
        return try { if (raw == null) JSONArray() else JSONArray(raw) }
        catch (_: org.json.JSONException) { JSONArray() }
    }

    @Synchronized
    fun publicNewsUnreadCount(context: Context): Int =
        context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE).getInt("unread", 0).coerceIn(0, 999)

    // Mirror the public RSS snapshot without touching unread or notification state.
    @Synchronized
    fun savePublicWebFeed(context: Context, data: JSONArray?) {
        val rows = ShellNewsDigest.read(data, ShellNewsDigest.maxArchiveItems)
            .filter { it.url != null && it.publishedAt != null }
        if (rows.isEmpty()) return
        val prefs = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
        val prior = try { ShellNewsDigest.read(JSONArray(prefs.getString(webSnapshotKey, "[]") ?: "[]"),
            ShellNewsDigest.maxArchiveItems) } catch (_: org.json.JSONException) { emptyList() }
        val combined = ShellNewsDigest.merge(rows, prior, ShellNewsDigest.maxArchiveItems)
        prefs.edit().putString(webSnapshotKey, ShellNewsDigest.encode(combined, ShellNewsDigest.maxArchiveItems)).apply()
    }

    @Synchronized
    fun offlineHome(context: Context): List<ShellNewsPreview> {
        val prefs = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
        val feed = try { ShellNewsDigest.read(JSONArray(prefs.getString(webSnapshotKey, "[]") ?: "[]"),
            ShellNewsDigest.maxArchiveItems) } catch (_: org.json.JSONException) { emptyList() }
        val pushed = ShellNewsDigest.read(publicNewsArchive(context), ShellNewsDigest.maxArchiveItems)
        return (pushed + feed).distinctBy { it.id }.sortedByDescending { it.publishedAt.orEmpty() }
            .take(ShellNewsDigest.maxArchiveItems)
    }

    private fun archiveNews(context: Context, rows: List<ShellNewsPreview>) {
        if (rows.isEmpty()) return
        val received = rows.map { if (it.receivedAt > 0) it else it.copy(receivedAt = System.currentTimeMillis()) }
        val previous = ShellNewsDigest.read(publicNewsArchive(context), ShellNewsDigest.maxArchiveItems)
        val combined = ShellNewsDigest.merge(received, previous, ShellNewsDigest.maxArchiveItems)
        context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE).edit()
            .putString(newsArchiveKey, ShellNewsDigest.encode(combined, ShellNewsDigest.maxArchiveItems)).apply()
    }

    private fun presentedNews(context: Context): Set<String> {
        val prefs = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
        val raw = prefs.getString(presentedNewsKey, null)
        // Upgrade: existing unread previews were already presented by old APKs.
        if (raw == null) return storedNews(context).map { it.id }.toSet()
        return try {
            val rows = JSONArray(raw)
            (0 until minOf(rows.length(), ShellNewsPresentation.limit))
                .map { rows.optString(it) }.filter { it.isNotBlank() }.toSet()
        } catch (_: org.json.JSONException) { storedNews(context).map { it.id }.toSet() }
    }

    private fun rememberPresented(context: Context, previous: Set<String>, incoming: List<String>) {
        val ids = ShellNewsPresentation.remember(previous, incoming)
        val encoded = JSONArray()
        ids.forEach { encoded.put(it) }
        context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .edit().putString(presentedNewsKey, encoded.toString()).apply()
    }

    private fun newsChildId(id: String): Int = 0x20000000 or (id.hashCode() and 0x0fffffff)

    private fun newsPendingIntent(context: Context, requestCode: Int): PendingIntent {
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse("https://app.chatmeup.online/?tab=home")
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        return PendingIntent.getActivity(context, requestCode, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
    }

    private fun publishNewsGroup(context: Context, count: Int, items: List<ShellNewsPreview>,
                                 fresh: List<ShellNewsPreview>) {
        if (fresh.isEmpty()) return
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED) return
        ensureChannels(context)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        // Every entry owns its own expandable BigTextStyle row. Children are
        // silent, so one group does not buzz multiple times.
        val activeIds = if (Build.VERSION.SDK_INT >= 23)
            manager.activeNotifications.map { it.id }.toSet() else emptySet()
        val freshIds = fresh.map { it.id }.toSet()
        val visibleItems = items.filter { it.id in freshIds || newsChildId(it.id) in activeIds }
        fresh.forEach { item ->
            val id = newsChildId(item.id)
            val child = NotificationCompat.Builder(context, newsChannel)
                .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
                .setBadgeIconType(NotificationCompat.BADGE_ICON_SMALL)
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
            .setSummaryText("$count unread · Citizenvoice")
        visibleItems.forEach { inbox.addLine(ShellNewsDigest.line(it)) }
        val summary = NotificationCompat.Builder(context, newsChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setBadgeIconType(NotificationCompat.BADGE_ICON_SMALL)
            .setSilent(false)
            .setContentTitle(title)
            .setContentText(visibleItems.firstOrNull()?.let { "${it.publisher}: ${it.title}" } ?: title)
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

    /** Do not recreate the Android notification shade from unread storage.
     * A swipe or process restart must not replay an old notification. */
    @Synchronized
    fun restoreUnreadNewsBadge(context: Context) {
        val prior = storedNews(context)
        if (publicNewsArchive(context).length() == 0) archiveNews(context, prior)
        rememberPresented(context, presentedNews(context), prior.map { it.id })
    }

    private fun storeNews(context: Context, count: Int, rows: List<ShellNewsPreview>) {
        context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .edit().putInt("unread", count).putString(newsEntriesKey, ShellNewsDigest.encode(rows)).apply()
    }

    @Synchronized
    fun updateNewsBadge(context: Context, count: Int, latestHeadline: String? = null,
                        previews: JSONArray? = null) {
        if (count !in 0..999) return
        val prefs = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val prior = storedNews(context)
        val presented = presentedNews(context)
        if (count == 0) {
            rememberPresented(context, presented, prior.map { it.id })
            prior.forEach { manager.cancel(newsChildId(it.id)) }
            // System-rendered background FCM news uses a tagged notification,
            // not our native child ID. Clear it only after the web app confirms
            // there are no unread news items left.
            if (Build.VERSION.SDK_INT >= 26) {
                manager.activeNotifications
                    .filter { it.notification.channelId == newsChannel }
                    .forEach { manager.cancel(it.tag, it.id) }
            }
            manager.cancel(newsNotificationId)
            prefs.edit().putInt("unread", 0).remove(newsEntriesKey).remove("lastHeadline").apply()
            return
        }
        val incoming = ShellNewsDigest.read(previews)
        archiveNews(context, incoming)
        val fallback = if (incoming.isEmpty() && prior.isEmpty())
            ShellNewsDigest.normalized("news-last", "Masanawa News", latestHeadline, null)
                ?.let { listOf(it) } ?: emptyList() else emptyList()
        val items = ShellNewsDigest.merge(incoming + fallback, prior)
        val freshIds = ShellNewsPresentation.fresh((incoming + fallback).map { it.id }, presented).toSet()
        val fresh = items.filter { it.id in freshIds }
        rememberPresented(context, presented, items.map { it.id })
        val liveIds = items.map { it.id }.toSet()
        prior.filter { it.id !in liveIds }.forEach { manager.cancel(newsChildId(it.id)) }
        val reconciledCount = maxOf(count, publicNewsUnreadCount(context) + fresh.size).coerceAtMost(999)
        storeNews(context, reconciledCount, items)
        publishNewsGroup(context, reconciledCount, items, fresh)
    }

    /** FCM child and foreground-web hints feed the same persistent public-news
     * digest, keyed by article ID rather than by whichever arrived last. */
    @Synchronized
    private fun postNewsArticle(context: Context, eventId: String?, publisher: String?,
                                headline: String?, description: String?, url: String?, publishedAt: String?) {
        val item = ShellNewsDigest.normalized(eventId, publisher, headline, description, url, publishedAt,
            System.currentTimeMillis()) ?: return
        archiveNews(context, listOf(item))
        val previous = storedNews(context)
        val presented = presentedNews(context)
        if (item.id in presented) return
        val merged = ShellNewsDigest.merge(listOf(item), previous)
        val current = context.getSharedPreferences(newsPrefsName, Context.MODE_PRIVATE)
            .getInt("unread", 0)
        val count = ShellNewsDigest.nextUnreadCount(current,
            alreadyStored = previous.any { it.id == item.id }, visibleCount = merged.size)
        val retained = merged.map { it.id }.toSet()
        previous.filter { it.id !in retained }.forEach {
            val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            manager.cancel(newsChildId(it.id))
        }
        rememberPresented(context, presented, listOf(item.id))
        storeNews(context, count, merged)
        publishNewsGroup(context, count, merged, listOf(item))
    }

    fun showNotification(context: Context, route: String, incomingCall: Boolean = false,
                         news: Boolean = false, headline: String? = null, summary: String? = null,
                         eventId: String? = null, publisher: String? = null,
                         sourceUrl: String? = null, publishedAt: String? = null) {
        if (news) { postNewsArticle(context, eventId, publisher, headline, summary, sourceUrl, publishedAt); return }
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
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setBadgeIconType(NotificationCompat.BADGE_ICON_SMALL)
            .setNumber(1)
            .setContentTitle(if (incomingCall) "Incoming call" else if (news) newsTitle ?: "Masanawa News" else "Citizenvoice")
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
            ShellPush.showNotification(this, "https://app.chatmeup.online/?tab=home",
                news = true, headline = message.data["headline"], summary = message.data["summary"],
                eventId = message.data["eventId"], publisher = message.data["publisher"],
                sourceUrl = message.data["sourceUrl"], publishedAt = message.data["publishedAt"])
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
