.class public final Lteam/opay/core/common/android/event/OnStartLifecycleObserver;
.super Ljava/lang/Object;
.source "EventBus.kt"

# interfaces
.implements Lq43;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/OnStartLifecycleObserver;",
        "Lq43;",
        "Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "<init>",
        "(Lorg/greenrobot/eventbus/EventBus;)V",
        "Lag8;",
        "owner",
        "",
        "onStart",
        "(Lag8;)V",
        "onStop",
        "a",
        "Lorg/greenrobot/eventbus/EventBus;",
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
.field public final a:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventBus"

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
    iput-object p1, p0, Lteam/opay/core/common/android/event/OnStartLifecycleObserver;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public synthetic m(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->a(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->b(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->c(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->d(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStart(Lag8;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp43;->e(Lq43;Lag8;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/common/android/event/OnStartLifecycleObserver;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->j(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/core/common/android/event/OnStartLifecycleObserver;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onStop(Lag8;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lp43;->f(Lq43;Lag8;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/core/common/android/event/OnStartLifecycleObserver;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->j(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/core/common/android/event/OnStartLifecycleObserver;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
