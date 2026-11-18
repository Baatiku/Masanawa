.class public final Lcom/opay/webview/JsBindingsInterface;
.super Ljava/lang/Object;
.source "JsBindingsInterface.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010%\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001Bm\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012:\u0010\n\u001a6\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00060\u0004j\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006`\t\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u001d\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u001dH\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u001dH\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010*\u001a\u00020\u001d2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'H\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u0010.J\u0017\u00100\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00080\u00101J\u001f\u00103\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u00085\u00106J7\u0010:\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010908*\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000107H\u0002\u00a2\u0006\u0004\u0008:\u0010;J+\u0010>\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u00052\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u001f\u0010E\u001a\u00020D2\u0006\u0010A\u001a\u00020@2\u0006\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008E\u0010FR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JRH\u0010\n\u001a6\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00060\u0004j\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006`\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR$\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u001d\u0010V\u001a\u0004\u0018\u00010Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\u00a8\u0006W"
    }
    d2 = {
        "Lcom/opay/webview/JsBindingsInterface;",
        "",
        "Landroid/content/Context;",
        "context",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/Function1;",
        "Lcom/opay/webview/WebFoundationJsData;",
        "",
        "Lkotlin/collections/HashMap;",
        "jsFunctionMap",
        "Ljava/util/ArrayList;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "Lkotlin/collections/ArrayList;",
        "jsWebDelegateList",
        "Landroid/webkit/WebView;",
        "webView",
        "<init>",
        "(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/webkit/WebView;)V",
        "jsonStr",
        "handleJsBindings",
        "(Ljava/lang/String;)V",
        "type",
        "content",
        "onClick",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "postMessage",
        "text",
        "toastLabel",
        "",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "jumpToWhatsApp",
        "(Ljava/lang/String;)Z",
        "close",
        "()Z",
        "agree",
        "agreeUserAgreement",
        "(Z)Z",
        "",
        "lat",
        "lng",
        "openGoogleMap",
        "(DD)Z",
        "webFoundationJsData",
        "p",
        "(Lcom/opay/webview/WebFoundationJsData;)V",
        "k",
        "n",
        "(Lcom/opay/webview/WebFoundationJsData;)Z",
        "canHandle",
        "j",
        "(Lcom/opay/webview/WebFoundationJsData;Z)V",
        "m",
        "()V",
        "",
        "",
        "Lkotlin/Pair;",
        "u",
        "(Ljava/util/Map;)[Lkotlin/Pair;",
        "methodName",
        "callback",
        "i",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/pay/oshare/api/OSharePlatform;",
        "platform",
        "Lorg/json/JSONObject;",
        "jsonData",
        "Lteam/opay/pay/oshare/api/OShareData;",
        "s",
        "(Lteam/opay/pay/oshare/api/OSharePlatform;Lorg/json/JSONObject;)Lteam/opay/pay/oshare/api/OShareData;",
        "a",
        "Landroid/content/Context;",
        "q",
        "()Landroid/content/Context;",
        "b",
        "Ljava/util/HashMap;",
        "c",
        "Ljava/util/ArrayList;",
        "d",
        "Landroid/webkit/WebView;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "e",
        "Lid8;",
        "r",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "jsFunctionMap"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsWebDelegateList"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "webView"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/opay/webview/JsBindingsInterface;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/opay/webview/JsBindingsInterface;->b:Ljava/util/HashMap;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/opay/webview/JsBindingsInterface;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 26
    .line 27
    sget-object p1, Lcom/opay/webview/JsBindingsInterface$generator$2;->INSTANCE:Lcom/opay/webview/JsBindingsInterface$generator$2;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/opay/webview/JsBindingsInterface;->e:Lid8;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface;->m()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->l(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/opay/webview/JsBindingsInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->t(Ljava/lang/String;Lcom/opay/webview/JsBindingsInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/JsBindingsInterface;->j(Lcom/opay/webview/WebFoundationJsData;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->k(Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->p(Lcom/opay/webview/WebFoundationJsData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/opay/webview/JsBindingsInterface;Lteam/opay/pay/oshare/api/OSharePlatform;Lorg/json/JSONObject;)Lteam/opay/pay/oshare/api/OShareData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/JsBindingsInterface;->s(Lteam/opay/pay/oshare/api/OSharePlatform;Lorg/json/JSONObject;)Lteam/opay/pay/oshare/api/OShareData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/opay/webview/JsBindingsInterface;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/opay/webview/JsBindingsInterface;Ljava/util/Map;)[Lkotlin/Pair;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->u(Ljava/util/Map;)[Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$webFoundationJsData"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->n(Lcom/opay/webview/WebFoundationJsData;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1, v0}, Lcom/opay/webview/JsBindingsInterface$checkFoucationAndExce$1$1;-><init>(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;Z)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    const/4 p1, 0x0

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-static {v2, v3, v1, p0, p1}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final t(Ljava/lang/String;Lcom/opay/webview/JsBindingsInterface;)V
    .locals 4

    .line 1
    const-string v0, "$jsonStr"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/opay/webview/WebFoundationJsData;

    .line 17
    .line 18
    const-string v1, "functionName"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "functionData"

    .line 27
    .line 28
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p1, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 33
    .line 34
    invoke-direct {p0, v1, v0, v2}, Lcom/opay/webview/WebFoundationJsData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/opay/webview/WebFoundationJsData;->getWebView()Landroid/webkit/WebView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p1, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/opay/webview/WebFoundationJsData;->setWebView(Landroid/webkit/WebView;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/opay/webview/JsBindingsInterface;->k(Lcom/opay/webview/WebFoundationJsData;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public final agreeUserAgreement(Z)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$agreeUserAgreement$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/opay/webview/JsBindingsInterface$agreeUserAgreement$1;-><init>(ZLcom/opay/webview/JsBindingsInterface;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v2, v3, v0, p1, v1}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final close()Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$close$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$close$1;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-static {v3, v4, v0, v1, v2}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final handleJsBindings(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "jsonStr"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ldn7;

    .line 25
    .line 26
    invoke-direct {v1, p1, p0}, Ldn7;-><init>(Ljava/lang/String;Lcom/opay/webview/JsBindingsInterface;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final j(Lcom/opay/webview/WebFoundationJsData;Z)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    :cond_0
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "onHandlerName"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    nop

    .line 23
    :goto_0
    const-string v1, "callbackName"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_4

    .line 33
    .line 34
    new-instance v1, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "canHandle"

    .line 40
    .line 41
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface;->r()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-interface {p2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object p2, v2

    .line 57
    :goto_1
    const-string v3, "versionName"

    .line 58
    .line 59
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface;->r()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-interface {p2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move-object p2, v2

    .line 78
    :goto_2
    const-string v3, "versionCode"

    .line 79
    .line 80
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/opay/webview/JsBindingsInterface;->r()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-interface {p2}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_3
    const-string p2, "deviceId"

    .line 94
    .line 95
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string p2, "functionName"

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "javascript:"

    .line 115
    .line 116
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, "(\'"

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v1, "data.toString()"

    .line 132
    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lcom/opay/webview/util/WebfoundationUtilsKt;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, "\')"

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public final jumpToWhatsApp(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$jumpToWhatsApp$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0}, Lcom/opay/webview/JsBindingsInterface$jumpToWhatsApp$1;-><init>(Ljava/lang/String;Lcom/opay/webview/JsBindingsInterface;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-static {v2, v3, v0, p1, v1}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final k(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->a()Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcn7;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcn7;-><init>(Lcom/opay/webview/JsBindingsInterface;Lcom/opay/webview/WebFoundationJsData;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$1;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "openPage"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$2;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "closePage"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$3;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$3;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "refreshPage"

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$4;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$4;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "copyToClipboard"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$5;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$5;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "clipText"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$6;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$6;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "toast"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$7;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$7;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "jumpToWhatsApp"

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$8;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$8;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "trackEvent"

    .line 77
    .line 78
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$9;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$9;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "shareToWhatsApp"

    .line 87
    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$10;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$10;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "shareToFacebook"

    .line 97
    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$11;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$11;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "shareToTwitter"

    .line 107
    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$commonJs$12;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/opay/webview/JsBindingsInterface$commonJs$12;-><init>(Lcom/opay/webview/JsBindingsInterface;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "share"

    .line 117
    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/opay/webview/JsBindingsInterface;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final n(Lcom/opay/webview/WebFoundationJsData;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_6

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lteam/opay/swarmfoundation/webview/IWebDelegate;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-class v5, Lteam/opay/swarmfoundation/webview/IWebDelegate;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/a;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/reflect/Method;

    .line 73
    .line 74
    const-class v5, Ljk7;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljk7;

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v4}, Ljk7;->value()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v5, 0x0

    .line 90
    :goto_0
    if-eqz v5, :cond_2

    .line 91
    .line 92
    invoke-interface {v4}, Ljk7;->value()[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    array-length v5, v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v5, 0x0

    .line 102
    :goto_1
    if-nez v5, :cond_2

    .line 103
    .line 104
    invoke-interface {v4}, Ljk7;->value()[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    array-length v5, v4

    .line 109
    const/4 v6, 0x0

    .line 110
    :goto_2
    if-ge v6, v5, :cond_2

    .line 111
    .line 112
    aget-object v7, v4, v6

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    return v1

    .line 125
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    return v3
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "toastLabel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/opay/webview/JsBindingsInterface$cpoyToClipboard$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/opay/webview/JsBindingsInterface$cpoyToClipboard$1;-><init>(Lcom/opay/webview/JsBindingsInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    const/4 p2, 0x0

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    invoke-static {v1, v2, v0, p1, p2}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string p1, "functionName"

    .line 28
    .line 29
    const-string p2, "onClick"

    .line 30
    .line 31
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string p1, "functionData"

    .line 35
    .line 36
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "this.toString()"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->handleJsBindings(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final openGoogleMap(DD)Z
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v6, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    move-object v5, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/opay/webview/JsBindingsInterface$openGoogleMap$1;-><init>(DDLcom/opay/webview/JsBindingsInterface;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    const/4 p2, 0x0

    .line 12
    const-wide/16 p3, 0x0

    .line 13
    .line 14
    invoke-static {p3, p4, v6, p1, p2}, Lcom/opay/webview/util/WebfoundationUtilsKt;->h(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final p(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Lteam/opay/swarmfoundation/webview/OWebJSManager;->a:Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/opay/webview/JsBindingsInterface;->d:Landroid/webkit/WebView;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/opay/webview/JsBindingsInterface;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1, v2, v3}, Lteam/opay/swarmfoundation/webview/OWebJSManager$Companion;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/webkit/WebView;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "jsonStr"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/opay/webview/JsBindingsInterface;->handleJsBindings(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/webview/JsBindingsInterface;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s(Lteam/opay/pay/oshare/api/OSharePlatform;Lorg/json/JSONObject;)Lteam/opay/pay/oshare/api/OShareData;
    .locals 12

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    new-instance v11, Lteam/opay/pay/oshare/api/OShareData;

    .line 8
    .line 9
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v9, 0x7a

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, v11

    .line 21
    move-object v2, p1

    .line 22
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/oshare/api/OShareData;-><init>(Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "contentUrl"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "jsonData.optString(\"contentUrl\")"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v11, p1}, Lteam/opay/pay/oshare/api/OShareData;->setContentUrl(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "tag"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "jsonData.optString(\"tag\")"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, p1}, Lteam/opay/pay/oshare/api/OShareData;->setTag(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "imagePath"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "jsonData.optString(\"imagePath\")"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11, p1}, Lteam/opay/pay/oshare/api/OShareData;->setImagePath(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v11
.end method

.method public final u(Ljava/util/Map;)[Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Lkotlin/Pair;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    check-cast v0, [Lkotlin/Pair;

    .line 39
    .line 40
    return-object v0
.end method
