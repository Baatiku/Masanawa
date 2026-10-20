.class public final Lteam/opay/core/biz/rbi/HttpTrack;
.super Ljava/lang/Object;
.source "HttpTrack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/biz/rbi/HttpTrack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 02\u00020\u00012\u00020\u0001:\u00011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ+\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001a\u0010!\u001a\u0004\u0018\u00010\u00042\u0006\u0010 \u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008!\u0010\"J)\u0010#\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\'\u001a\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lteam/opay/core/biz/rbi/HttpTrack;",
        "",
        "<init>",
        "()V",
        "",
        "action",
        "Lokhttp3/Request;",
        "request",
        "",
        "h",
        "(Ljava/lang/String;Lokhttp3/Request;)V",
        "Lokhttp3/Response;",
        "response",
        "u",
        "(Lokhttp3/Request;Lokhttp3/Response;)V",
        "code",
        "message",
        "q",
        "(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)V",
        "v",
        "(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;)V",
        "",
        "t",
        "r",
        "(Lokhttp3/Request;Ljava/lang/Throwable;)V",
        "Lteam/opay/core/biz/rbi/HttpTrace;",
        "event",
        "s",
        "(Lteam/opay/core/biz/rbi/HttpTrace;)V",
        "l",
        "(Lokhttp3/Request;)Ljava/lang/String;",
        "m",
        "requestUrl",
        "j",
        "(Ljava/lang/String;Ljr2;)Ljava/lang/Object;",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "a",
        "Lid8;",
        "i",
        "()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
        "b",
        "k",
        "()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
        "nsm",
        "c",
        "Companion",
        "common-http_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile d:Lteam/opay/core/biz/rbi/HttpTrack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/biz/rbi/HttpTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->c:Lteam/opay/core/biz/rbi/HttpTrack$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ld67;

    invoke-direct {v0}, Ld67;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack;->a:Lid8;

    .line 4
    new-instance v0, Le67;

    invoke-direct {v0}, Le67;-><init>()V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack;->b:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/biz/rbi/HttpTrack;-><init>()V

    return-void
.end method

.method public static synthetic a()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/biz/rbi/HttpTrack;->n()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/biz/rbi/HttpTrack;->p()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c()Lteam/opay/core/biz/rbi/HttpTrack;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/biz/rbi/HttpTrack;->d:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/biz/rbi/HttpTrack;->j(Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/core/biz/rbi/HttpTrack;)Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->k()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/core/biz/rbi/HttpTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/biz/rbi/HttpTrack;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lteam/opay/core/biz/rbi/HttpTrack;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/core/biz/rbi/HttpTrack;->d:Lteam/opay/core/biz/rbi/HttpTrack;

    .line 2
    .line 3
    return-void
.end method

