.class public final Lteam/opay/core/common/android/event/CallbackWrapper;
.super Ljava/lang/Object;
.source "Event.kt"

# interfaces
.implements Lq43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq43;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0011R$\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "R",
        "Lq43;",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Lkotlin/Function1;",
        "",
        "block",
        "<init>",
        "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V",
        "result",
        "a",
        "(Ljava/lang/Object;)V",
        "Lag8;",
        "owner",
        "onDestroy",
        "(Lag8;)V",
        "Landroidx/lifecycle/Lifecycle;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
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
.field public final a:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycle"

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
    iput-object p1, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->a:Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->b:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lnk8;->c:Lnk8;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->a:Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "CallbackWrapper.currentState = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->a:Landroidx/lifecycle/Lifecycle;

    .line 32
    .line 33
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->b:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public synthetic m(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->a(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy(Lag8;)V
    .locals 3
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
    invoke-static {p0, p1}, Lp43;->b(Lq43;Lag8;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p1, Lnk8;->c:Lnk8;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const-string v1, "CallbackWrapper.onDestroy"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v1, v2, v0, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->a:Landroidx/lifecycle/Lifecycle;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lteam/opay/core/common/android/event/CallbackWrapper;->b:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
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

.method public synthetic onStart(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->e(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->f(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
