.class final Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ElectricityPaymentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->s2(Z)V
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
    c = "team.opay.pay.payment.electricity.ElectricityPaymentFragment$refreshAmountBundles$1"
    f = "ElectricityPaymentFragment.kt"
    l = {
        0x36b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

.field final synthetic $needRewards:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;Lteam/opay/pay/payment/electricity/ElectricityBundleV3;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;",
            "Lteam/opay/pay/payment/electricity/ElectricityBundleV3;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$needRewards:Z

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
    new-instance p1, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 6
    .line 7
    iget-boolean v2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$needRewards:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;Lteam/opay/pay/payment/electricity/ElectricityBundleV3;ZLjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->label:I

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
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->K0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->a()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 41
    .line 42
    invoke-static {v3}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->J0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->i()Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v3, v4

    .line 55
    :goto_0
    iget-object v5, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 56
    .line 57
    invoke-static {v5}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->I0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/payment/ElectricityCustomerInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v6, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 62
    .line 63
    invoke-static {v6}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->L0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p1, v1, v3, v5, v6}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->d0(Ljava/util/List;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Lteam/opay/pay/payment/ElectricityCustomerInfo;Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    new-instance v4, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/16 p1, 0xa

    .line 76
    .line 77
    invoke-static {v8, p1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lteam/opay/pay/payment/electricity/PanelItem;

    .line 99
    .line 100
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/PanelItem;->c()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move-object v12, v4

    .line 109
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v1, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;

    .line 114
    .line 115
    iget-object v9, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 116
    .line 117
    iget-boolean v10, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$needRewards:Z

    .line 118
    .line 119
    iget-object v11, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 120
    .line 121
    const/4 v13, 0x0

    .line 122
    move-object v7, v1

    .line 123
    invoke-direct/range {v7 .. v13}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;-><init>(Ljava/util/List;Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;ZLteam/opay/pay/payment/electricity/ElectricityBundleV3;Ljava/util/List;Ljr2;)V

    .line 124
    .line 125
    .line 126
    iput v2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->label:I

    .line 127
    .line 128
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-ne p1, v0, :cond_4

    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p1
.end method
