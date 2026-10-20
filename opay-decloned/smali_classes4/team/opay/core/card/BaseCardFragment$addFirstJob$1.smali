.class final Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseCardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/BaseCardFragment;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "team.opay.core.card.BaseCardFragment$addFirstJob$1"
    f = "BaseCardFragment.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/core/card/BaseCardFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/card/BaseCardFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/card/BaseCardFragment<",
            "TVB;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;-><init>(Lteam/opay/core/card/BaseCardFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->label:I

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
    iget-object p1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/card/BaseCardFragment;->z0()Lteam/opay/core/card/CardViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/core/card/CardViewModel;->N0()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 42
    .line 43
    invoke-virtual {v1}, Lteam/opay/core/card/BaseCardFragment;->z0()Lteam/opay/core/card/CardViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lteam/opay/core/card/CardViewModel;->p0()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lv56;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$1;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct {v3, v4}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$1;-><init>(Ljr2;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1, v3}, Ly86;->f0(Lv56;Lv56;Lhm6;)Lv56;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;

    .line 66
    .line 67
    iget-object v3, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->this$0:Lteam/opay/core/card/BaseCardFragment;

    .line 68
    .line 69
    invoke-direct {v1, v3}, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1$2;-><init>(Lteam/opay/core/card/BaseCardFragment;)V

    .line 70
    .line 71
    .line 72
    iput v2, p0, Lteam/opay/core/card/BaseCardFragment$addFirstJob$1;->label:I

    .line 73
    .line 74
    invoke-interface {p1, v1, p0}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_2

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1
.end method
