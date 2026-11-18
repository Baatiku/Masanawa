.class final Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;
.super Ljava/lang/Object;
.source "ScopeExecutors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/library/service/analytics/ScopeExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IOExecutor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;",
        "Ljava/util/concurrent/Executor;",
        "()V",
        "execute",
        "",
        "command",
        "Ljava/lang/Runnable;",
        "opay_analytics_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "command"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;

    .line 7
    .line 8
    invoke-direct {v1}, Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p1, v1, v0}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;-><init>(Ljava/lang/Runnable;Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;Ljr2;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    return-void
.end method
