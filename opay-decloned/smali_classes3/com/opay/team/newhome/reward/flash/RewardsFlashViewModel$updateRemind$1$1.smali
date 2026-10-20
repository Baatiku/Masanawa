.class final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsFlashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.reward.flash.RewardsFlashViewModel$updateRemind$1$1"
    f = "RewardsFlashViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $product:Lteam/opay/pay/payment/data/DataMarketingProduct;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
            "Lteam/opay/pay/payment/data/DataMarketingProduct;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

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
    new-instance p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->u(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    add-int/lit8 v5, v3, 0x1

    .line 39
    .line 40
    if-gez v3, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v4, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getProductList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    add-int/lit8 v7, v4, 0x1

    .line 69
    .line 70
    if-gez v4, :cond_1

    .line 71
    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 73
    .line 74
    .line 75
    :cond_1
    check-cast v6, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 76
    .line 77
    invoke-virtual {v6}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v6, v4}, Lteam/opay/pay/payment/data/DataMarketingProduct;->setReminded(Ljava/lang/Boolean;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    move v4, v7

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v3, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->v(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getProductList()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_7

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    add-int/lit8 v4, v0, 0x1

    .line 133
    .line 134
    if-gez v0, :cond_5

    .line 135
    .line 136
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 137
    .line 138
    .line 139
    :cond_5
    check-cast v3, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 140
    .line 141
    invoke-virtual {v3}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v3, v0}, Lteam/opay/pay/payment/data/DataMarketingProduct;->setReminded(Ljava/lang/Boolean;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    move v0, v4

    .line 163
    goto :goto_2

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method
