.class public final Lteam/opay/business/push/core/delegate/PushCallWebDelegate;
.super Lteam/opay/swarmfoundation/webview/IWebDelegate;
.source "PushCallWebDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/webview/IWebDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001\u0016\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/business/push/core/delegate/PushCallWebDelegate;",
        "Lteam/opay/swarmfoundation/webview/IWebDelegate;",
        "<init>",
        "()V",
        "Landroid/webkit/WebView;",
        "webView",
        "",
        "attach",
        "(Landroid/webkit/WebView;)V",
        "Lcom/opay/webview/WebFoundationJsData;",
        "webFoundationJsData",
        "subscribePushMessage",
        "(Lcom/opay/webview/WebFoundationJsData;)V",
        "unsubscribePushMessage",
        "",
        "isAttached",
        "Z",
        "",
        "",
        "messageTypeList",
        "Ljava/util/List;",
        "Lcom/opay/webview/WebFoundationJsData;",
        "team/opay/business/push/core/delegate/PushCallWebDelegate$b",
        "listener",
        "Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;",
        "business-push-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isAttached:Z

.field private final listener:Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messageTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/webview/IWebDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->messageTypeList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;-><init>(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->listener:Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getListener$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->listener:Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMessageTypeList$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->messageTypeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWebFoundationJsData$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Lcom/opay/webview/WebFoundationJsData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAttached$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->isAttached:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public attach(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/webview/IWebDelegate;->attach(Landroid/webkit/WebView;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-boolean v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->isAttached:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->isAttached:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Let;->i(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;-><init>(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final subscribePushMessage(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 5
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "opbSubscribePushMessage"
        }
    .end annotation

    .line 1
    const-string v0, "webFoundationJsData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->webFoundationJsData:Lcom/opay/webview/WebFoundationJsData;

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "messageType"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->messageTypeList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_1
    if-ge v1, p1, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->messageTypeList:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "getString(...)"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget-object p1, Lp5c;->a:Lp5c;

    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->listener:Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lp5c;->k(Lm97;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final unsubscribePushMessage(Lcom/opay/webview/WebFoundationJsData;)V
    .locals 1
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljk7;
        value = {
            "opbUnsubscribePushMessage"
        }
    .end annotation

    .line 1
    const-string v0, "webFoundationJsData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lp5c;->a:Lp5c;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->listener:Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lp5c;->l(Lm97;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
