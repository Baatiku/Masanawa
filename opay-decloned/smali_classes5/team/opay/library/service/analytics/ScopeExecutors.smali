.class public final Lteam/opay/library/service/analytics/ScopeExecutors;
.super Ljava/lang/Object;
.source "ScopeExecutors.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/library/service/analytics/ScopeExecutors$MainThreadExecutor;,
        Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;,
        Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;,
        Lteam/opay/library/service/analytics/ScopeExecutors$MainScope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0008R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/library/service/analytics/ScopeExecutors;",
        "",
        "Ljava/util/concurrent/Executor;",
        "diskIO",
        "networkIO",
        "mainThread",
        "<init>",
        "(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V",
        "()V",
        "a",
        "Ljava/util/concurrent/Executor;",
        "getDiskIO",
        "()Ljava/util/concurrent/Executor;",
        "b",
        "getNetworkIO",
        "c",
        "getMainThread",
        "IOExecutor",
        "IOScope",
        "MainScope",
        "MainThreadExecutor",
        "opay_analytics_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;

    invoke-direct {v0}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;-><init>()V

    new-instance v1, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;

    invoke-direct {v1}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;-><init>()V

    .line 3
    new-instance v2, Lteam/opay/library/service/analytics/ScopeExecutors$MainThreadExecutor;

    invoke-direct {v2}, Lteam/opay/library/service/analytics/ScopeExecutors$MainThreadExecutor;-><init>()V

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lteam/opay/library/service/analytics/ScopeExecutors;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "diskIO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkIO"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThread"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/library/service/analytics/ScopeExecutors;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lteam/opay/library/service/analytics/ScopeExecutors;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lteam/opay/library/service/analytics/ScopeExecutors;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
