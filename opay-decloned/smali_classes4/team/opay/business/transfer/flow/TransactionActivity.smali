.class public final Lteam/opay/business/transfer/flow/TransactionActivity;
.super Lbx6;
.source "TransactionActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/TransactionActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onNewIntent",
        "",
        "e0",
        "(Landroid/content/Intent;Z)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "h0",
        "(Landroidx/fragment/app/Fragment;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "(Landroid/content/Intent;)V",
        "business-transfer-flow_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lbx6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d0(Lteam/opay/business/transfer/flow/TransactionActivity;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/TransactionActivity;->g0(Lteam/opay/business/transfer/flow/TransactionActivity;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e0(Landroid/content/Intent;Z)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v5

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    :cond_1
    if-eqz v5, :cond_12

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const v7, -0x3d8d7f1d

    .line 28
    .line 29
    .line 30
    const-string v8, "format(...)"

    .line 31
    .line 32
    const-string v9, "CHECKOUT_TRANSACTION"

    .line 33
    .line 34
    const-string v10, "CORE_TRANSACTION"

    .line 35
    .line 36
    const-string v11, ""

    .line 37
    .line 38
    if-eq v6, v7, :cond_8

    .line 39
    .line 40
    const v7, -0x3857830e

    .line 41
    .line 42
    .line 43
    const-string v12, "opay://oms/transaction/detail"

    .line 44
    .line 45
    if-eq v6, v7, :cond_3

    .line 46
    .line 47
    const v7, 0x131742fd

    .line 48
    .line 49
    .line 50
    if-eq v6, v7, :cond_2

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_4

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_3
    const-string v6, "opay://oms/transaction/checkout"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_4

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_4
    const-string v6, "orderNo"

    .line 73
    .line 74
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-nez v6, :cond_5

    .line 79
    .line 80
    move-object v6, v11

    .line 81
    :cond_5
    const-string v7, "autoPrint"

    .line 82
    .line 83
    invoke-virtual {p1, v7, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    move-object v9, v10

    .line 94
    :cond_6
    sget-object v5, Lf6e;->a:Lf6e;

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    const-string p1, "1"

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    const-string p1, "0"

    .line 102
    .line 103
    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v9, v5, v1

    .line 106
    .line 107
    aput-object v6, v5, v4

    .line 108
    .line 109
    aput-object v11, v5, v0

    .line 110
    .line 111
    aput-object p1, v5, v3

    .line 112
    .line 113
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, "opay://transfer/transferFlow/detail?menuType=%s&orderNo=%s&transType=%s&autoPrint=%s"

    .line 118
    .line 119
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment;->u:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment$Companion;

    .line 131
    .line 132
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionDetailFragment;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v0, Lqre;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lqre;-><init>(Lteam/opay/business/transfer/flow/TransactionActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lteam/opay/core/common/base/BaseLazyFragment;->setFragmentDataCallback(Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p1, p2}, Lteam/opay/business/transfer/flow/TransactionActivity;->h0(Landroidx/fragment/app/Fragment;Z)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_8
    const-string p2, "opay://oms/transaction"

    .line 153
    .line 154
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_9

    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_9
    const-string p2, "params_tab"

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    if-nez p2, :cond_a

    .line 169
    .line 170
    move-object p2, v11

    .line 171
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const v5, -0x14379124

    .line 176
    .line 177
    .line 178
    if-eq v2, v5, :cond_e

    .line 179
    .line 180
    const v5, -0x4191ce7

    .line 181
    .line 182
    .line 183
    if-eq v2, v5, :cond_c

    .line 184
    .line 185
    const v5, 0x35d60e1c

    .line 186
    .line 187
    .line 188
    if-eq v2, v5, :cond_b

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_b
    const-string v2, "checkoutRecords"

    .line 192
    .line 193
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_10

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_c
    const-string v2, "accountPayment"

    .line 201
    .line 202
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-nez p2, :cond_d

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_d
    const-string v9, "TRANSFER_NUMBER_TRANSACTION"

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_e
    const-string v2, "balance"

    .line 213
    .line 214
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-nez p2, :cond_f

    .line 219
    .line 220
    :goto_2
    move-object v9, v10

    .line 221
    goto :goto_3

    .line 222
    :cond_f
    const-string v9, "POS_TRANSACTION"

    .line 223
    .line 224
    :cond_10
    :goto_3
    const-string p2, "scene"

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-nez p1, :cond_11

    .line 231
    .line 232
    move-object p1, v11

    .line 233
    :cond_11
    sget-object p2, Lf6e;->a:Lf6e;

    .line 234
    .line 235
    new-array p2, v3, [Ljava/lang/Object;

    .line 236
    .line 237
    aput-object v9, p2, v1

    .line 238
    .line 239
    aput-object v11, p2, v4

    .line 240
    .line 241
    aput-object p1, p2, v0

    .line 242
    .line 243
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const-string p2, "opay://transfer/transferFlow/transactionList?params_tab=%s&pageFrom=%s&defaultTransType=%s"

    .line 248
    .line 249
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    sget p2, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 261
    .line 262
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->q:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$Companion;

    .line 263
    .line 264
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$Companion;->a(Landroid/net/Uri;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p0, p2, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 272
    .line 273
    .line 274
    :cond_12
    :goto_4
    return-void
.end method

.method public static synthetic f0(Lteam/opay/business/transfer/flow/TransactionActivity;Landroid/content/Intent;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/business/transfer/flow/TransactionActivity;->e0(Landroid/content/Intent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final g0(Lteam/opay/business/transfer/flow/TransactionActivity;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "refund"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private final h0(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p2, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lre6;->d(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget p2, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lbx6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/business/transfer/flow/TransactionActivity;->f0(Lteam/opay/business/transfer/flow/TransactionActivity;Landroid/content/Intent;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lteam/opay/business/transfer/flow/TransactionActivity;->e0(Landroid/content/Intent;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
