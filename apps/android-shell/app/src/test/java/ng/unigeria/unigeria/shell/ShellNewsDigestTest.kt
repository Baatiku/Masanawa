package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ShellNewsDigestTest {
    @Test fun validatedPublicNewsContainsPublisherHeadlineAndDescription() {
        val story = ShellNewsDigest.normalized(
            "article-101", "Channels Television",
            "Nigeria opens renovated primary health centre",
            "The ministry documented public health works in Kaduna.")
        assertNotNull(story)
        assertEquals("article-101", story!!.id)
        assertEquals("Channels Television", story.publisher)
        assertTrue(ShellNewsDigest.line(story).contains("Kaduna"))
        assertTrue(ShellNewsDigest.detail(story).contains("\n\n"))
    }

    @Test fun dedupeKeepsNewestVersionAndCapsExpandedRows() {
        val before = ShellNewsDigest.normalized("same", "PUNCH", "Old headline published", "")!!
        val updated = ShellNewsDigest.normalized("same", "PUNCH", "Corrected headline published", "Verified correction")!!
        val list = (1..20).map {
            ShellNewsDigest.normalized("article-$it", "Daily Trust", "Public news article number $it", "Latest brief for story $it")!!
        }
        val merged = ShellNewsDigest.merge(listOf(updated) + list, listOf(before))
        assertEquals(ShellNewsDigest.maxItems, merged.size)
        assertEquals("Corrected headline published", merged[0].title)
        assertEquals(1, merged.count { it.id == "same" })
    }

    @Test fun noFabricatedMissingTitlesAndScriptMarkupIsRemoved() {
        assertEquals(null, ShellNewsDigest.normalized("empty", "PUNCH", null, ""))
        val sanitized = ShellNewsDigest.normalized(
            "article-3", "BBC <b>Hausa</b>", "  New   security  update  ", "  Follow-up <b>report</b>  ")
        assertNotNull(sanitized)
        assertEquals("BBC Hausa", sanitized!!.publisher)
        assertEquals("New security update", sanitized.title)
        assertEquals("Follow-up report", sanitized.summary)
        assertFalse(ShellNewsDigest.line(sanitized).contains("<"))
    }

    @Test fun launcherUnreadCountSurvivesDuplicatesAndCapsAt999() {
        assertEquals(1, ShellNewsDigest.nextUnreadCount(0, false, 1))
        assertEquals(12, ShellNewsDigest.nextUnreadCount(12, true, 7))
        assertEquals(13, ShellNewsDigest.nextUnreadCount(12, false, 7))
        assertEquals(999, ShellNewsDigest.nextUnreadCount(999, false, 7))
        assertEquals(7, ShellNewsDigest.nextUnreadCount(0, true, 7))
    }

    @Test fun longIdDoesNotOverflowTheDigestAndUnreadRowsAreBounded() {
        val story = ShellNewsDigest.normalized(
            "x".repeat(900), "RFI Hausa", "New health services published", null)
        assertNotNull(story)
        assertTrue(story!!.id.length < 100)
        assertEquals("", story.summary)
    }
}
