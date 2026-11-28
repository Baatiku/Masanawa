package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ShellNewsPresentationTest {
    @Test fun dismissedOrPreviouslyPresentedRowsNeverReplay() {
        assertEquals(listOf("b"), ShellNewsPresentation.fresh(listOf("a","a","b"), setOf("a")))
        assertTrue(ShellNewsPresentation.fresh(listOf("a"), ShellNewsPresentation.remember(emptySet(), listOf("a"))).isEmpty())
    }
    @Test fun presentationHistoryIsBoundedAndRetainsNewRows() {
        assertEquals(512, ShellNewsPresentation.remember(emptySet(), (1..600).map(Int::toString)).size)
        assertTrue(ShellNewsPresentation.remember(setOf("old"), listOf("new")).containsAll(listOf("old","new")))
    }
}
