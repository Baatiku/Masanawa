.class final Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayMeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/payMe/PayMeFragment;->v0()V
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
    c = "team.opay.sme.va.v2.payMe.PayMeFragment$queryMerchantTransferNumberList$1"
    f = "PayMeFragment.kt"
    l = {
        0x9f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

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
    new-instance p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;-><init>(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->label:I

    .line 6
    .line 7
    const-string v2, "layoutInfo"

    .line 8
    .line 9
    const-string v3, "getRoot(...)"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-ne v1, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 33
    .line 34
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lkxd;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p1, p1, Lkxd;->e:Lbyd;

    .line 50
    .line 51
    invoke-virtual {p1}, Lbyd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 59
    .line 60
    invoke-static {v1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Lkxd;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :goto_0
    xor-int/2addr v1, v5

    .line 79
    invoke-static {p1, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 83
    .line 84
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->X(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput v5, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->label:I

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->n(Ljr2;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 98
    .line 99
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "<get-lifecycle>(...)"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 111
    .line 112
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_13

    .line 117
    .line 118
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    if-eqz v0, :cond_11

    .line 122
    .line 123
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 124
    .line 125
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 126
    .line 127
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/util/List;

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    new-array v6, v4, [Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 136
    .line 137
    invoke-interface {p1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, [Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move-object p1, v1

    .line 145
    :goto_2
    invoke-static {v0, p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->c0(Lteam/opay/sme/va/v2/payMe/PayMeFragment;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 149
    .line 150
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->V(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-nez v0, :cond_9

    .line 155
    .line 156
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 157
    .line 158
    invoke-static {v0}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->W(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    array-length v6, v0

    .line 165
    const/4 v7, 0x0

    .line 166
    :goto_3
    if-ge v7, v6, :cond_6

    .line 167
    .line 168
    aget-object v8, v0, v7

    .line 169
    .line 170
    invoke-virtual {v8}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getSelect()Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-eqz v9, :cond_5

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    move-object v8, v1

    .line 181
    :goto_4
    if-nez v8, :cond_e

    .line 182
    .line 183
    :cond_7
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 184
    .line 185
    invoke-static {v0}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->W(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    invoke-static {v0}, Lkotlin/collections/a;->M([Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    move-object v8, v0

    .line 196
    check-cast v8, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_8
    move-object v8, v1

    .line 200
    goto :goto_8

    .line 201
    :cond_9
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 202
    .line 203
    invoke-static {v0}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->W(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_d

    .line 208
    .line 209
    iget-object v6, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 210
    .line 211
    array-length v7, v0

    .line 212
    const/4 v8, 0x0

    .line 213
    :goto_5
    if-ge v8, v7, :cond_c

    .line 214
    .line 215
    aget-object v9, v0, v8

    .line 216
    .line 217
    invoke-virtual {v9}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-static {v6}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->V(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    if-eqz v11, :cond_a

    .line 226
    .line 227
    invoke-virtual {v11}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    goto :goto_6

    .line 232
    :cond_a
    move-object v11, v1

    .line 233
    :goto_6
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-eqz v10, :cond_b

    .line 238
    .line 239
    move-object v8, v9

    .line 240
    goto :goto_7

    .line 241
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_c
    move-object v8, v1

    .line 245
    :goto_7
    if-nez v8, :cond_e

    .line 246
    .line 247
    :cond_d
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 248
    .line 249
    invoke-static {v0}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->W(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_8

    .line 254
    .line 255
    invoke-static {v0}, Lkotlin/collections/a;->M([Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v8, v0

    .line 260
    check-cast v8, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 261
    .line 262
    :cond_e
    :goto_8
    invoke-static {p1, v8}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->Z(Lteam/opay/sme/va/v2/payMe/PayMeFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 266
    .line 267
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->Y(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 271
    .line 272
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->V(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz p1, :cond_f

    .line 277
    .line 278
    const/4 p1, 0x1

    .line 279
    goto :goto_9

    .line 280
    :cond_f
    const/4 p1, 0x0

    .line 281
    :goto_9
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 282
    .line 283
    invoke-static {v0}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v0, v0, Lkxd;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 288
    .line 289
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 293
    .line 294
    .line 295
    if-eqz p1, :cond_10

    .line 296
    .line 297
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 298
    .line 299
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, Lkxd;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 304
    .line 305
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 306
    .line 307
    .line 308
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 309
    .line 310
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object p1, p1, Lkxd;->p:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 315
    .line 316
    invoke-virtual {p1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_10
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 321
    .line 322
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    iget-object p1, p1, Lkxd;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    .line 328
    const-string v0, "titleOther"

    .line 329
    .line 330
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_11
    iget-object v0, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 338
    .line 339
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    if-eqz p1, :cond_12

    .line 348
    .line 349
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    goto :goto_a

    .line 354
    :cond_12
    move-object p1, v1

    .line 355
    :goto_a
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_b
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 359
    .line 360
    invoke-static {p1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->U(Lteam/opay/sme/va/v2/payMe/PayMeFragment;)Lkxd;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    iget-object p1, p1, Lkxd;->e:Lbyd;

    .line 365
    .line 366
    invoke-virtual {p1}, Lbyd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 374
    .line 375
    .line 376
    iget-object p1, p0, Lteam/opay/sme/va/v2/payMe/PayMeFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/payMe/PayMeFragment;

    .line 377
    .line 378
    invoke-static {p1, v4, v5, v1}, Lteam/opay/sme/va/v2/payMe/PayMeFragment;->G0(Lteam/opay/sme/va/v2/payMe/PayMeFragment;ZILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 382
    .line 383
    return-object p1
.end method
