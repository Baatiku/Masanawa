.class public final Lcashier/adapter/PayCouponAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "PayCouponAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcashier/adapter/ChooseCouponItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0007R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcashier/adapter/PayCouponAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcashier/adapter/ChooseCouponItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "checkVoucherId",
        "<init>",
        "(Ljava/lang/String;)V",
        "helper",
        "p",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/adapter/ChooseCouponItem;)V",
        "a",
        "Ljava/lang/String;",
        "m",
        "()Ljava/lang/String;",
        "n",
        "Ljava/text/DecimalFormat;",
        "b",
        "Lid8;",
        "l",
        "()Ljava/text/DecimalFormat;",
        "amountFormat",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcashier/adapter/PayCouponAdapter;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/16 p1, 0xb

    .line 8
    .line 9
    sget v0, Lteam/opay/pay/cashier/R$layout;->pay_choose_coupon_title_item:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0xc

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/cashier/R$layout;->pay_choose_coupon_list_item:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcashier/adapter/PayCouponAdapter$amountFormat$2;->INSTANCE:Lcashier/adapter/PayCouponAdapter$amountFormat$2;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcashier/adapter/PayCouponAdapter;->b:Lid8;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcashier/adapter/ChooseCouponItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/adapter/PayCouponAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/adapter/ChooseCouponItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lcashier/adapter/ChooseCouponItem;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/adapter/ChooseCouponItem;
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v0, v1, :cond_15

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->c()Lcashier/data/Voucher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v3

    .line 25
    :goto_0
    sget v1, Lteam/opay/pay/cashier/R$id;->amount:I

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcashier/data/Voucher;->getClientAmountShow()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    :cond_1
    const-string v5, ""

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 38
    .line 39
    .line 40
    sget v5, Lteam/opay/pay/cashier/R$id;->tv_available:I

    .line 41
    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const/16 v7, 0x20a6

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcashier/adapter/PayCouponAdapter;->l()Ljava/text/DecimalFormat;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    new-instance v8, Ljava/math/BigDecimal;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcashier/data/Voucher;->getMinOrderAmount()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-nez v9, :cond_4

    .line 65
    .line 66
    :cond_3
    const-string v9, "0"

    .line 67
    .line 68
    :cond_4
    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x20

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    sget v8, Lteam/opay/pay/cashier/R$string;->pay_available:I

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 103
    .line 104
    .line 105
    sget v5, Lteam/opay/pay/cashier/R$id;->tv_title:I

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Lcashier/data/Voucher;->getTitle()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    move-object v6, v3

    .line 115
    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 116
    .line 117
    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->a()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-ne v5, v4, :cond_7

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Lcashier/data/Voucher;->getDescription()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move-object v5, v3

    .line 134
    goto :goto_2

    .line 135
    :cond_7
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lcashier/data/Voucher;->getCanNotUseReason()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :goto_2
    sget v6, Lteam/opay/pay/cashier/R$id;->coupon_detail:I

    .line 142
    .line 143
    invoke-virtual {p1, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 144
    .line 145
    .line 146
    if-eqz p2, :cond_8

    .line 147
    .line 148
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->b()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    goto :goto_3

    .line 153
    :cond_8
    const/4 v5, -0x1

    .line 154
    :goto_3
    if-le v5, v4, :cond_9

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_4

    .line 158
    :cond_9
    const/4 v5, 0x0

    .line 159
    :goto_4
    sget v7, Lteam/opay/pay/cashier/R$id;->arrow:I

    .line 160
    .line 161
    invoke-virtual {p1, v7, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 162
    .line 163
    .line 164
    if-eqz p2, :cond_a

    .line 165
    .line 166
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->a()Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-ne v8, v4, :cond_a

    .line 171
    .line 172
    const/4 v8, 0x1

    .line 173
    goto :goto_5

    .line 174
    :cond_a
    const/4 v8, 0x0

    .line 175
    :goto_5
    if-eqz v8, :cond_b

    .line 176
    .line 177
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->d()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    goto :goto_6

    .line 182
    :cond_b
    const/16 v8, 0xa

    .line 183
    .line 184
    :goto_6
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 191
    .line 192
    .line 193
    if-eqz v5, :cond_d

    .line 194
    .line 195
    if-ne v8, v4, :cond_c

    .line 196
    .line 197
    sget v5, Lteam/opay/pay/cashier/R$mipmap;->pay_ic_voucher_arrow_down:I

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_c
    sget v5, Lteam/opay/pay/cashier/R$mipmap;->pay_ic_voucher_arrow_up:I

    .line 201
    .line 202
    :goto_7
    invoke-virtual {p1, v7, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 203
    .line 204
    .line 205
    :cond_d
    sget v5, Lteam/opay/pay/cashier/R$id;->date:I

    .line 206
    .line 207
    if-eqz p2, :cond_e

    .line 208
    .line 209
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->h()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    goto :goto_8

    .line 214
    :cond_e
    move-object v8, v3

    .line 215
    :goto_8
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 216
    .line 217
    .line 218
    if-eqz p2, :cond_f

    .line 219
    .line 220
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->a()Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-ne v8, v4, :cond_f

    .line 225
    .line 226
    goto :goto_9

    .line 227
    :cond_f
    const/4 v4, 0x0

    .line 228
    :goto_9
    if-eqz v4, :cond_11

    .line 229
    .line 230
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->g()Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_10

    .line 241
    .line 242
    sget v4, Lteam/opay/pay/cashier/R$color;->pay_color_ff9100:I

    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_10
    sget v4, Lteam/opay/pay/cashier/R$color;->pay_color_00B876:I

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_11
    sget v4, Lteam/opay/pay/cashier/R$color;->pay_black_65:I

    .line 249
    .line 250
    :goto_a
    if-eqz p2, :cond_12

    .line 251
    .line 252
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->h()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    goto :goto_b

    .line 257
    :cond_12
    move-object v8, v3

    .line 258
    :goto_b
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 259
    .line 260
    .line 261
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-static {v8, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 272
    .line 273
    .line 274
    if-eqz p2, :cond_13

    .line 275
    .line 276
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->a()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    :cond_13
    sget p2, Lteam/opay/pay/cashier/R$id;->bg:I

    .line 281
    .line 282
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v6, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 289
    .line 290
    .line 291
    sget p2, Lteam/opay/pay/cashier/R$id;->checkbox:I

    .line 292
    .line 293
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 301
    .line 302
    iget-object v1, p0, Lcashier/adapter/PayCouponAdapter;->a:Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v0, :cond_14

    .line 305
    .line 306
    invoke-virtual {v0}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    :cond_14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 315
    .line 316
    .line 317
    filled-new-array {v7}, [I

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 322
    .line 323
    .line 324
    goto :goto_10

    .line 325
    :cond_15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    const/16 v1, 0xb

    .line 330
    .line 331
    if-ne v0, v1, :cond_1c

    .line 332
    .line 333
    sget v0, Lteam/opay/pay/cashier/R$id;->tvMore:I

    .line 334
    .line 335
    filled-new-array {v0}, [I

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 340
    .line 341
    .line 342
    sget v1, Lteam/opay/pay/cashier/R$id;->tvTitle:I

    .line 343
    .line 344
    if-eqz p2, :cond_16

    .line 345
    .line 346
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->i()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    goto :goto_c

    .line 351
    :cond_16
    move-object v5, v3

    .line 352
    :goto_c
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 353
    .line 354
    .line 355
    if-eqz p2, :cond_17

    .line 356
    .line 357
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->f()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    goto :goto_d

    .line 362
    :cond_17
    move-object v1, v3

    .line 363
    :goto_d
    if-eqz v1, :cond_19

    .line 364
    .line 365
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_18

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_18
    const/4 v1, 0x0

    .line 373
    goto :goto_f

    .line 374
    :cond_19
    :goto_e
    const/4 v1, 0x1

    .line 375
    :goto_f
    if-eqz v1, :cond_1a

    .line 376
    .line 377
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 378
    .line 379
    .line 380
    sget p2, Lteam/opay/pay/cashier/R$id;->iv_arrow:I

    .line 381
    .line 382
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 383
    .line 384
    .line 385
    goto :goto_10

    .line 386
    :cond_1a
    sget v1, Lteam/opay/pay/cashier/R$id;->iv_arrow:I

    .line 387
    .line 388
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 392
    .line 393
    .line 394
    if-eqz p2, :cond_1b

    .line 395
    .line 396
    invoke-virtual {p2}, Lcashier/adapter/ChooseCouponItem;->f()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    :cond_1b
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 401
    .line 402
    .line 403
    :cond_1c
    :goto_10
    return-void
.end method

.method public final l()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/adapter/PayCouponAdapter;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/adapter/PayCouponAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/adapter/PayCouponAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
