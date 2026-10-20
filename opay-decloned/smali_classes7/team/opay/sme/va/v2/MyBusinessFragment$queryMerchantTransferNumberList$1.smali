.class final Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/MyBusinessFragment;->s1()V
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
    c = "team.opay.sme.va.v2.MyBusinessFragment$queryMerchantTransferNumberList$1"
    f = "MyBusinessFragment.kt"
    l = {
        0x17a,
        0x183
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/v2/MyBusinessFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

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
    new-instance p1, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;-><init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->label:I

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v4, :cond_2

    .line 12
    .line 13
    if-eq v4, v1, :cond_1

    .line 14
    .line 15
    if-ne v4, v2, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lteam/opay/core/http/HttpResult;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->F0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->label:I

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->P(Ljr2;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v3, :cond_3

    .line 54
    .line 55
    return-object v3

    .line 56
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 57
    .line 58
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v6, "<get-lifecycle>(...)"

    .line 65
    .line 66
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 70
    .line 71
    invoke-static {v4, v6}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_24

    .line 76
    .line 77
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 78
    .line 79
    invoke-static {v4}, Lteam/opay/sme/va/v2/MyBusinessFragment;->G0(Lteam/opay/sme/va/v2/MyBusinessFragment;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 83
    .line 84
    invoke-static {v4}, Lteam/opay/sme/va/v2/MyBusinessFragment;->v0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lfxd;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v4, v4, Lfxd;->E:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 91
    .line 92
    .line 93
    instance-of v4, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 94
    .line 95
    if-eqz v4, :cond_23

    .line 96
    .line 97
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 98
    .line 99
    move-object v6, p1

    .line 100
    check-cast v6, Lteam/opay/core/http/HttpResult$Success;

    .line 101
    .line 102
    invoke-virtual {v6}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 107
    .line 108
    if-eqz v7, :cond_4

    .line 109
    .line 110
    invoke-virtual {v7}, Lteam/opay/sme/va/receive/MerchantTNResp;->getTransferNumberListOld()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move-object v7, v5

    .line 116
    :goto_1
    invoke-static {v4, v7}, Lteam/opay/sme/va/v2/MyBusinessFragment;->N0(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 124
    .line 125
    if-eqz v4, :cond_5

    .line 126
    .line 127
    invoke-virtual {v4}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move-object v4, v5

    .line 133
    :goto_2
    if-eqz v4, :cond_d

    .line 134
    .line 135
    invoke-static {v4}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_6
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 144
    .line 145
    invoke-virtual {v4}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v6}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 154
    .line 155
    if-eqz v6, :cond_7

    .line 156
    .line 157
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/MerchantTNResp;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    move-object v6, v5

    .line 163
    :goto_3
    invoke-static {v4, v6}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput v2, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->label:I

    .line 169
    .line 170
    const-wide/16 v6, 0xbb8

    .line 171
    .line 172
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-ne v4, v3, :cond_8

    .line 177
    .line 178
    return-object v3

    .line 179
    :cond_8
    move-object v3, p1

    .line 180
    :goto_4
    sget-object v6, Lud;->a:Lud;

    .line 181
    .line 182
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 183
    .line 184
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    check-cast v3, Lteam/opay/core/http/HttpResult$Success;

    .line 189
    .line 190
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 195
    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    goto :goto_5

    .line 203
    :cond_9
    move-object p1, v5

    .line 204
    :goto_5
    if-nez p1, :cond_a

    .line 205
    .line 206
    const-string p1, ""

    .line 207
    .line 208
    :cond_a
    move-object v8, p1

    .line 209
    const/4 v10, 0x4

    .line 210
    const/4 v11, 0x0

    .line 211
    const/4 v9, 0x0

    .line 212
    invoke-static/range {v6 .. v11}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 216
    .line 217
    iget-object v4, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 218
    .line 219
    invoke-virtual {v4}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 228
    .line 229
    if-eqz v6, :cond_b

    .line 230
    .line 231
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    goto :goto_6

    .line 236
    :cond_b
    move-object v6, v5

    .line 237
    :goto_6
    const-string v7, "url"

    .line 238
    .line 239
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 248
    .line 249
    if-eqz v3, :cond_c

    .line 250
    .line 251
    invoke-virtual {v3}, Lteam/opay/sme/va/receive/MerchantTNResp;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_7

    .line 256
    :cond_c
    move-object v3, v5

    .line 257
    :goto_7
    const-string v7, "toast"

    .line 258
    .line 259
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    new-array v2, v2, [Lkotlin/Pair;

    .line 264
    .line 265
    aput-object v6, v2, v0

    .line 266
    .line 267
    aput-object v3, v2, v1

    .line 268
    .line 269
    const-string v0, "mybusiness_page_no_tn"

    .line 270
    .line 271
    invoke-virtual {p1, v4, v0, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 275
    .line 276
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 281
    .line 282
    .line 283
    :cond_d
    :goto_8
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 284
    .line 285
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->A0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    if-eqz p1, :cond_17

    .line 290
    .line 291
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_e

    .line 296
    .line 297
    goto/16 :goto_d

    .line 298
    .line 299
    :cond_e
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 300
    .line 301
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_11

    .line 306
    .line 307
    iget-object v1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_10

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    move-object v3, v2

    .line 324
    check-cast v3, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 325
    .line 326
    invoke-virtual {v3}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->A0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-eqz v3, :cond_f

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_10
    move-object v2, v5

    .line 342
    :goto_9
    check-cast v2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 343
    .line 344
    if-nez v2, :cond_16

    .line 345
    .line 346
    :cond_11
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 347
    .line 348
    invoke-static {v0}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-eqz v0, :cond_14

    .line 353
    .line 354
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_13

    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    move-object v2, v1

    .line 369
    check-cast v2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 370
    .line 371
    invoke-virtual {v2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getSelect()Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_12

    .line 376
    .line 377
    goto :goto_a

    .line 378
    :cond_13
    move-object v1, v5

    .line 379
    :goto_a
    check-cast v1, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 380
    .line 381
    move-object v2, v1

    .line 382
    goto :goto_b

    .line 383
    :cond_14
    move-object v2, v5

    .line 384
    :goto_b
    if-nez v2, :cond_16

    .line 385
    .line 386
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 387
    .line 388
    invoke-static {v0}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_15

    .line 393
    .line 394
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object v2, v0

    .line 399
    check-cast v2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_15
    move-object v2, v5

    .line 403
    :cond_16
    :goto_c
    invoke-static {p1, v2}, Lteam/opay/sme/va/v2/MyBusinessFragment;->I0(Lteam/opay/sme/va/v2/MyBusinessFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 404
    .line 405
    .line 406
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 407
    .line 408
    invoke-static {p1, v5}, Lteam/opay/sme/va/v2/MyBusinessFragment;->M0(Lteam/opay/sme/va/v2/MyBusinessFragment;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 412
    .line 413
    goto/16 :goto_12

    .line 414
    .line 415
    :cond_17
    :goto_d
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 416
    .line 417
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->x0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    if-nez p1, :cond_1d

    .line 422
    .line 423
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 424
    .line 425
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    if-eqz v0, :cond_1b

    .line 430
    .line 431
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_19

    .line 440
    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    move-object v2, v1

    .line 446
    check-cast v2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 447
    .line 448
    invoke-virtual {v2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getSelect()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-eqz v2, :cond_18

    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_19
    move-object v1, v5

    .line 456
    :goto_e
    check-cast v1, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 457
    .line 458
    if-nez v1, :cond_1a

    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_1a
    move-object v5, v1

    .line 462
    goto :goto_10

    .line 463
    :cond_1b
    :goto_f
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 464
    .line 465
    invoke-static {v0}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    if-eqz v0, :cond_1c

    .line 470
    .line 471
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    move-object v5, v0

    .line 476
    check-cast v5, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 477
    .line 478
    :cond_1c
    :goto_10
    invoke-static {p1, v5}, Lteam/opay/sme/va/v2/MyBusinessFragment;->I0(Lteam/opay/sme/va/v2/MyBusinessFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)V

    .line 479
    .line 480
    .line 481
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_1d
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 485
    .line 486
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    if-eqz p1, :cond_21

    .line 491
    .line 492
    iget-object v0, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 493
    .line 494
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_20

    .line 503
    .line 504
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    move-object v2, v1

    .line 509
    check-cast v2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 510
    .line 511
    invoke-virtual {v2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-static {v0}, Lteam/opay/sme/va/v2/MyBusinessFragment;->x0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    if-eqz v3, :cond_1f

    .line 520
    .line 521
    invoke-virtual {v3}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    goto :goto_11

    .line 526
    :cond_1f
    move-object v3, v5

    .line 527
    :goto_11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-eqz v2, :cond_1e

    .line 532
    .line 533
    move-object v5, v1

    .line 534
    :cond_20
    check-cast v5, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 535
    .line 536
    if-nez v5, :cond_22

    .line 537
    .line 538
    :cond_21
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 539
    .line 540
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->C0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    if-eqz p1, :cond_22

    .line 545
    .line 546
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 551
    .line 552
    :cond_22
    :goto_12
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$queryMerchantTransferNumberList$1;->this$0:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 553
    .line 554
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->O0(Lteam/opay/sme/va/v2/MyBusinessFragment;)V

    .line 555
    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_23
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 559
    .line 560
    .line 561
    :cond_24
    :goto_13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 562
    .line 563
    return-object p1
.end method
