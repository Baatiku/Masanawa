.class public final Lcom/opay/webview/auth/WebAuth;
.super Ljava/lang/Object;
.source "WebAuth.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JE\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0014\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013JE\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0014\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J-\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ-\u0010!\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d2\u0014\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0012\u0004\u0012\u00020\u00100\u000eH\u0007\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010$\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020#2\u0014\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00100\u000eH\u0007\u00a2\u0006\u0004\u0008$\u0010%J-\u0010(\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020&2\u0014\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\'\u0012\u0004\u0012\u00020\u00100\u000eH\u0003\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008+\u0010,R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/opay/webview/auth/WebAuth;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lorg/json/JSONObject;",
        "json",
        "Landroid/view/View;",
        "loadView",
        "",
        "webUrl",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lkotlin/Function1;",
        "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
        "",
        "accessCallback",
        "l",
        "(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/opay/webview/WebFoundationJsData;",
        "jsData",
        "k",
        "(Lcom/opay/webview/WebFoundationJsData;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "appId",
        "seckey",
        "type",
        "f",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/opay/webview/net/AuthCancelRequest;",
        "request",
        "",
        "block",
        "g",
        "(Lcom/opay/webview/net/AuthCancelRequest;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/opay/webview/net/TokenRequest;",
        "i",
        "(Lcom/opay/webview/net/TokenRequest;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/opay/webview/net/AuthRequest;",
        "Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;",
        "h",
        "(Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V",
        "msg",
        "m",
        "(Ljava/lang/String;)V",
        "a",
        "Landroid/content/Context;",
        "Lcom/opay/webview/net/WebApiService$a;",
        "b",
        "Lid8;",
        "j",
        "()Lcom/opay/webview/net/WebApiService$a;",
        "authApi",
        "",
        "c",
        "I",
        "repeatCount",
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuth;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lcom/opay/webview/auth/WebAuth$authApi$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/opay/webview/auth/WebAuth$authApi$2;-><init>(Lcom/opay/webview/auth/WebAuth;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/opay/webview/auth/WebAuth;->b:Lid8;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic a(Lcom/opay/webview/auth/WebAuth;Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/webview/auth/WebAuth;->h(Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/opay/webview/auth/WebAuth;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/webview/auth/WebAuth;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/opay/webview/auth/WebAuth;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/webview/auth/WebAuth;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/opay/webview/auth/WebAuth;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/webview/auth/WebAuth;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/opay/webview/auth/WebAuth;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/webview/auth/WebAuth;->m(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 1
    const-string v0, "webUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "seckey"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lll8;->a:Lll8;

    .line 22
    .line 23
    const-string v3, "url"

    .line 24
    .line 25
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v3, "appid"

    .line 30
    .line 31
    invoke-static {v3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {v0, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {v1, p4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    const/4 v0, 0x4

    .line 44
    new-array v4, v0, [Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    aput-object p1, v4, v0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    aput-object p2, v4, p1

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    aput-object p3, v4, p1

    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    aput-object p4, v4, p1

    .line 57
    .line 58
    const/16 v7, 0xc

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const-string v3, "web_auth2_prompt_page_show"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v2 .. v8}, Lll8;->b(Lll8;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final g(Lcom/opay/webview/net/AuthCancelRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/opay/webview/net/AuthCancelRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/AuthCancelRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/webview/auth/WebAuth;->j()Lcom/opay/webview/net/WebApiService$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/opay/webview/net/WebApiService$a;->b(Lcom/opay/webview/net/AuthCancelRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/opay/webview/auth/WebAuth$a;

    .line 20
    .line 21
    invoke-direct {v0, p2, p0}, Lcom/opay/webview/auth/WebAuth$a;-><init>(Lkotlin/jvm/functions/Function1;Lcom/opay/webview/auth/WebAuth;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final h(Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/AuthRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/AuthRequestRsp$AuthRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/opay/webview/auth/WebAuth;->j()Lcom/opay/webview/net/WebApiService$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/opay/webview/net/WebApiService$a;->c(Lcom/opay/webview/net/AuthRequest;)Lretrofit2/Call;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/opay/webview/auth/WebAuth$b;

    .line 10
    .line 11
    invoke-direct {v0, p2, p0}, Lcom/opay/webview/auth/WebAuth$b;-><init>(Lkotlin/jvm/functions/Function1;Lcom/opay/webview/auth/WebAuth;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final i(Lcom/opay/webview/net/TokenRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lcom/opay/webview/net/TokenRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/net/TokenRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/webview/auth/WebAuth;->j()Lcom/opay/webview/net/WebApiService$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/opay/webview/net/WebApiService$a;->a(Lcom/opay/webview/net/TokenRequest;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;

    .line 20
    .line 21
    invoke-direct {v1, p2, p0, p1}, Lcom/opay/webview/auth/WebAuth$getAccessToken$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/opay/webview/auth/WebAuth;Lcom/opay/webview/net/TokenRequest;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final j()Lcom/opay/webview/net/WebApiService$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/webview/net/WebApiService$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k(Lcom/opay/webview/WebFoundationJsData;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Lcom/opay/webview/WebFoundationJsData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationJsData;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "jsData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "webUrl"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "accessCallback"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lll8;->a:Lll8;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "getUserInfo isAuth2WhiteListDomain requesting auth2 = "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lll8;->c(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/opay/webview/WebFoundationJsData;->getFunctionData()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    const-string p1, ""

    .line 69
    .line 70
    :cond_1
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object v2, p0

    .line 74
    move-object v4, p2

    .line 75
    move-object v5, p3

    .line 76
    move-object v6, p4

    .line 77
    move-object v7, p5

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcom/opay/webview/auth/WebAuth;->l(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 83
    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

.method public final l(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/webview/net/TokenRequestRsp$TokenRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v2, "json"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "loadView"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "webUrl"

    .line 20
    .line 21
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "accessCallback"

    .line 25
    .line 26
    move-object/from16 v7, p5

    .line 27
    .line 28
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    const-string v2, "appId"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    move-object v2, v4

    .line 46
    :cond_0
    const-string v5, "security"

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    move-object v5, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v5, v0

    .line 57
    :goto_0
    const-string v0, "req"

    .line 58
    .line 59
    invoke-virtual {v8, v3, v2, v5, v0}, Lcom/opay/webview/auth/WebAuth;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v15, Lcom/opay/webview/net/AuthRequest;

    .line 63
    .line 64
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    move-object v11, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object v11, v0

    .line 77
    :goto_1
    const/4 v13, 0x4

    .line 78
    const/4 v14, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    move-object v9, v15

    .line 81
    move-object v10, v2

    .line 82
    invoke-direct/range {v9 .. v14}, Lcom/opay/webview/net/AuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;

    .line 86
    .line 87
    move-object v0, v9

    .line 88
    move-object/from16 v1, p2

    .line 89
    .line 90
    move-object/from16 v3, p3

    .line 91
    .line 92
    move-object v4, v5

    .line 93
    move-object/from16 v5, p4

    .line 94
    .line 95
    move-object/from16 v6, p0

    .line 96
    .line 97
    move-object/from16 v7, p5

    .line 98
    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/opay/webview/auth/WebAuth$requestAccessToken$1;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/opay/webview/auth/WebAuth;Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v15, v9}, Lcom/opay/webview/auth/WebAuth;->h(Lcom/opay/webview/net/AuthRequest;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/webview/auth/WebAuth;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
