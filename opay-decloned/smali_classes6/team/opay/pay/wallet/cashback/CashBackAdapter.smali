.class public final Lteam/opay/pay/wallet/cashback/CashBackAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CashBackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/cashback/CashBackAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/core/api/graphql/CashBackBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\'\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/wallet/cashback/CashBackAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/core/api/graphql/CashBackBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "",
        "p",
        "()Z",
        "helper",
        "bean",
        "",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;)V",
        "l",
        "Landroid/content/Context;",
        "context",
        "k",
        "(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V",
        "",
        "operationType",
        "o",
        "(Ljava/lang/String;)Z",
        "q",
        "sdk_release"
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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sget v1, Lteam/opay/pay/R$layout;->osdk_cashback_section_title_item:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    sget v1, Lteam/opay/pay/R$layout;->cashback_history_item:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    sget v1, Lteam/opay/pay/R$layout;->osdk_item_view_more:I

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/graphql/CashBackBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackBean;->b()Lteam/opay/core/api/graphql/CashBackItem;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_e

    .line 8
    .line 9
    sget v2, Lteam/opay/pay/R$id;->type_icon:I

    .line 10
    .line 11
    invoke-virtual {p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget v5, Lteam/opay/pay/R$drawable;->ic_misc_transaction:I

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v3 .. v8}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget v2, Lteam/opay/pay/R$id;->transaction_title:I

    .line 34
    .line 35
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->h()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p2, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 40
    .line 41
    .line 42
    sget v2, Lteam/opay/pay/R$id;->transaction_sign:I

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->g()Lteam/opay/core/api/graphql/AmountSign;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/4 v5, -0x1

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    const/4 v4, -0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v6, Lteam/opay/pay/wallet/cashback/CashBackAdapter$a;->a:[I

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    aget v4, v6, v4

    .line 66
    .line 67
    :goto_0
    const-string v6, ""

    .line 68
    .line 69
    if-eq v4, v5, :cond_3

    .line 70
    .line 71
    if-eq v4, v1, :cond_2

    .line 72
    .line 73
    const/4 v5, 0x2

    .line 74
    if-ne v4, v5, :cond_1

    .line 75
    .line 76
    const-string v4, "+"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 80
    .line 81
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_2
    const-string v4, "-"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move-object v4, v6

    .line 89
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->g()Lteam/opay/core/api/graphql/AmountSign;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const/4 v4, 0x0

    .line 104
    :goto_2
    invoke-static {v3, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    sget-object v4, Lbd9;->a:Lbd9;

    .line 114
    .line 115
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v4, v3}, Lbd9;->a(Lteam/opay/core/android/money/MoneyAmount;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_6

    .line 124
    .line 125
    :cond_5
    move-object v3, v6

    .line 126
    :cond_6
    sget v4, Lteam/opay/pay/R$id;->transaction_currency:I

    .line 127
    .line 128
    invoke-virtual {p2, v4, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_7

    .line 136
    .line 137
    new-instance v5, Landroid/text/SpannableString;

    .line 138
    .line 139
    sget-object v7, Lbd9;->a:Lbd9;

    .line 140
    .line 141
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v8, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 146
    .line 147
    invoke-virtual {v7, v3, v8}, Lbd9;->i(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move-object v5, v6

    .line 156
    :goto_3
    sget v3, Lteam/opay/pay/R$id;->transaction_amount:I

    .line 157
    .line 158
    invoke-virtual {p2, v3, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->g()Lteam/opay/core/api/graphql/AmountSign;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    sget-object v7, Lteam/opay/core/api/graphql/AmountSign;->PLUS:Lteam/opay/core/api/graphql/AmountSign;

    .line 166
    .line 167
    if-ne v5, v7, :cond_8

    .line 168
    .line 169
    sget v5, Lteam/opay/pay/R$color;->color_00B876:I

    .line 170
    .line 171
    invoke-static {p1, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    goto :goto_4

    .line 176
    :cond_8
    sget v5, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 177
    .line 178
    invoke-static {p1, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    :goto_4
    invoke-virtual {p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroid/widget/TextView;

    .line 196
    .line 197
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-eqz v2, :cond_9

    .line 214
    .line 215
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    goto :goto_5

    .line 220
    :cond_9
    const/4 v2, 0x0

    .line 221
    :goto_5
    sget v3, Lteam/opay/pay/R$string;->invalid_currency:I

    .line 222
    .line 223
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_a

    .line 232
    .line 233
    sget p1, Lteam/opay/pay/R$id;->balance_after:I

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_a
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_b

    .line 253
    .line 254
    sget-object v3, Lbd9;->a:Lbd9;

    .line 255
    .line 256
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 261
    .line 262
    invoke-virtual {v3, v2, v4}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    sget v3, Lteam/opay/pay/R$id;->balance_after:I

    .line 267
    .line 268
    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Landroid/widget/TextView;

    .line 273
    .line 274
    sget v4, Lteam/opay/pay/R$string;->wallet_remainder:I

    .line 275
    .line 276
    new-array v1, v1, [Ljava/lang/Object;

    .line 277
    .line 278
    aput-object v2, v1, v0

    .line 279
    .line 280
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    :cond_b
    :goto_6
    sget p1, Lteam/opay/pay/R$id;->transaction_summary:I

    .line 294
    .line 295
    invoke-virtual {p3}, Lteam/opay/core/api/graphql/CashBackItem;->e()Ljava/util/Date;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    if-eqz p3, :cond_d

    .line 300
    .line 301
    invoke-static {p3}, Lale;->b(Ljava/util/Date;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    if-nez p3, :cond_c

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_c
    move-object v6, p3

    .line 309
    :cond_d
    :goto_7
    invoke-virtual {p2, p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 310
    .line 311
    .line 312
    :cond_e
    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V
    .locals 5

    .line 1
    sget v0, Lteam/opay/pay/R$id;->section_title:I

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->c()Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/CashBackMonthTitle;->b()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lale;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    :cond_0
    move-object v1, v2

    .line 24
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->c()Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/CashBackMonthTitle;->c()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :goto_0
    if-nez v0, :cond_3

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_3
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->q(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sget v3, Lteam/opay/pay/R$id;->section_expenses_lable:I

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    sget v3, Lteam/opay/pay/R$id;->section_expenses_value:I

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lbd9;->a:Lbd9;

    .line 76
    .line 77
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->c()Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/CashBackMonthTitle;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move-object v4, v1

    .line 89
    :goto_1
    invoke-virtual {v0, v4}, Lbd9;->m(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->c()Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/CashBackMonthTitle;->c()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-object v3, v1

    .line 108
    :goto_2
    if-nez v3, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object v2, v3

    .line 112
    :goto_3
    invoke-virtual {p0, v2}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->o(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sget v3, Lteam/opay/pay/R$id;->section_earnings_lable:I

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 128
    .line 129
    .line 130
    sget v3, Lteam/opay/pay/R$id;->section_earnings_value:I

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->c()Lteam/opay/core/api/graphql/CashBackMonthTitle;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-eqz p2, :cond_7

    .line 149
    .line 150
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackMonthTitle;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_7
    invoke-virtual {v0, v1}, Lbd9;->m(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->view_more:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "getView(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/CashBackBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/api/graphql/CashBackBean;->getItemType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V

    .line 29
    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string v1, "mContext"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->k(Landroid/content/Context;Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/graphql/CashBackBean;)V

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v0, 0x3

    .line 61
    if-ne p2, v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/cashback/CashBackAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_6
    :goto_3
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    .line 70
    :goto_4
    return-void
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "PLUS"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public final p()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lteam/opay/core/api/graphql/CashBackBean;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/CashBackBean;->a()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v0, v3, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    return v2
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "SUBTRACT"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method
