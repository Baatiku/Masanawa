.class public final Lcom/opay/webview/category/DefaultWebView;
.super Ljava/lang/Object;
.source "DefaultWebView.kt"

# interfaces
.implements Lcom/opay/webview/category/IWebViewInit;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lcom/opay/webview/category/IWebViewInit;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\rH\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0016J>\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0010H\u0016J\u0012\u0010\u001a\u001a\u00020\u00102\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/opay/webview/category/DefaultWebView;",
        "Lcom/opay/webview/category/IWebViewInit;",
        "()V",
        "context",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "headMap",
        "",
        "",
        "url",
        "userAgent",
        "webCommonViewClient",
        "Landroid/webkit/WebViewClient;",
        "webView",
        "Landroid/webkit/WebView;",
        "webViewCookie",
        "getHostWebView",
        "",
        "webview",
        "getWebViewClient",
        "init",
        "loadUrl",
        "match",
        "",
        "code",
        "",
        "onDestroy",
        "setWebViewClient",
        "webViewClient",
        "webview_lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private context:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webCommonViewClient:Landroid/webkit/WebViewClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;

.field private webViewCookie:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->userAgent:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->webViewCookie:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getHostWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webview"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/webview/category/DefaultWebView;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    return-void
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->webCommonViewClient:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userAgent"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "webViewCookie"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "headMap"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/opay/webview/category/DefaultWebView;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/opay/webview/category/DefaultWebView;->url:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/opay/webview/category/DefaultWebView;->userAgent:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p4, p0, Lcom/opay/webview/category/DefaultWebView;->webViewCookie:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p5, p0, Lcom/opay/webview/category/DefaultWebView;->headMap:Ljava/util/Map;

    .line 30
    .line 31
    return-void
.end method

.method public loadUrl()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->headMap:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "headMap"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const-string v3, "url"

    .line 20
    .line 21
    const-string v4, "webView"

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/opay/webview/category/DefaultWebView;->webView:Landroid/webkit/WebView;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v2, v1

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/opay/webview/category/DefaultWebView;->url:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v1, v4

    .line 42
    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->webView:Landroid/webkit/WebView;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v1

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/opay/webview/category/DefaultWebView;->url:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move-object v1, v2

    .line 63
    :goto_2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/opay/webview/category/DefaultWebView$loadUrl$1;->INSTANCE:Lcom/opay/webview/category/DefaultWebView$loadUrl$1;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/opay/webview/util/WebfoundationUtilsKt;->c(Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_4
    return-void
.end method

.method public match(I)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 2
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/opay/webview/CommonWebViewClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/webview/category/DefaultWebView;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/opay/webview/CommonWebViewClient;-><init>(Landroid/webkit/WebViewClient;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->webCommonViewClient:Landroid/webkit/WebViewClient;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/opay/webview/category/DefaultWebView;->webView:Landroid/webkit/WebView;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "webView"

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/category/DefaultWebView;->webCommonViewClient:Landroid/webkit/WebViewClient;

    .line 21
    .line 22
    const-string v1, "null cannot be cast to non-null type com.opay.webview.CommonWebViewClient"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Lcom/opay/webview/CommonWebViewClient;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
