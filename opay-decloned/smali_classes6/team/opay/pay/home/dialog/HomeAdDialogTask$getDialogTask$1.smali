.class final Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeAdDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeAdDialogTask;->e()Lkotlinx/coroutines/l;
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
    c = "team.opay.pay.home.dialog.HomeAdDialogTask$getDialogTask$1"
    f = "HomeAdDialogTask.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/home/dialog/HomeAdDialogTask;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/dialog/HomeAdDialogTask;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

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
    .locals 2
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
    new-instance v0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->label:I

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
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lzr2;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lzr2;

    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->this$0:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object v1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    iput v2, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1;->label:I

    .line 46
    .line 47
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Ljr2;)Ljr2;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Ljr2;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->B()V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$a;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v3, v2}, Lzv1;->t(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->p(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1, v3, p1}, Lteam/opay/pay/home/dialog/HomeDialogTask;->i(Ljr2;Lzr2;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->p(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->o(Lteam/opay/pay/home/dialog/HomeAdDialogTask;)Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "getViewLifecycleOwner(...)"

    .line 102
    .line 103
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v5, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;

    .line 107
    .line 108
    invoke-direct {v5, v1, v3, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;-><init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lzv1;Lzr2;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lteam/opay/pay/home/dialog/HomeAdDialogTask$a;

    .line 112
    .line 113
    invoke-direct {p1, v5}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4, p1}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->r()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-ne p1, v1, :cond_3

    .line 128
    .line 129
    invoke-static {p0}, Lp33;->c(Ljr2;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    if-ne p1, v0, :cond_4

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p1
.end method
