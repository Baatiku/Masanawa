.class public final Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/event/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InflateThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000fR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;",
        "Ljava/lang/Thread;",
        "<init>",
        "()V",
        "",
        "run",
        "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;",
        "b",
        "()Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;",
        "request",
        "c",
        "(Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;)V",
        "a",
        "d",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "mQueue",
        "Landroidx/core/util/Pools$SynchronizedPool;",
        "Landroidx/core/util/Pools$SynchronizedPool;",
        "mRequestPool",
        "common-base_release"
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
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->b:Landroidx/core/util/Pools$SynchronizedPool;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;)V
    .locals 2
    .param p1    # Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;
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
    :try_start_0
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v1, "Failed to enqueue async inflate request"

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public final b()Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->b:Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final c(Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;)V
    .locals 2
    .param p1    # Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;
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
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->f(Lhm6;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->g(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->h(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->i(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->j(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->b:Landroidx/core/util/Pools$SynchronizedPool;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SynchronizedPool;->a(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->b()Lteam/opay/core/common/android/event/AsyncLayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v3}, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->d(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->d()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->c()Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move-object v3, v1

    .line 42
    :goto_0
    invoke-virtual {v0, v3}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->j(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateRequest;->b()Lteam/opay/core/common/android/event/AsyncLayoutInflater;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-static {v3}, Lteam/opay/core/common/android/event/AsyncLayoutInflater;->c(Lteam/opay/core/common/android/event/AsyncLayoutInflater;)Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    .line 61
    .line 62
    :catch_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/common/android/event/AsyncLayoutInflater$InflateThread;->d()V

    .line 2
    .line 3
    .line 4
    goto :goto_0
.end method
