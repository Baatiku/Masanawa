package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Test

class ShellDownloadsTest {
    @Test fun sanitizedFileNamesAndMimeTypes() {
        assertEquals("id_receipt_.pdf", ShellDownloads.safeName("id/receipt:.pdf"))
        assertEquals("masanawa-file", ShellDownloads.safeName(""))
        assertEquals("application/octet-stream", ShellDownloads.safeMime("text/plain; charset=utf-8"))
        assertEquals("image/png", ShellDownloads.safeMime("image/png"))
        assertEquals("application/octet-stream", ShellDownloads.safeMime("../../secret"))
    }
}
