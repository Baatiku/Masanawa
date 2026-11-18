.class public final Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
.super Ljava/lang/Object;
.source "NetworkSwitchManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 A2\u00020\u0001:\u0001BB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\r\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0015\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0014\u0010 \u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001bR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010:\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0016\u0010<\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u00109R$\u0010@\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u0010\r\"\u0004\u0008?\u0010\u0015\u00a8\u0006C"
    }
    d2 = {
        "Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
        "",
        "<init>",
        "()V",
        "",
        "r",
        "(Ljr2;)Ljava/lang/Object;",
        "Landroid/net/Network;",
        "network",
        "",
        "A",
        "(Landroid/net/Network;)Z",
        "y",
        "()Z",
        "B",
        "z",
        "()Ljava/lang/Boolean;",
        "D",
        "E",
        "bind",
        "o",
        "(Z)V",
        "a",
        "Z",
        "isPos",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "b",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "bind2Cellular",
        "c",
        "isWifiConnected2Server",
        "d",
        "isCellularConnected2Server",
        "Lteam/opay/core/common/net/NetworkInfoProvider;",
        "e",
        "Lid8;",
        "v",
        "()Lteam/opay/core/common/net/NetworkInfoProvider;",
        "networkInfoProvider",
        "Landroid/net/ConnectivityManager;",
        "f",
        "u",
        "()Landroid/net/ConnectivityManager;",
        "cm",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "g",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "ioScope",
        "Lbf9;",
        "h",
        "Lbf9;",
        "mutex",
        "Lkotlinx/coroutines/l;",
        "i",
        "Lkotlinx/coroutines/l;",
        "detectJob",
        "w",
        "()Landroid/net/Network;",
        "wifiNetwork",
        "t",
        "cellularNetwork",
        "value",
        "s",
        "setAutoEnable",
        "autoEnable",
        "j",
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
.field public static final j:Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/core/http/cellularchange/NetworkSwitchManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lbf9;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->j:Lteam/opay/core/http/cellularchange/NetworkSwitchManager$Companion;

    .line 8
    .line 9
    new-instance v0, Lim9;

    .line 10
    .line 11
    invoke-direct {v0}, Lim9;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->k:Lid8;

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
    sget-object v0, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/common/spi/c;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->a:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    new-instance v0, Ljm9;

    .line 35
    .line 36
    invoke-direct {v0}, Ljm9;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->e:Lid8;

    .line 44
    .line 45
    new-instance v0, Lkm9;

    .line 46
    .line 47
    invoke-direct {v0}, Lkm9;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->f:Lid8;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static {v2, v0, v2}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput-object v3, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->g:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 63
    .line 64
    invoke-static {v1}, Lkotlinx/coroutines/sync/MutexKt;->a(Z)Lbf9;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->h:Lbf9;

    .line 69
    .line 70
    new-instance v6, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$1;

    .line 71
    .line 72
    invoke-direct {v6, p0, v2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$1;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x3

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 80
    .line 81
    .line 82
    sget-object v0, Lwl9;->a:Lwl9;

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->v()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lwl9;->c(Lv97;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Ld00;->a:Ld00;

    .line 92
    .line 93
    new-instance v1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$2;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$2;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ld00;->i(Ld00$a;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static final C()Lteam/opay/core/common/net/NetworkInfoProvider;
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

.method public static synthetic a(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->p(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lteam/opay/core/common/net/NetworkInfoProvider;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->C()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->q()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->x()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->r(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->t()Landroid/net/Network;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->k:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->g:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Lbf9;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->h:Lbf9;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Landroid/net/Network;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->w()Landroid/net/Network;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Landroid/net/Network;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->A(Landroid/net/Network;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final p(Z)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Switch to Cellular : "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final q()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lgt;->f(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final x()Lteam/opay/core/http/cellularchange/NetworkSwitchManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A(Landroid/net/Network;)Z
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "http://nf-api-posp.opayweb.com/api/pos/check"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 17
    .line 18
    :goto_0
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 22
    .line 23
    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v4}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    const/16 v0, 0x1388

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sget-object v4, Lok8;->c:Lok8;

    .line 50
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v6, "NetworkSwitchManager-> network Response: "

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v4, v5, v3, v1, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    const/16 v1, 0xc8

    .line 72
    .line 73
    if-gt v1, v0, :cond_1

    .line 74
    .line 75
    const/16 v1, 0x190

    .line 76
    .line 77
    if-ge v0, v1, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    move-object v3, p1

    .line 86
    goto :goto_4

    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    goto :goto_4

    .line 91
    :catch_1
    move-exception v0

    .line 92
    move-object p1, v3

    .line 93
    :goto_2
    :try_start_2
    sget-object v4, Lok8;->c:Lok8;

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v6, "NetworkSwitchManager-> network Response error: "

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v4, v0, v3, v1, v3}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    :goto_3
    return v2

    .line 119
    :goto_4
    if-eqz v3, :cond_3

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    .line 123
    .line 124
    :cond_3
    throw v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final D(Ljr2;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;

    .line 7
    .line 8
    iget v1, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->label:I

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
    iput v1, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->label:I

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
    iget-object v0, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->i:Lkotlinx/coroutines/l;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-interface {p1}, Lkotlinx/coroutines/l;->isActive()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v3, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->y()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_7

    .line 80
    .line 81
    :cond_3
    iget-object p1, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->i:Lkotlinx/coroutines/l;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    iput-object p0, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput v3, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$onRequestFailed$1;->label:I

    .line 88
    .line 89
    invoke-static {p1, v0}, Lzm7;->e(Lkotlinx/coroutines/l;Ljr2;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v1, :cond_4

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_4
    move-object v0, p0

    .line 97
    :goto_1
    iget-object p1, v0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->i:Lkotlinx/coroutines/l;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Lkotlinx/coroutines/l;->start()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->E()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->E()V

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1
.end method

.method public final E()V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->i:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/l;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->g:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 15
    .line 16
    new-instance v5, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v5, p0, v0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$startDetectingJob$1;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->i:Lkotlinx/coroutines/l;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final o(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x17

    .line 18
    .line 19
    if-lt v0, v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->u()Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->t()Landroid/net/Network;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v2, v1

    .line 34
    :goto_0
    invoke-static {v0, v2}, Lhm9;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sget-object v2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    new-instance v2, Llm9;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Llm9;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    invoke-static {v4, v5, v2, v3, v1}, Lgke;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 62
    .line 63
    const-string v3, "team.opay.business.action.switch_cellular"

    .line 64
    .line 65
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const-string v3, "switch_cellular"

    .line 80
    .line 81
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lvbe;->d()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lok8;->c:Lok8;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "NetworkSwitchManager-> bind to CELLULAR: "

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, ", bindResult: "

    .line 107
    .line 108
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 v0, 0x2

    .line 119
    invoke-static {v2, p1, v1, v0, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method public final r(Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
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
    new-instance v1, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager$detect$2;-><init>(Lteam/opay/core/http/cellularchange/NetworkSwitchManager;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lb67;->b:Lb67;

    .line 6
    .line 7
    invoke-virtual {v0}, Lb67;->d()Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "is_cellular_auto"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    return v2
.end method

.method public final t()Landroid/net/Network;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->v()Lteam/opay/core/common/net/NetworkInfoProvider;

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

.method public final u()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v()Lteam/opay/core/common/net/NetworkInfoProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->e:Lid8;

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

.method public final w()Landroid/net/Network;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->v()Lteam/opay/core/common/net/NetworkInfoProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "wifi"

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

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final z()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/core/http/cellularchange/NetworkSwitchManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method
