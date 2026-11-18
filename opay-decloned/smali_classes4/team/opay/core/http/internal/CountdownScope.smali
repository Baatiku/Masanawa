.class public final Lteam/opay/core/http/internal/CountdownScope;
.super Ljava/lang/Object;
.source "FixedIntervalPolling.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/core/http/internal/CountdownScope;",
        "",
        "",
        "maxPollingSecond",
        "Lkotlin/Function0;",
        "",
        "support",
        "<init>",
        "(ILkotlin/jvm/functions/Function0;)V",
        "a",
        "I",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "getSupport",
        "()Lkotlin/jvm/functions/Function0;",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "c",
        "Lteam/opay/kotlin/coroutine/SafeCoroutineScope;",
        "scope",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "d",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isRunning",
        "e",
        "Z",
        "countdownFinished",
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


# instance fields
.field public final a:I

.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "support"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lteam/opay/core/http/internal/CountdownScope;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/core/http/internal/CountdownScope;->b:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p1, p2, p1}, Lteam/opay/kotlin/coroutine/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lteam/opay/core/http/internal/CountdownScope;->c:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/core/http/internal/CountdownScope;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic a(Lteam/opay/core/http/internal/CountdownScope;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/core/http/internal/CountdownScope;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b(Lteam/opay/core/http/internal/CountdownScope;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/http/internal/CountdownScope;->c:Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/http/internal/CountdownScope;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/http/internal/CountdownScope;->e:Z

    .line 2
    .line 3
    return-void
.end method
