.class final Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BettingTopupViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v0(Ljava/lang/String;)V
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
    c = "team.opay.pay.payment.betting.BettingTopupViewModel$showHighLightAmount$1"
    f = "BettingTopupViewModel.kt"
    l = {
        0x143,
        0x145,
        0x147
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $voucherPayAmount:Ljava/lang/Float;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/Float;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/betting/BettingTopupViewModel;",
            "Ljava/lang/Float;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->$voucherPayAmount:Ljava/lang/Float;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
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
    new-instance p1, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->$voucherPayAmount:Ljava/lang/Float;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/Float;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x4b0

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eq v1, v7, :cond_2

    .line 16
    .line 17
    if-eq v1, v6, :cond_1

    .line 18
    .line 19
    if-ne v1, v5, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->$voucherPayAmount:Ljava/lang/Float;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput v7, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->label:I

    .line 56
    .line 57
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_4

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_4
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput v6, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->label:I

    .line 74
    .line 75
    const-wide/16 v6, 0x258

    .line 76
    .line 77
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_5

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_5
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->$voucherPayAmount:Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput v5, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->label:I

    .line 96
    .line 97
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_6

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_6
    :goto_2
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1
.end method
