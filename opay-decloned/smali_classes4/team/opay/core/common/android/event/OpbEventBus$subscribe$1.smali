.class final Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OpbEventBus.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.common.android.event.OpbEventBus$subscribe$1"
    f = "OpbEventBus.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $clazz:Lho7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lho7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minState:Landroidx/lifecycle/Lifecycle$State;

.field final synthetic $onReceived:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $owner:Lag8;

.field final synthetic $this_subscribe:Lteam/opay/core/common/android/event/OpbEventBus;

.field label:I


# direct methods
.method public constructor <init>(Lag8;Landroidx/lifecycle/Lifecycle$State;Lteam/opay/core/common/android/event/OpbEventBus;Lho7;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lteam/opay/core/common/android/event/OpbEventBus;",
            "Lho7<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$owner:Lag8;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$minState:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$this_subscribe:Lteam/opay/core/common/android/event/OpbEventBus;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$clazz:Lho7;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$owner:Lag8;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$minState:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$this_subscribe:Lteam/opay/core/common/android/event/OpbEventBus;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$clazz:Lho7;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;-><init>(Lag8;Landroidx/lifecycle/Lifecycle$State;Lteam/opay/core/common/android/event/OpbEventBus;Lho7;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$owner:Lag8;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$minState:Landroidx/lifecycle/Lifecycle$State;

    .line 30
    .line 31
    new-instance v3, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1$1;

    .line 32
    .line 33
    iget-object v4, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$this_subscribe:Lteam/opay/core/common/android/event/OpbEventBus;

    .line 34
    .line 35
    iget-object v5, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$clazz:Lho7;

    .line 36
    .line 37
    iget-object v6, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->$onReceived:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    invoke-direct {v3, v4, v5, v6, v7}, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1$1;-><init>(Lteam/opay/core/common/android/event/OpbEventBus;Lho7;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lteam/opay/core/common/android/event/OpbEventBus$subscribe$1;->label:I

    .line 44
    .line 45
    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->a(Lag8;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p1
.end method
