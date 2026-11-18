.class public final Lteam/opay/core/networkstatus/NetworkDiagnosisManager;
.super Ljava/lang/Object;
.source "NetworkDiagnosisManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 /2\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u0004\u0018\u00010+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        "l",
        "(Ljr2;)Ljava/lang/Object;",
        "",
        "onetimeJob",
        "",
        "r",
        "(Z)V",
        "q",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "a",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "loopJob",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "b",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lbf9;",
        "c",
        "Lbf9;",
        "mutex",
        "Lkotlinx/coroutines/l;",
        "d",
        "Lkotlinx/coroutines/l;",
        "diagnosisJob",
        "Ly92;",
        "e",
        "Ly92;",
        "restartSignal",
        "Lxe9;",
        "f",
        "Lxe9;",
        "resultFlow",
        "Lteam/opay/core/common/net/NetworkInfoProvider;",
        "g",
        "Lid8;",
        "n",
        "()Lteam/opay/core/common/net/NetworkInfoProvider;",
        "networkInfoProvider",
        "Landroid/net/Network;",
        "m",
        "()Landroid/net/Network;",
        "cellularNetwork",
        "h",
        "Companion",
        "network-status-ping_release"
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
.field public static final h:Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lbf9;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ly92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly92<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lxe9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxe9<",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->h:Lteam/opay/core/networkstatus/NetworkDiagnosisManager$Companion;

    .line 8
    .line 9
    new-instance v0, Ltl9;

    .line 10
    .line 11
    invoke-direct {v0}, Ltl9;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->i:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v2, v0}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->b:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlinx/coroutines/sync/MutexKt;->a(Z)Lbf9;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->c:Lbf9;

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    const/4 v4, 0x6

    .line 28
    invoke-static {v1, v0, v0, v4, v0}, Lz92;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ly92;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->e:Ly92;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-static {v2, v2, v0, v1, v0}, Laod;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lxe9;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->f:Lxe9;

    .line 40
    .line 41
    new-instance v1, Lsl9;

    .line 42
    .line 43
    invoke-direct {v1}, Lsl9;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->g:Lid8;

    .line 51
    .line 52
    new-instance v6, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$1;

    .line 53
    .line 54
    invoke-direct {v6, p0, v0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 55
    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lwl9;->a:Lwl9;

    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->n()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lwl9;->c(Lv97;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Ld00;->a:Ld00;

    .line 74
    .line 75
    new-instance v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ld00;->i(Ld00$a;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/networkstatus/NetworkDiagnosisManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->o()Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/core/common/net/NetworkInfoProvider;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->p()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Landroid/net/Network;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->m()Landroid/net/Network;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lkotlinx/coroutines/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->d:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->i:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->b:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lbf9;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->c:Lbf9;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Ly92;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->e:Ly92;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lxe9;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->f:Lxe9;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->q(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o()Lteam/opay/core/networkstatus/NetworkDiagnosisManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final p()Lteam/opay/core/common/net/NetworkInfoProvider;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/common/net/NetworkInfoProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final l(Ljr2;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;->label:I

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
    iput v1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {p1, p0, v2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 57
    .line 58
    .line 59
    iput v3, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$1;->label:I

    .line 60
    .line 61
    const-wide/32 v2, 0xea60

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 72
    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    new-instance p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 76
    .line 77
    const/16 v11, 0x3fe

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v0, p1

    .line 91
    invoke-direct/range {v0 .. v12}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;-><init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-object p1
.end method

.method public final m()Landroid/net/Network;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->n()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cellular"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/core/common/net/NetworkInfoProvider;->e(Ljava/lang/String;)Landroid/net/Network;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final n()Lteam/opay/core/common/net/NetworkInfoProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q(Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final r(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->d:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lkotlinx/coroutines/l;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->d:Lkotlinx/coroutines/l;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Lqk8;->c:Lqk8;

    .line 24
    .line 25
    const-string v2, "NetworkStatusWatcher startJob"

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v0, v2, v1, v3, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->b:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 32
    .line 33
    new-instance v7, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;

    .line 34
    .line 35
    invoke-direct {v7, p0, p1, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$startJob$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;ZLjr2;)V

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->d:Lkotlinx/coroutines/l;

    .line 47
    .line 48
    :cond_2
    return-void
.end method
