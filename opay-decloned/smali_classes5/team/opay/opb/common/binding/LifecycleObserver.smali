.class public final Lteam/opay/opb/common/binding/LifecycleObserver;
.super Ljava/lang/Object;
.source "Lifecycle.kt"

# interfaces
.implements Lq43;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R!\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/opb/common/binding/LifecycleObserver;",
        "Lq43;",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle$State;",
        "state",
        "Lkotlin/Function0;",
        "",
        "Lteam/opay/opb/common/binding/Callback;",
        "callback",
        "<init>",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;)V",
        "Lag8;",
        "owner",
        "m",
        "(Lag8;)V",
        "onDestroy",
        "a",
        "Landroidx/lifecycle/Lifecycle;",
        "b",
        "Landroidx/lifecycle/Lifecycle$State;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
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

.field public final b:Landroidx/lifecycle/Lifecycle$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/jvm/functions/Function0<",
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
    const-string v0, "state"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->a:Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->c:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public m(Lag8;)V
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
    invoke-static {p0, p1}, Lp43;->a(Lq43;Lag8;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->c:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onDestroy(Lag8;)V
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
    invoke-static {p0, p1}, Lp43;->b(Lq43;Lag8;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->c:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/common/binding/LifecycleObserver;->a:Landroidx/lifecycle/Lifecycle;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Lzf8;)V

    .line 25
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
