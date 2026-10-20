.class public Lcom/opay/webview/CommonWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CommonWebViewClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0019J-\u0010\u001e\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ5\u0010$\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00172\u0008\u0010#\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008$\u0010%J-\u0010$\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010&H\u0017\u00a2\u0006\u0004\u0008$\u0010\'J-\u0010*\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J#\u0010,\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008,\u0010-J#\u0010/\u001a\u0004\u0018\u00010.2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008/\u00100J-\u00101\u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\u00172\u0008\u0010\"\u001a\u0004\u0018\u00010\u00172\u0008\u0010#\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u00081\u00102J#\u00105\u001a\u00020\u00082\u0008\u00104\u001a\u0004\u0018\u0001032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u00085\u00106J#\u00107\u001a\u0004\u0018\u00010.2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00087\u00100J\u001b\u00108\u001a\u0004\u0018\u00010.2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u00088\u00109J%\u0010=\u001a\u0004\u0018\u00010<2\u0008\u0010\u0004\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u001b\u0010?\u001a\u0004\u0018\u00010<2\u0008\u0010;\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010B\u001a\u00020\t2\u0006\u0010A\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008B\u0010CR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010DR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u00085\u0010E\u001a\u0004\u0008F\u0010GR\u0016\u0010J\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010IR\"\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010KR\u0016\u0010N\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u0010MR\u0016\u0010O\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010PR\u0016\u0010R\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010MR\u001a\u0010W\u001a\u0008\u0012\u0004\u0012\u00020T0S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u001c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00170X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/opay/webview/CommonWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "webViewClient",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "context",
        "<init>",
        "(Landroid/webkit/WebViewClient;Landroidx/appcompat/app/AppCompatActivity;)V",
        "Lkotlin/Function1;",
        "",
        "",
        "handleErrorListener",
        "h",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroid/webkit/WebView;",
        "view",
        "Landroid/webkit/WebResourceRequest;",
        "request",
        "shouldOverrideUrlLoading",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "detail",
        "onRenderProcessGone",
        "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z",
        "",
        "url",
        "(Landroid/webkit/WebView;Ljava/lang/String;)Z",
        "Landroid/webkit/SslErrorHandler;",
        "handler",
        "Landroid/net/http/SslError;",
        "error",
        "onReceivedSslError",
        "(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V",
        "",
        "errorCode",
        "description",
        "failingUrl",
        "onReceivedError",
        "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceError;",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "Landroid/graphics/Bitmap;",
        "favicon",
        "onPageStarted",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "onPageFinished",
        "(Landroid/webkit/WebView;Ljava/lang/String;)V",
        "Landroid/webkit/WebResourceResponse;",
        "shouldInterceptRequest",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/net/Uri;",
        "uri",
        "b",
        "(Landroid/net/Uri;Landroid/webkit/WebView;)Z",
        "e",
        "d",
        "(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;",
        "Landroid/content/Context;",
        "path",
        "Ljava/io/InputStream;",
        "f",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;",
        "c",
        "(Ljava/lang/String;)Ljava/io/InputStream;",
        "data",
        "g",
        "(Ljava/lang/String;)V",
        "Landroid/webkit/WebViewClient;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "getContext",
        "()Landroidx/appcompat/app/AppCompatActivity;",
        "",
        "J",
        "startTime",
        "Lkotlin/jvm/functions/Function1;",
        "showError",
        "Z",
        "loadError",
        "loadingStatus",
        "Ljava/lang/Boolean;",
        "enableedTraceWebViewErrorEvent",
        "openHybrid",
        "",
        "Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;",
        "i",
        "Ljava/util/List;",
        "hybridDelegateList",
        "",
        "j",
        "Ljava/util/Set;",
        "hashMutableMapAnalytics",
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
.field public final a:Landroid/webkit/WebViewClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:J

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClient;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 4
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/webview/CommonWebViewClient;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    sget-object p1, Lcom/opay/webview/CommonWebViewClient$showError$1;->INSTANCE:Lcom/opay/webview/CommonWebViewClient$showError$1;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->d:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/opay/webview/CommonWebViewClient;->f:Z

    .line 14
    .line 15
    sget-object p2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 16
    .line 17
    const-class v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-class v2, Lcom/opay/webview/abtest/WebViewErrorABTest;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/opay/webview/abtest/WebViewErrorABTest;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/opay/webview/abtest/WebViewErrorABTest;->getValue()Lcom/opay/webview/abtest/WebViewErrorABTest;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/opay/webview/abtest/WebViewErrorABTest;->getDefaultTrackEvent()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    iput-object v1, p0, Lcom/opay/webview/CommonWebViewClient;->g:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    const-string v3, "opay_is_open_hybrid"

    .line 67
    .line 68
    invoke-interface {v0, v3, v2}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ne v0, p1, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    :goto_1
    iput-boolean p1, p0, Lcom/opay/webview/CommonWebViewClient;->h:Z

    .line 83
    .line 84
    new-instance p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->i:Ljava/util/List;

    .line 90
    .line 91
    const-class p1, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    iget-object p2, p0, Lcom/opay/webview/CommonWebViewClient;->i:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->j:Ljava/util/Set;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lll8;->a:Lll8;

    .line 12
    .line 13
    const-string v0, "errorCode"

    .line 14
    .line 15
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "errorMessage"

    .line 20
    .line 21
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "failingUrl"

    .line 26
    .line 27
    invoke-static {v3, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x3

    .line 32
    new-array v4, v4, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v0, v4, v5

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v2, v4, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v3, v4, v0

    .line 42
    .line 43
    const/16 v6, 0xc

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v2, "webview_page_onreceive_error"

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    move-object v3, v4

    .line 50
    move v4, v0

    .line 51
    invoke-static/range {v1 .. v7}, Lll8;->b(Lll8;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "onReceivedError errorCode="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " description="

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " failingUrl="

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final b(Landroid/net/Uri;Landroid/webkit/WebView;)Z
    .locals 5

    .line 1
    const-string v0, "checkShouldOverrideUrlLoading"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, p2, v2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ne p2, v1, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    const/4 p2, 0x0

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    return p2

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    return p2

    .line 39
    :cond_4
    sget-object v2, Lteam/opay/swarmfoundation/applink/OuterAppLink;->a:Lteam/opay/swarmfoundation/applink/OuterAppLink;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "uri.toString()"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v4, Lcom/opay/webview/CommonWebViewClient$checkShouldOverrideUrlLoading$isAppLink$1;->INSTANCE:Lcom/opay/webview/CommonWebViewClient$checkShouldOverrideUrlLoading$isAppLink$1;

    .line 51
    .line 52
    invoke-virtual {v2, v0, v3, v4}, Lteam/opay/swarmfoundation/applink/OuterAppLink;->b(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    return v1

    .line 59
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "http"

    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "https"

    .line 76
    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    :cond_6
    const/4 p2, 0x1

    .line 84
    :cond_7
    if-nez p2, :cond_8

    .line 85
    .line 86
    sget-object p2, Lvg8;->a:Lvg8;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    .line 90
    invoke-virtual {p2, v0, p1}, Lvg8;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :cond_8
    xor-int/lit8 p1, p2, 0x1

    .line 95
    .line 96
    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 14

    .line 1
    const-string v2, "UTF-8"

    .line 2
    .line 3
    new-instance v5, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "Access-Control-Allow-Origin"

    .line 10
    .line 11
    const-string v3, "*"

    .line 12
    .line 13
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v1, "Access-Control-Allow-Headers"

    .line 17
    .line 18
    const-string v3, "Content-Type"

    .line 19
    .line 20
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lsjf;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    :try_start_0
    iget-object v4, p0, Lcom/opay/webview/CommonWebViewClient;->i:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v6, v7

    .line 39
    move-object v8, v6

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_4

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    check-cast v9, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;

    .line 51
    .line 52
    invoke-virtual {v9}, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;->getHybridAssetList()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_2

    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    check-cast v11, Ljava/util/Map$Entry;

    .line 80
    .line 81
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Ljava/lang/String;

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    invoke-static {v1, v12, v13, v0, v7}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-eqz v12, :cond_1

    .line 93
    .line 94
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v10, v12, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p1

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_2
    invoke-static {v10}, Lkotlin/collections/e;->z(Ljava/util/Map;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Lkotlin/Pair;

    .line 118
    .line 119
    if-eqz v9, :cond_0

    .line 120
    .line 121
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 126
    .line 127
    iget-object v8, p0, Lcom/opay/webview/CommonWebViewClient;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 128
    .line 129
    invoke-virtual {v6}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {p0, v8, v9}, Lcom/opay/webview/CommonWebViewClient;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v6}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->c()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v11, "load native js/css from url:"

    .line 147
    .line 148
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {p0, v6}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v6, v9

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_3
    move-object v6, v7

    .line 175
    move-object v8, v6

    .line 176
    :cond_4
    if-eqz p1, :cond_6

    .line 177
    .line 178
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->i:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_6

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;

    .line 195
    .line 196
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;->getHybridResourceList()Ljava/util/Map;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Lteam/opay/swarmfoundation/hybrid/HybridBean;

    .line 205
    .line 206
    if-eqz v1, :cond_5

    .line 207
    .line 208
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {p0, v4}, Lcom/opay/webview/CommonWebViewClient;->c(Ljava/lang/String;)Ljava/io/InputStream;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->c()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v9, "load storage native js/css from url:"

    .line 226
    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/hybrid/HybridBean;->d()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {p0, v1}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move-object v8, v4

    .line 251
    goto :goto_2

    .line 252
    :cond_6
    move-object v1, v6

    .line 253
    move-object v6, v8

    .line 254
    if-eqz v1, :cond_8

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_7

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_7
    if-eqz v6, :cond_8

    .line 264
    .line 265
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 266
    .line 267
    const-string v4, "ok"

    .line 268
    .line 269
    const/16 v3, 0xc8

    .line 270
    .line 271
    move-object v0, p1

    .line 272
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    move-object v7, p1

    .line 276
    goto :goto_4

    .line 277
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    .line 279
    .line 280
    :cond_8
    :goto_4
    return-object v7
.end method

.method public final e(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_0
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/webview/CommonWebViewClient$printLog$1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/opay/webview/CommonWebViewClient$printLog$1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/opay/webview/util/WebfoundationUtilsKt;->c(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "handleErrorListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "onPageFinished ="

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, " loadError= "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v4, p0, Lcom/opay/webview/CommonWebViewClient;->e:Z

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/opay/webview/CommonWebViewClient;->j:Ljava/util/Set;

    .line 54
    .line 55
    invoke-static {v3, p2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    sget-object v4, Lll8;->a:Lll8;

    .line 62
    .line 63
    const-string v3, "url"

    .line 64
    .line 65
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    iget-wide v7, p0, Lcom/opay/webview/CommonWebViewClient;->c:J

    .line 74
    .line 75
    sub-long/2addr v5, v7

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const-string v6, "time"

    .line 81
    .line 82
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-boolean v6, p0, Lcom/opay/webview/CommonWebViewClient;->h:Z

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "openHybrid"

    .line 93
    .line 94
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const/4 v7, 0x3

    .line 99
    new-array v7, v7, [Lkotlin/Pair;

    .line 100
    .line 101
    aput-object v3, v7, v1

    .line 102
    .line 103
    aput-object v5, v7, v2

    .line 104
    .line 105
    aput-object v6, v7, v0

    .line 106
    .line 107
    const/16 v9, 0xc

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const-string v5, "webview_page_finished"

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    move-object v6, v7

    .line 115
    move v7, v3

    .line 116
    invoke-static/range {v4 .. v10}, Lll8;->b(Lll8;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    if-eqz p2, :cond_2

    .line 120
    .line 121
    iget-object v3, p0, Lcom/opay/webview/CommonWebViewClient;->j:Ljava/util/Set;

    .line 122
    .line 123
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-boolean v3, p0, Lcom/opay/webview/CommonWebViewClient;->e:Z

    .line 127
    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Lcom/opay/webview/CommonWebViewClient;->d:Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    iget-object v3, p0, Lcom/opay/webview/CommonWebViewClient;->d:Lkotlin/jvm/functions/Function1;

    .line 139
    .line 140
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const/16 v4, 0x64

    .line 152
    .line 153
    if-ne v3, v4, :cond_8

    .line 154
    .line 155
    iget-boolean v3, p0, Lcom/opay/webview/CommonWebViewClient;->f:Z

    .line 156
    .line 157
    if-eqz v3, :cond_8

    .line 158
    .line 159
    iput-boolean v1, p0, Lcom/opay/webview/CommonWebViewClient;->f:Z

    .line 160
    .line 161
    sget-object v3, Lcom/opay/webview/inject/JsInjectConfig;->Companion:Lcom/opay/webview/inject/JsInjectConfig$Companion;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/opay/webview/inject/JsInjectConfig$Companion;->a()Lcom/opay/webview/inject/JsInjectConfig;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const/4 v4, 0x0

    .line 168
    if-eqz v3, :cond_6

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/opay/webview/inject/JsInjectConfig;->getInjectConfigs()[Lcom/opay/webview/inject/InjectConfig;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    array-length v5, v3

    .line 177
    const/4 v6, 0x0

    .line 178
    :goto_0
    if-ge v6, v5, :cond_6

    .line 179
    .line 180
    aget-object v7, v3, v6

    .line 181
    .line 182
    if-eqz p2, :cond_5

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/opay/webview/inject/InjectConfig;->getInjectUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    if-nez v8, :cond_4

    .line 189
    .line 190
    const-string v8, ""

    .line 191
    .line 192
    :cond_4
    invoke-static {p2, v8, v1, v0, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-ne v8, v2, :cond_5

    .line 197
    .line 198
    move-object v4, v7

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    add-int/2addr v6, v2

    .line 201
    goto :goto_0

    .line 202
    :cond_6
    :goto_1
    if-eqz v4, :cond_8

    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/opay/webview/inject/InjectConfig;->getInjectCode()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    if-eqz p2, :cond_8

    .line 209
    .line 210
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-nez p2, :cond_7

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v0, "javascript:"

    .line 223
    .line 224
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Lcom/opay/webview/inject/InjectConfig;->getInjectCode()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p3, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/opay/webview/CommonWebViewClient;->e:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    sget v0, Lcom/opay/webview/R$id;->web_view_load_error_status:I

    .line 27
    .line 28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput-boolean p3, p0, Lcom/opay/webview/CommonWebViewClient;->f:Z

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/opay/webview/CommonWebViewClient;->c:J

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p3, "onPageStarted ="

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/opay/webview/CommonWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p4, v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "///"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/opay/webview/CommonWebViewClient;->e:Z

    if-eqz p1, :cond_2

    .line 7
    sget p2, Lcom/opay/webview/R$id;->web_view_load_error_status:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/webkit/WebResourceError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 9
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 10
    invoke-static {v0, p1, p2, p3}, Lu2d;->a(Landroid/webkit/WebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 12
    iput-boolean v1, p0, Lcom/opay/webview/CommonWebViewClient;->e:Z

    if-eqz p1, :cond_1

    .line 13
    sget v0, Lcom/opay/webview/R$id;->web_view_load_error_status:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_3

    .line 14
    invoke-static {p3}, Lscb;->a(Landroid/webkit/WebResourceError;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p3}, Ltcb;->a(Landroid/webkit/WebResourceError;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p3, p2}, Lcom/opay/webview/CommonWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/SslErrorHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/net/http/SslError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/webview/CommonWebViewClient;->a:Landroid/webkit/WebViewClient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/RenderProcessGoneDetail;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "open Hybrid is "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/opay/webview/CommonWebViewClient;->h:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "  url:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/opay/webview/CommonWebViewClient;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "request.url.toString()"

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    sget-object v1, Lgh;->a:Lgh;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "it.context"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Lgh;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x1

    .line 71
    if-ne v1, v2, :cond_0

    .line 72
    .line 73
    new-instance p1, Landroid/webkit/WebResourceResponse;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-direct {p1, p2, p2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_0
    iget-boolean v1, p0, Lcom/opay/webview/CommonWebViewClient;->h:Z

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/opay/webview/CommonWebViewClient;->d(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/CommonWebViewClient;->e(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :cond_1
    return-object v0

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/CommonWebViewClient;->e(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebResourceRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/opay/webview/CommonWebViewClient;->b(Landroid/net/Uri;Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/opay/webview/CommonWebViewClient;->b(Landroid/net/Uri;Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method
