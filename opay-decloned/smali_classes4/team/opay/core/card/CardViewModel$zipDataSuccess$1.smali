.class final Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CardViewModel.kt"

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
    c = "team.opay.core.card.CardViewModel$zipDataSuccess$1"
    f = "CardViewModel.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_zipDataSuccess:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/core/card/CardViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lteam/opay/core/card/CardViewModel;Lkotlin/jvm/functions/Function1;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Object;",
            ">;",
            "Lteam/opay/core/card/CardViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$this_zipDataSuccess:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$this_zipDataSuccess:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;-><init>(Landroidx/lifecycle/LiveData;Lteam/opay/core/card/CardViewModel;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->label:I

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
    iget-object p1, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$this_zipDataSuccess:Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->this$0:Lteam/opay/core/card/CardViewModel;

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/card/CardViewModel;->F0()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v3, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1$1;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v3, v4}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1$1;-><init>(Ljr2;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v1, v3}, Ly86;->f0(Lv56;Lv56;Lhm6;)Lv56;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1$a;

    .line 54
    .line 55
    iget-object v3, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    iget-object v4, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->$this_zipDataSuccess:Landroidx/lifecycle/LiveData;

    .line 58
    .line 59
    invoke-direct {v1, v3, v4}, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1$a;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LiveData;)V

    .line 60
    .line 61
    .line 62
    iput v2, p0, Lteam/opay/core/card/CardViewModel$zipDataSuccess$1;->label:I

    .line 63
    .line 64
    invoke-interface {p1, v1, p0}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method
