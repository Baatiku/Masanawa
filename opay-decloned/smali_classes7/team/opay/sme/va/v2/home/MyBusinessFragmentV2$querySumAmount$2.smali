.class final Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->i1()V
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
    c = "team.opay.sme.va.v2.home.MyBusinessFragmentV2$querySumAmount$2"
    f = "MyBusinessFragmentV2.kt"
    l = {
        0x167
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

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
    new-instance p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;-><init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->v0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput v2, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->label:I

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->N(Ljr2;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "<get-lifecycle>(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_12

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;

    .line 68
    .line 69
    iget-object v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 70
    .line 71
    invoke-static {v1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    if-eqz v1, :cond_10

    .line 78
    .line 79
    iget-object v5, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 80
    .line 81
    iget-object v6, v1, Lgxd;->k:Lteam/opay/core/widget/PulseLoaderView;

    .line 82
    .line 83
    const-string v7, "loadingView"

    .line 84
    .line 85
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v6}, Lg0g;->d(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v1, Lgxd;->q:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 92
    .line 93
    invoke-virtual {v6, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 97
    .line 98
    iget-object v6, v6, Lyyd;->k:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 99
    .line 100
    const-string v7, "holderAmount"

    .line 101
    .line 102
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v6}, Lg0g;->d(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 109
    .line 110
    iget-object v6, v6, Lyyd;->m:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 111
    .line 112
    const-string v7, "holderTrxns"

    .line 113
    .line 114
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Lg0g;->d(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 121
    .line 122
    iget-object v6, v6, Lyyd;->l:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 123
    .line 124
    const-string v7, "holderBalance"

    .line 125
    .line 126
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v6}, Lg0g;->d(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getTotalAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    move-object v6, v4

    .line 140
    :goto_1
    invoke-static {v5, v6}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->w0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 141
    .line 142
    .line 143
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 144
    .line 145
    iget-object v6, v6, Lyyd;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    const-string v7, "layoutBalance"

    .line 148
    .line 149
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getInterestMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    move-object v7, v4

    .line 160
    :goto_2
    if-eqz v7, :cond_6

    .line 161
    .line 162
    invoke-static {v7}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_5

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    const/4 v7, 0x0

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    :goto_3
    const/4 v7, 0x1

    .line 172
    :goto_4
    xor-int/2addr v7, v2

    .line 173
    invoke-static {v6, v7}, Lg0g;->j(Landroid/view/View;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 177
    .line 178
    iget-object v6, v6, Lyyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getInterestMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    goto :goto_5

    .line 187
    :cond_7
    move-object v7, v4

    .line 188
    :goto_5
    const-string v8, ""

    .line 189
    .line 190
    if-nez v7, :cond_8

    .line 191
    .line 192
    move-object v7, v8

    .line 193
    :cond_8
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v6, v1, Lgxd;->h:Lyyd;

    .line 197
    .line 198
    iget-object v6, v6, Lyyd;->i:Landroidx/constraintlayout/widget/Group;

    .line 199
    .line 200
    const-string v7, "groupBalanceAmount"

    .line 201
    .line 202
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getInterestAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    goto :goto_6

    .line 212
    :cond_9
    move-object v7, v4

    .line 213
    :goto_6
    if-eqz v7, :cond_a

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    const/4 v2, 0x0

    .line 217
    :goto_7
    invoke-static {v6, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v1, Lgxd;->h:Lyyd;

    .line 221
    .line 222
    iget-object v2, v2, Lyyd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    if-eqz v0, :cond_b

    .line 225
    .line 226
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getInterestAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    if-eqz v6, :cond_b

    .line 231
    .line 232
    invoke-virtual {v6, v8}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    goto :goto_8

    .line 237
    :cond_b
    move-object v6, v4

    .line 238
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v8, "+"

    .line 244
    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v1, Lgxd;->h:Lyyd;

    .line 259
    .line 260
    iget-object v2, v2, Lyyd;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 261
    .line 262
    if-eqz v0, :cond_c

    .line 263
    .line 264
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getInterestJumUrl()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    goto :goto_9

    .line 269
    :cond_c
    move-object v6, v4

    .line 270
    :goto_9
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v1, Lgxd;->h:Lyyd;

    .line 274
    .line 275
    iget-object v2, v2, Lyyd;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    if-eqz v0, :cond_d

    .line 278
    .line 279
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getTotalCount()Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    if-nez v6, :cond_e

    .line 284
    .line 285
    :cond_d
    const-string v6, "--"

    .line 286
    .line 287
    :cond_e
    sget v7, Lteam/opay/sme/va/R$string;->sme_va_account_sum_unit:I

    .line 288
    .line 289
    invoke-virtual {v5, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v6, " "

    .line 302
    .line 303
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, v1, Lgxd;->h:Lyyd;

    .line 317
    .line 318
    iget-object v1, v1, Lyyd;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 319
    .line 320
    if-eqz v0, :cond_f

    .line 321
    .line 322
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;->getTransactionUrl()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    goto :goto_a

    .line 327
    :cond_f
    move-object v0, v4

    .line 328
    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_10
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 332
    .line 333
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;

    .line 338
    .line 339
    invoke-static {v0, v1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->y0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 343
    .line 344
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;

    .line 349
    .line 350
    invoke-static {v0, v1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->A0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/BizPaymentSumAmountResponse;)V

    .line 351
    .line 352
    .line 353
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 354
    .line 355
    iget-object v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 356
    .line 357
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const-string v2, "mybusiness_page_success_show"

    .line 362
    .line 363
    new-array v3, v3, [Lkotlin/Pair;

    .line 364
    .line 365
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->isFailure()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_12

    .line 373
    .line 374
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$querySumAmount$2;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 375
    .line 376
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    if-eqz p1, :cond_11

    .line 385
    .line 386
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    :cond_11
    invoke-static {v0, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :cond_12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 394
    .line 395
    return-object p1
.end method
