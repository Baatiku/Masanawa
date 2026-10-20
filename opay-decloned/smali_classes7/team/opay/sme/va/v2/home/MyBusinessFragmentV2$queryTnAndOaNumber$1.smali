.class final Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MyBusinessFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->j1()V
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
    c = "team.opay.sme.va.v2.home.MyBusinessFragmentV2$queryTnAndOaNumber$1"
    f = "MyBusinessFragmentV2.kt"
    l = {
        0x10d,
        0x113
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

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
    new-instance p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;-><init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->label:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_2

    .line 11
    .line 12
    if-eq v3, v0, :cond_1

    .line 13
    .line 14
    if-ne v3, v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
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
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->s0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;->getItemCount()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p1, Lgxd;->i:Lgzd;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lgzd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 74
    .line 75
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p1, Lgxd;->i:Lgzd;

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    iget-object p1, p1, Lgzd;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object v3, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 90
    .line 91
    invoke-static {v3}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->r0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/v2/home/HolderPaymentAccountAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    sget-object p1, Loaf;->a:Loaf;

    .line 99
    .line 100
    invoke-virtual {p1}, Loaf;->s()Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    iget-object v3, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 107
    .line 108
    invoke-static {v3, p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->B0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/MerchantTNResp;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 112
    .line 113
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->v0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->label:I

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->V(Ljr2;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v2, :cond_6

    .line 124
    .line 125
    return-object v2

    .line 126
    :cond_6
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 127
    .line 128
    iget-object v3, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const-string v5, "<get-lifecycle>(...)"

    .line 135
    .line 136
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 140
    .line 141
    invoke-static {v3, v5}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_11

    .line 146
    .line 147
    instance-of v3, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 148
    .line 149
    if-eqz v3, :cond_10

    .line 150
    .line 151
    move-object v3, p1

    .line 152
    check-cast v3, Lteam/opay/core/http/HttpResult$Success;

    .line 153
    .line 154
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 159
    .line 160
    if-eqz v5, :cond_7

    .line 161
    .line 162
    invoke-virtual {v5}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    goto :goto_1

    .line 167
    :cond_7
    move-object v5, v4

    .line 168
    :goto_1
    if-eqz v5, :cond_f

    .line 169
    .line 170
    invoke-static {v5}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_8

    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :cond_8
    iget-object v5, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 179
    .line 180
    invoke-virtual {v5}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v3}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    invoke-virtual {v3}, Lteam/opay/sme/va/receive/MerchantTNResp;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    goto :goto_2

    .line 197
    :cond_9
    move-object v3, v4

    .line 198
    :goto_2
    invoke-static {v5, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->L$0:Ljava/lang/Object;

    .line 202
    .line 203
    iput v1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->label:I

    .line 204
    .line 205
    const-wide/16 v5, 0xbb8

    .line 206
    .line 207
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-ne v3, v2, :cond_a

    .line 212
    .line 213
    return-object v2

    .line 214
    :cond_a
    move-object v2, p1

    .line 215
    :goto_3
    sget-object v5, Lud;->a:Lud;

    .line 216
    .line 217
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 218
    .line 219
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    move-object p1, v2

    .line 224
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 225
    .line 226
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 231
    .line 232
    if-eqz v3, :cond_b

    .line 233
    .line 234
    invoke-virtual {v3}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    goto :goto_4

    .line 239
    :cond_b
    move-object v3, v4

    .line 240
    :goto_4
    if-nez v3, :cond_c

    .line 241
    .line 242
    const-string v3, ""

    .line 243
    .line 244
    :cond_c
    move-object v7, v3

    .line 245
    const/4 v9, 0x4

    .line 246
    const/4 v10, 0x0

    .line 247
    const/4 v8, 0x0

    .line 248
    invoke-static/range {v5 .. v10}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    sget-object v3, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 252
    .line 253
    iget-object v5, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 254
    .line 255
    invoke-virtual {v5}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 264
    .line 265
    if-eqz v6, :cond_d

    .line 266
    .line 267
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/MerchantTNResp;->getJumpUrl()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    goto :goto_5

    .line 272
    :cond_d
    move-object v6, v4

    .line 273
    :goto_5
    const-string v7, "url"

    .line 274
    .line 275
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 284
    .line 285
    if-eqz p1, :cond_e

    .line 286
    .line 287
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/MerchantTNResp;->getMessage()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    :cond_e
    const-string p1, "toast"

    .line 292
    .line 293
    invoke-static {p1, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    new-array v1, v1, [Lkotlin/Pair;

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    aput-object v6, v1, v4

    .line 301
    .line 302
    aput-object p1, v1, v0

    .line 303
    .line 304
    const-string p1, "mybusiness_page_no_tn"

    .line 305
    .line 306
    invoke-virtual {v3, v5, p1, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 310
    .line 311
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 316
    .line 317
    .line 318
    move-object p1, v2

    .line 319
    :cond_f
    :goto_6
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 320
    .line 321
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 322
    .line 323
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Lteam/opay/sme/va/receive/MerchantTNResp;

    .line 328
    .line 329
    invoke-static {v0, p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->B0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Lteam/opay/sme/va/receive/MerchantTNResp;)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_10
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 334
    .line 335
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->s0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lteam/opay/sme/va/v2/home/PaymentAccountAdapter;->getDataList()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_11

    .line 348
    .line 349
    iget-object p1, p0, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$queryTnAndOaNumber$1;->this$0:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 350
    .line 351
    invoke-static {p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;->p0(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)Lgxd;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-eqz p1, :cond_11

    .line 356
    .line 357
    iget-object p1, p1, Lgxd;->i:Lgzd;

    .line 358
    .line 359
    if-eqz p1, :cond_11

    .line 360
    .line 361
    invoke-virtual {p1}, Lgzd;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    if-eqz p1, :cond_11

    .line 366
    .line 367
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    :cond_11
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 371
    .line 372
    return-object p1
.end method
