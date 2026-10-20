.class final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsFlashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.reward.flash.RewardsFlashViewModel$initData$1$1"
    f = "RewardsFlashViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $remindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            ">;",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->$remindList:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

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
    new-instance p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->$remindList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->$remindList:Ljava/util/List;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

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
    if-eqz v1, :cond_6

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
    invoke-static {v0}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->v(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getSessionNo()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-static {v0}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->v(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getProductList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 81
    .line 82
    invoke-virtual {v4}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->c()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v5}, Lteam/opay/pay/payment/data/DataMarketingProduct;->setReminded(Ljava/lang/Boolean;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-static {v0}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->u(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_0

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/opay/team/newhome/reward/FlashSaleGroup;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getSessionNo()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->d()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/FlashSaleGroup;->getProductList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_4

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 161
    .line 162
    invoke-virtual {v5}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductId()Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->c()Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_5

    .line 175
    .line 176
    invoke-static {v3}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v5, v6}, Lteam/opay/pay/payment/data/DataMarketingProduct;->setReminded(Ljava/lang/Boolean;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$initData$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 199
    .line 200
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1
.end method
