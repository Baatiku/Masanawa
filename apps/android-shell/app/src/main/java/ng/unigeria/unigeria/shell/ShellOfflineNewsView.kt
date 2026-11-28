package ng.unigeria.unigeria.shell

import android.content.Context
import android.graphics.Color
import android.graphics.Typeface
import android.text.Editable
import android.text.TextWatcher
import android.view.Gravity
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView

/** Read-only public Home for an unavailable WebView. No cookies, private
 * account data, network requests or executable publisher markup enter this UI. */
internal class ShellOfflineNewsView(context: Context, private val refresh: () -> Unit) :
    LinearLayout(context) {
    private val green = Color.rgb(37, 211, 102)
    private val ink = Color.rgb(24, 39, 30)
    private val muted = Color.rgb(91, 108, 98)
    private val list = LinearLayout(context).apply { orientation = VERTICAL }
    private val search = EditText(context)
    private var rows = emptyList<ShellNewsPreview>()
    private fun dp(n: Int) = (n * resources.displayMetrics.density + .5f).toInt()
    private fun label(value: String, size: Float, color: Int, bold: Boolean = false) =
        TextView(context).apply {
            text = value
            textSize = size
            setTextColor(color)
            if (bold) setTypeface(null, Typeface.BOLD)
        }

    init {
        orientation = VERTICAL
        setBackgroundColor(Color.WHITE)
        val header = LinearLayout(context).apply {
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(16), dp(8), dp(12), dp(8))
        }
        header.addView(label("Citizenvoice", 25f, green, true), LayoutParams(0, -2, 1f))
        header.addView(Button(context).apply {
            text = "Refresh"
            isAllCaps = false
            setTextColor(ink)
            setOnClickListener { refresh() }
        })
        addView(header)
        addView(label("Saved updates", 12f, muted).apply {
            gravity = Gravity.CENTER
            setPadding(0, dp(4), 0, dp(8))
        })
        search.apply {
            hint = "Search saved news"
            setSingleLine(true)
            textSize = 15f
            setPadding(dp(16), dp(10), dp(16), dp(10))
            addTextChangedListener(object : TextWatcher {
                override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
                override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) { render() }
                override fun afterTextChanged(s: Editable?) = Unit
            })
        }
        addView(search, LayoutParams(-1, -2))
        addView(ScrollView(context).apply { addView(list); isFillViewport = true }, LayoutParams(-1, 0, 1f))
    }

    fun update(items: List<ShellNewsPreview>) {
        if (rows == items && list.childCount > 0) return
        rows = items
        render()
    }

    private fun render() {
        list.removeAllViews()
        val q = search.text?.toString()?.trim().orEmpty()
        val visible = rows.filter { q.isEmpty() ||
            listOf(it.publisher, it.title, it.summary).any { value -> value.contains(q, ignoreCase = true) } }
        if (visible.isEmpty()) {
            list.addView(label(if (q.isEmpty()) "Downloaded news will appear here." else "No matching saved news.", 15f, muted).apply {
                gravity = Gravity.CENTER
                setPadding(dp(20), dp(36), dp(20), dp(16))
            })
            return
        }
        visible.forEach { row ->
            val card = LinearLayout(context).apply {
                orientation = VERTICAL
                setPadding(dp(16), dp(16), dp(16), dp(16))
                addView(label(row.publisher, 14f, muted, true))
                row.publishedAt?.take(10)?.let { addView(label(it, 12f, muted)) }
                addView(label(row.title, 18f, ink, true).apply { setPadding(0, dp(8), 0, dp(4)) })
                if (row.summary.isNotBlank()) addView(label(row.summary, 15f, ink))
            }
            list.addView(card)
            list.addView(View(context).apply { setBackgroundColor(Color.rgb(239, 242, 240)) }, LayoutParams(-1, dp(6)))
        }
    }
}
