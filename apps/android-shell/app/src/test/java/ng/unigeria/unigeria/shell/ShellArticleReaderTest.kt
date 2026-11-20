package ng.unigeria.unigeria.shell

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ShellArticleReaderTest {
    @Test fun publisherHttpsPagesMayOpenInsideTheHost() {
        listOf(
            "https://punchng.com/news/example",
            "https://www.bbc.com/hausa/articles/example",
            "https://www.rfi.fr/ha/",
            "https://dailytrust.com/community/report",
            "https://news.example.com:443/story",
        ).forEach { assertTrue("Should open: $it", ShellArticleReader.safeArticleUrl(it)) }
    }

    @Test fun dangerousOrLocalNavigationStaysOutOfTheReader() {
        listOf(
            "http://punchng.com/news", "file:///data/data/secret", "content://data",
            "javascript:alert(1)", "intent://wallet", "https://user:pass@bbc.com/story",
            "https://127.0.0.1/", "https://10.1.2.3/", "https://192.168.0.1/",
            "https://localhost/", "https://printer.local/", "https://news.internal/",
            "https://[::1]/", "https://punchng.com:8080/story", "",
        ).forEach { assertFalse("Should reject: $it", ShellArticleReader.safeArticleUrl(it)) }
    }
}
