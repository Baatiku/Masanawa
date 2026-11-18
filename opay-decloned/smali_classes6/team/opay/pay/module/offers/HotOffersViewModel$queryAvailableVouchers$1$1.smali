.class final Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HotOffersViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/module/offers/HotOffersViewModel;->G(Lag8;Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "team.opay.pay.module.offers.HotOffersViewModel$queryAvailableVouchers$1$1"
    f = "HotOffersViewModel.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/AvailableVoucherRsp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $serviceId:Ljava/lang/String;

.field final synthetic $updateAll:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/module/offers/HotOffersViewModel;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/module/offers/HotOffersViewModel;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/AvailableVoucherRsp;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$serviceId:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$updateAll:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$serviceId:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$updateAll:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;-><init>(Lteam/opay/pay/module/offers/HotOffersViewModel;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;ZLjr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->label:I

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
    iput v2, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->label:I

    .line 28
    .line 29
    const-wide/16 v3, 0xc8

    .line 30
    .line 31
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lteam/opay/pay/module/offers/HotOffersViewModel;->L(Lteam/opay/pay/api/AvailableVoucherRsp;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 52
    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 65
    .line 66
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$serviceId:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lteam/opay/pay/module/offers/HotOffersViewModel;->J(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 78
    .line 79
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0}, Lteam/opay/pay/api/AvailableVoucherRsp;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v0, v1

    .line 94
    :goto_1
    const-string v2, ""

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    move-object v0, v2

    .line 99
    :cond_4
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 109
    .line 110
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0}, Lteam/opay/pay/api/AvailableVoucherRsp;->b()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move-object v0, v1

    .line 124
    :goto_2
    if-nez v0, :cond_6

    .line 125
    .line 126
    move-object v0, v2

    .line 127
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 131
    .line 132
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/pay/api/AvailableVoucherRsp;->c()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move-object v0, v1

    .line 148
    :goto_3
    if-nez v0, :cond_8

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_8
    move-object v2, v0

    .line 152
    :goto_4
    invoke-virtual {p1, v2}, Lteam/opay/pay/module/offers/HotOffersViewModel;->K(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v0, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 162
    .line 163
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 168
    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Lteam/opay/pay/api/AvailableVoucherRsp;->e()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    move-object v0, v1

    .line 177
    :goto_5
    if-nez v0, :cond_a

    .line 178
    .line 179
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_a
    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableList<team.opay.pay.api.QueryVoucherItem>"

    .line 184
    .line 185
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->this$0:Lteam/opay/pay/module/offers/HotOffersViewModel;

    .line 196
    .line 197
    invoke-virtual {p1}, Lteam/opay/pay/module/offers/HotOffersViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-instance v0, Lkotlin/Pair;

    .line 202
    .line 203
    iget-boolean v2, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$updateAll:Z

    .line 204
    .line 205
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v3, p0, Lteam/opay/pay/module/offers/HotOffersViewModel$queryAvailableVouchers$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 210
    .line 211
    invoke-virtual {v3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lteam/opay/pay/api/AvailableVoucherRsp;

    .line 216
    .line 217
    if-eqz v3, :cond_b

    .line 218
    .line 219
    invoke-virtual {v3}, Lteam/opay/pay/api/AvailableVoucherRsp;->a()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :cond_b
    if-nez v1, :cond_c

    .line 224
    .line 225
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :cond_c
    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p1
.end method
