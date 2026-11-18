.class final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsFlashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.reward.flash.RewardsFlashViewModel$fetchFlashSale$1$1$1$1"
    f = "RewardsFlashViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $remindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessionNo:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            ">;",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/core/android/arch/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$remindList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$data:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

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
    new-instance p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$remindList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$data:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$remindList:Ljava/util/List;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 30
    .line 31
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getSessionNo()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->d()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getProductList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 88
    .line 89
    invoke-virtual {v4}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->c()Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    invoke-static {v5}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Lteam/opay/pay/payment/data/DataMarketingProduct;->setReminded(Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v0, Lkotlin/Pair;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$data:Ljava/util/List;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method