.method public static final n()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final p()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->j:Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;->a()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public h(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ll47;->b:Ll47;

    .line 12
    .line 13
    invoke-virtual {v0}, Ll47;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lteam/opay/core/biz/rbi/CustomTrack;->b:Lteam/opay/core/biz/rbi/CustomTrack;

    .line 20
    .line 21
    new-instance v1, Lkotlin/Pair;

    .line 22
    .line 23
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "uri"

    .line 32
    .line 33
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lkotlin/Pair;

    .line 37
    .line 38
    const-string v3, "trans_id"

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lkotlin/Pair;

    .line 48
    .line 49
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v4, "host"

    .line 58
    .line 59
    invoke-direct {v3, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    new-array p2, p2, [Lkotlin/Pair;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    aput-object v1, p2, v4

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    aput-object v2, p2, v1

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    aput-object v3, p2, v1

    .line 73
    .line 74
    invoke-virtual {v0, p1, p2}, Lteam/opay/core/biz/rbi/CustomTrack;->d(Ljava/lang/String;[Lkotlin/Pair;)Lkotlinx/coroutines/l;

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method public final i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;-><init>(Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    new-instance p2, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$result$1$1;

    .line 59
    .line 60
    invoke-direct {p2, p1, v3}, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$result$1$1;-><init>(Ljava/lang/String;Ljr2;)V

    .line 61
    .line 62
    .line 63
    iput v4, v0, Lteam/opay/core/biz/rbi/HttpTrack$getIpAddress$1;->label:I

    .line 64
    .line 65
    const-wide/16 v4, 0x7530

    .line 66
    .line 67
    invoke-static {v4, v5, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-ne p2, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    move-object v3, p1

    .line 99
    :goto_4
    return-object v3
.end method

.method public final k()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/biz/rbi/HttpTrack;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l(Lokhttp3/Request;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "GET"

    .line 14
    .line 15
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "?"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-static {v0, v2, v7, p1, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x6

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "?"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v1, v0

    .line 39
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v0, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string p1, "substring(...)"

    .line 48
    .line 49
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v0
.end method

.method public final m(Lokhttp3/Request;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "request_tsp"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string p1, ""

    .line 32
    .line 33
    :goto_1
    return-object p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " -> "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lok8;->c:Lok8;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "NonFatalException url = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", message = "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-static {p2, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 54
    .line 55
    new-instance v0, Lteam/opay/core/http/arch/NonFatalException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "\n"

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Lteam/opay/core/http/arch/NonFatalException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lteam/opay/core/common/spi/a;->d(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public q(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll47;->b:Ll47;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll47;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-class v0, Lokhttp3/Request;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lokhttp3/Request;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v0

    .line 27
    :goto_0
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->l(Lokhttp3/Request;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->m(Lokhttp3/Request;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v1, v9

    .line 43
    move-object v4, p2

    .line 44
    move-object v6, p3

    .line 45
    move-object v7, p0

    .line 46
    invoke-direct/range {v1 .. v8}, Lteam/opay/core/biz/rbi/HttpTrack$trackApiFailure$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 47
    .line 48
    .line 49
    const/4 v10, 0x3

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v6, p1

    .line 53
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public r(Lokhttp3/Request;Ljava/lang/Throwable;)V
    .locals 12
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "t"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ll47;->b:Ll47;

    .line 12
    .line 13
    invoke-virtual {v0}, Ll47;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {p2}, Lo47;->b(Ljava/lang/Throwable;)Lteam/opay/core/http/arch/HttpException;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Lokhttp3/Request;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lokhttp3/Request;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    move-object v3, p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v3, v1

    .line 36
    :goto_0
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->l(Lokhttp3/Request;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->m(Lokhttp3/Request;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    instance-of v1, p2, Lteam/opay/core/http/interceptor/NoNetworkException;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v1, v9

    .line 56
    move-object v2, p1

    .line 57
    move-object v4, v0

    .line 58
    move-object v6, p2

    .line 59
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Ljr2;)V

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 p1, 0x0

    .line 65
    move-object v6, v8

    .line 66
    move-object v8, p1

    .line 67
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    new-instance v10, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    move-object v1, v10

    .line 79
    move-object v2, p1

    .line 80
    move-object v4, v0

    .line 81
    move-object v6, p2

    .line 82
    move-object v7, p0

    .line 83
    invoke-direct/range {v1 .. v8}, Lteam/opay/core/biz/rbi/HttpTrack$trackFailure$2;-><init>(Ljava/lang/String;Lokhttp3/Request;Lteam/opay/core/http/arch/HttpException;Ljava/lang/String;Ljava/lang/Throwable;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x3

    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    move-object v1, v9

    .line 91
    move-object v4, v10

    .line 92
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 93
    .line 94
    .line 95
    sget-object v1, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 96
    .line 97
    invoke-virtual {v1}, Lteam/opay/core/ab/HttpABConfig$Companion;->m()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0}, Lteam/opay/core/http/arch/HttpException;->getApiCode()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, v0, p2}, Lteam/opay/core/biz/rbi/HttpTrack;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method public s(Lteam/opay/core/biz/rbi/HttpTrace;)V
    .locals 12
    .param p1    # Lteam/opay/core/biz/rbi/HttpTrace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/ab/HttpABConfig;->Companion:Lteam/opay/core/ab/HttpABConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/ab/HttpABConfig$Companion;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->b()Lokhttp3/HttpUrl;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lc67;->b:Lc67;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->a()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lc67;->e(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v2, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, [Lkotlin/Pair;

    .line 40
    .line 41
    array-length v0, v4

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->d()Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-array v0, v1, [Lkotlin/Pair;

    .line 97
    .line 98
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v5, v0

    .line 103
    check-cast v5, [Lkotlin/Pair;

    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    move-object v1, v9

    .line 113
    move-object v2, p1

    .line 114
    move-object v6, p0

    .line 115
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEvent$1;-><init>(Lteam/opay/core/biz/rbi/HttpTrace;Lokhttp3/HttpUrl;[Lkotlin/Pair;[Lkotlin/Pair;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 116
    .line 117
    .line 118
    const/4 v10, 0x3

    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    move-object v6, v0

    .line 122
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method

.method public t(Lteam/opay/core/biz/rbi/HttpTrace;)V
    .locals 12
    .param p1    # Lteam/opay/core/biz/rbi/HttpTrace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lf67;->a:Lf67;

    .line 7
    .line 8
    invoke-virtual {v0}, Lf67;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->b()Lokhttp3/HttpUrl;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lc67;->b:Lc67;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->a()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lc67;->b(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v2, v1, [Lkotlin/Pair;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, [Lkotlin/Pair;

    .line 40
    .line 41
    array-length v0, v4

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/biz/rbi/HttpTrace;->d()Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-array v0, v1, [Lkotlin/Pair;

    .line 97
    .line 98
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v5, v0

    .line 103
    check-cast v5, [Lkotlin/Pair;

    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    move-object v1, v9

    .line 113
    move-object v2, p1

    .line 114
    move-object v6, p0

    .line 115
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackHttpEventTimeline$1;-><init>(Lteam/opay/core/biz/rbi/HttpTrace;Lokhttp3/HttpUrl;[Lkotlin/Pair;[Lkotlin/Pair;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 116
    .line 117
    .line 118
    const/4 v10, 0x3

    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    move-object v6, v0

    .line 122
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method

.method public u(Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 12
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ll47;->b:Ll47;

    .line 12
    .line 13
    invoke-virtual {v0}, Ll47;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/core/biz/rbi/HttpTrack;->l(Lokhttp3/Request;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, p1}, Lteam/opay/core/biz/rbi/HttpTrack;->m(Lokhttp3/Request;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackResponse$1;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v1, v9

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move-object v6, p0

    .line 38
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/biz/rbi/HttpTrack$trackResponse$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x3

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v6, v0

    .line 45
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public v(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;)V
    .locals 12
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ll47;->b:Ll47;

    .line 12
    .line 13
    invoke-virtual {v0}, Ll47;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-class v0, Lokhttp3/Request;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lokhttp3/Request;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v0

    .line 32
    :goto_0
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->l(Lokhttp3/Request;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, v3}, Lteam/opay/core/biz/rbi/HttpTrack;->m(Lokhttp3/Request;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p0}, Lteam/opay/core/biz/rbi/HttpTrack;->i()Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v9, Lteam/opay/core/biz/rbi/HttpTrack$trackResponseFailed$1;

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v1, v9

    .line 48
    move-object v2, p1

    .line 49
    move-object v4, p2

    .line 50
    move-object v6, p3

    .line 51
    move-object v7, p0

    .line 52
    invoke-direct/range {v1 .. v8}, Lteam/opay/core/biz/rbi/HttpTrack$trackResponseFailed$1;-><init>(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/biz/rbi/HttpTrack;Ljr2;)V

    .line 53
    .line 54
    .line 55
    const/4 v10, 0x3

    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v6, v0

    .line 59
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/biz/rbi/HttpTrack;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
