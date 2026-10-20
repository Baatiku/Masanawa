.class public final Lteam/opay/pay/coupon/ChooseCouponAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ChooseCouponAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/coupon/ChooseCouponItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\t\u0010\u0007R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/coupon/ChooseCouponAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/coupon/ChooseCouponItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "checkVoucherId",
        "<init>",
        "(Ljava/lang/String;)V",
        "helper",
        "p",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/coupon/ChooseCouponItem;)V",
        "a",
        "Ljava/lang/String;",
        "o",
        "()Ljava/lang/String;",
        "Ljava/text/DecimalFormat;",
        "b",
        "Lid8;",
        "n",
        "()Ljava/text/DecimalFormat;",
        "amountFormat",
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
    iput-object p1, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/16 p1, 0xb

    .line 8
    .line 9
    sget v0, Lteam/opay/pay/R$layout;->osdk_choose_coupon_title_item:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0xc

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$layout;->choose_coupon_list_item:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ltc2;

    .line 22
    .line 23
    invoke-direct {p1}, Ltc2;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->b:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic k()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/coupon/ChooseCouponAdapter;->l()Ljava/text/DecimalFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final l()Ljava/text/DecimalFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "0.##"

    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final n()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->b:Lid8;

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


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/coupon/ChooseCouponItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/coupon/ChooseCouponAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/coupon/ChooseCouponItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/coupon/ChooseCouponItem;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/coupon/ChooseCouponItem;
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
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v0, v1, :cond_16

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->c()Lteam/opay/pay/coupon/Voucher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v4

    .line 25
    :goto_0
    sget v1, Lteam/opay/pay/R$id;->amount:I

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getClientAmountShow()Ljava/lang/String;

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
    sget v5, Lteam/opay/pay/R$id;->tv_available:I

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getCurrency()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v6, v4

    .line 50
    :goto_1
    invoke-static {v6}, Lli2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-direct {p0}, Lteam/opay/pay/coupon/ChooseCouponAdapter;->n()Ljava/text/DecimalFormat;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    new-instance v8, Ljava/math/BigDecimal;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getMinOrderAmount()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-nez v9, :cond_5

    .line 67
    .line 68
    :cond_4
    const-string v9, "0"

    .line 69
    .line 70
    :cond_5
    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    sget v9, Lteam/opay/pay/R$string;->osdk_available:I

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, " "

    .line 101
    .line 102
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 113
    .line 114
    .line 115
    sget v5, Lteam/opay/pay/R$id;->tv_title:I

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getTitle()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    move-object v6, v4

    .line 125
    :goto_2
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 126
    .line 127
    .line 128
    if-eqz p2, :cond_8

    .line 129
    .line 130
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->a()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-ne v5, v3, :cond_8

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getDescription()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    move-object v5, v4

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getCanNotUseReason()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    :goto_3
    sget v6, Lteam/opay/pay/R$id;->coupon_detail:I

    .line 152
    .line 153
    invoke-virtual {p1, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 154
    .line 155
    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->b()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    goto :goto_4

    .line 163
    :cond_9
    const/4 v5, -0x1

    .line 164
    :goto_4
    if-le v5, v3, :cond_a

    .line 165
    .line 166
    const/4 v5, 0x1

    .line 167
    goto :goto_5

    .line 168
    :cond_a
    const/4 v5, 0x0

    .line 169
    :goto_5
    sget v7, Lteam/opay/pay/R$id;->arrow:I

    .line 170
    .line 171
    invoke-virtual {p1, v7, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 172
    .line 173
    .line 174
    if-eqz p2, :cond_b

    .line 175
    .line 176
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->a()Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-ne v8, v3, :cond_b

    .line 181
    .line 182
    const/4 v8, 0x1

    .line 183
    goto :goto_6

    .line 184
    :cond_b
    const/4 v8, 0x0

    .line 185
    :goto_6
    if-eqz v8, :cond_c

    .line 186
    .line 187
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->d()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    const/16 v8, 0xa

    .line 193
    .line 194
    :goto_7
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 201
    .line 202
    .line 203
    if-eqz v5, :cond_e

    .line 204
    .line 205
    if-ne v8, v3, :cond_d

    .line 206
    .line 207
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_down:I

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_d
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_up:I

    .line 211
    .line 212
    :goto_8
    invoke-virtual {p1, v7, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 213
    .line 214
    .line 215
    :cond_e
    sget v5, Lteam/opay/pay/R$id;->date:I

    .line 216
    .line 217
    if-eqz p2, :cond_f

    .line 218
    .line 219
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->h()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    goto :goto_9

    .line 224
    :cond_f
    move-object v8, v4

    .line 225
    :goto_9
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 226
    .line 227
    .line 228
    if-eqz p2, :cond_10

    .line 229
    .line 230
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->a()Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-ne v8, v3, :cond_10

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_10
    const/4 v3, 0x0

    .line 238
    :goto_a
    if-eqz v3, :cond_12

    .line 239
    .line 240
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->g()Ljava/lang/Boolean;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_11

    .line 251
    .line 252
    sget v3, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_11
    sget v3, Lteam/opay/pay/R$color;->primary:I

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_12
    sget v3, Lteam/opay/pay/R$color;->black_65:I

    .line 259
    .line 260
    :goto_b
    if-eqz p2, :cond_13

    .line 261
    .line 262
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->h()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    goto :goto_c

    .line 267
    :cond_13
    move-object v8, v4

    .line 268
    :goto_c
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 269
    .line 270
    .line 271
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 272
    .line 273
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-static {v8, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-virtual {p1, v5, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 282
    .line 283
    .line 284
    if-eqz p2, :cond_14

    .line 285
    .line 286
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->a()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    :cond_14
    sget p2, Lteam/opay/pay/R$id;->bg:I

    .line 291
    .line 292
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v6, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 299
    .line 300
    .line 301
    sget p2, Lteam/opay/pay/R$id;->checkbox:I

    .line 302
    .line 303
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 311
    .line 312
    iget-object v1, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->a:Ljava/lang/String;

    .line 313
    .line 314
    if-eqz v0, :cond_15

    .line 315
    .line 316
    invoke-virtual {v0}, Lteam/opay/pay/coupon/Voucher;->getVoucherId()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    :cond_15
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 325
    .line 326
    .line 327
    filled-new-array {v7}, [I

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 332
    .line 333
    .line 334
    goto :goto_11

    .line 335
    :cond_16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    const/16 v1, 0xb

    .line 340
    .line 341
    if-ne v0, v1, :cond_1d

    .line 342
    .line 343
    sget v0, Lteam/opay/pay/R$id;->tvMore:I

    .line 344
    .line 345
    filled-new-array {v0}, [I

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 350
    .line 351
    .line 352
    sget v1, Lteam/opay/pay/R$id;->tvTitle:I

    .line 353
    .line 354
    if-eqz p2, :cond_17

    .line 355
    .line 356
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->i()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    goto :goto_d

    .line 361
    :cond_17
    move-object v5, v4

    .line 362
    :goto_d
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 363
    .line 364
    .line 365
    if-eqz p2, :cond_18

    .line 366
    .line 367
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->f()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    goto :goto_e

    .line 372
    :cond_18
    move-object v1, v4

    .line 373
    :goto_e
    if-eqz v1, :cond_1a

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-nez v1, :cond_19

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_19
    const/4 v1, 0x0

    .line 383
    goto :goto_10

    .line 384
    :cond_1a
    :goto_f
    const/4 v1, 0x1

    .line 385
    :goto_10
    if-eqz v1, :cond_1b

    .line 386
    .line 387
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 388
    .line 389
    .line 390
    sget p2, Lteam/opay/pay/R$id;->iv_arrow:I

    .line 391
    .line 392
    invoke-virtual {p1, p2, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 393
    .line 394
    .line 395
    goto :goto_11

    .line 396
    :cond_1b
    sget v1, Lteam/opay/pay/R$id;->iv_arrow:I

    .line 397
    .line 398
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 402
    .line 403
    .line 404
    if-eqz p2, :cond_1c

    .line 405
    .line 406
    invoke-virtual {p2}, Lteam/opay/pay/coupon/ChooseCouponItem;->f()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    :cond_1c
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 411
    .line 412
    .line 413
    :cond_1d
    :goto_11
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/ChooseCouponAdapter;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
