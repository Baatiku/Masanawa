.class public final Lteam/opay/pay/payment/tv/TvProductAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "TvProductAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/payment/tv/TvProduct;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ!\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ!\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u0019\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/payment/tv/TvProductAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/payment/tv/TvProduct;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "",
        "voucherAmount",
        "",
        "p",
        "(Ljava/lang/Float;)V",
        "helper",
        "item",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V",
        "Landroid/view/View;",
        "view",
        "price",
        "o",
        "(Landroid/view/View;F)V",
        "q",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;F)V",
        "v",
        "k",
        "l",
        "m",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "",
        "r",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;",
        "a",
        "Ljava/lang/Float;",
        "voucherPayAmount",
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
.field public a:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
    const/16 v0, 0x21

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$layout;->item_tv_product_pic:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x22

    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$layout;->item_tv_product_text:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x24

    .line 20
    .line 21
    sget v1, Lteam/opay/pay/R$layout;->item_tv_product_input_money:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x23

    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$layout;->item_tv_product_bottom:I

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/tv/TvProduct;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->tvProName:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V
    .locals 12

    .line 1
    sget v0, Lteam/opay/pay/R$id;->ivPic:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getView(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->n()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v0

    .line 24
    :goto_0
    const/high16 v4, 0x41000000    # 8.0f

    .line 25
    .line 26
    invoke-static {v4}, Lkmf;->f(F)F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    float-to-int v4, v4

    .line 31
    const/16 v10, 0x7c

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static/range {v2 .. v11}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget v2, Lteam/opay/pay/R$id;->ivHot:I

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, Landroid/widget/ImageView;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v4, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v4, v0

    .line 63
    :goto_1
    const/4 v7, 0x6

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-static/range {v3 .. v8}, Lme7;->f(Landroid/widget/ImageView;Ljava/lang/String;ZIILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget v1, Lteam/opay/pay/R$id;->ivNotice:I

    .line 71
    .line 72
    filled-new-array {v1}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 77
    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->i()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object v2, v0

    .line 87
    :goto_2
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x1

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    const/4 v2, 0x0

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 101
    :goto_4
    xor-int/lit8 v5, v2, 0x1

    .line 102
    .line 103
    sget v6, Lteam/opay/pay/R$id;->ivActivity:I

    .line 104
    .line 105
    invoke-virtual {p1, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 106
    .line 107
    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->i()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    move-object v2, v0

    .line 118
    :goto_5
    invoke-virtual {p1, v6, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 119
    .line 120
    .line 121
    :cond_6
    sget v2, Lteam/opay/pay/R$id;->tvProName:I

    .line 122
    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    move-object v5, v0

    .line 131
    :goto_6
    invoke-virtual {p1, v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 132
    .line 133
    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->a()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    goto :goto_7

    .line 141
    :cond_8
    move-object v2, v0

    .line 142
    :goto_7
    if-eqz v2, :cond_a

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_9

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_9
    const/4 v2, 0x0

    .line 152
    goto :goto_9

    .line 153
    :cond_a
    :goto_8
    const/4 v2, 0x1

    .line 154
    :goto_9
    xor-int/lit8 v5, v2, 0x1

    .line 155
    .line 156
    sget v6, Lteam/opay/pay/R$id;->tvProAmountOld:I

    .line 157
    .line 158
    invoke-virtual {p1, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 159
    .line 160
    .line 161
    if-nez v2, :cond_c

    .line 162
    .line 163
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    or-int/lit8 v5, v5, 0x10

    .line 174
    .line 175
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 176
    .line 177
    .line 178
    if-eqz p2, :cond_b

    .line 179
    .line 180
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    goto :goto_a

    .line 185
    :cond_b
    move-object v5, v0

    .line 186
    :goto_a
    invoke-virtual {p0, v5}, Lteam/opay/pay/payment/tv/TvProductAdapter;->r(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    if-eqz p2, :cond_d

    .line 194
    .line 195
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->p()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    goto :goto_b

    .line 200
    :cond_d
    move-object v2, v0

    .line 201
    :goto_b
    if-eqz v2, :cond_f

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_e

    .line 208
    .line 209
    goto :goto_c

    .line 210
    :cond_e
    const/4 v2, 0x0

    .line 211
    goto :goto_d

    .line 212
    :cond_f
    :goto_c
    const/4 v2, 0x1

    .line 213
    :goto_d
    xor-int/lit8 v5, v2, 0x1

    .line 214
    .line 215
    sget v6, Lteam/opay/pay/R$id;->tvMonth:I

    .line 216
    .line 217
    invoke-virtual {p1, v6, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 218
    .line 219
    .line 220
    if-nez v2, :cond_11

    .line 221
    .line 222
    if-eqz p2, :cond_10

    .line 223
    .line 224
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->p()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    goto :goto_e

    .line 229
    :cond_10
    move-object v2, v0

    .line 230
    :goto_e
    invoke-virtual {p1, v6, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 231
    .line 232
    .line 233
    :cond_11
    sget v2, Lteam/opay/pay/R$id;->tvProAmount:I

    .line 234
    .line 235
    if-eqz p2, :cond_12

    .line 236
    .line 237
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->h()Landroid/text/SpannedString;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    goto :goto_f

    .line 242
    :cond_12
    move-object v5, v0

    .line 243
    :goto_f
    invoke-virtual {p1, v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 244
    .line 245
    .line 246
    sget v2, Lteam/opay/pay/R$id;->tvProCashBack:I

    .line 247
    .line 248
    if-eqz p2, :cond_13

    .line 249
    .line 250
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    goto :goto_10

    .line 255
    :cond_13
    move-object v5, v0

    .line 256
    :goto_10
    if-eqz v5, :cond_15

    .line 257
    .line 258
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-nez v5, :cond_14

    .line 263
    .line 264
    goto :goto_11

    .line 265
    :cond_14
    const/4 v5, 0x0

    .line 266
    goto :goto_12

    .line 267
    :cond_15
    :goto_11
    const/4 v5, 0x1

    .line 268
    :goto_12
    xor-int/2addr v5, v4

    .line 269
    invoke-virtual {p1, v2, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-nez v5, :cond_17

    .line 286
    .line 287
    if-eqz p2, :cond_16

    .line 288
    .line 289
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    goto :goto_13

    .line 294
    :cond_16
    move-object v5, v0

    .line 295
    :goto_13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    :cond_17
    if-eqz p2, :cond_18

    .line 299
    .line 300
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->l()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    goto :goto_14

    .line 305
    :cond_18
    move-object v2, v0

    .line 306
    :goto_14
    if-eqz v2, :cond_19

    .line 307
    .line 308
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_1a

    .line 313
    .line 314
    :cond_19
    const/4 v3, 0x1

    .line 315
    :cond_1a
    xor-int/lit8 v2, v3, 0x1

    .line 316
    .line 317
    sget v4, Lteam/opay/pay/R$id;->tvProductDesc:I

    .line 318
    .line 319
    invoke-virtual {p1, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 320
    .line 321
    .line 322
    if-nez v3, :cond_1c

    .line 323
    .line 324
    if-eqz p2, :cond_1b

    .line 325
    .line 326
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->l()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :cond_1b
    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 331
    .line 332
    .line 333
    :cond_1c
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 334
    .line 335
    .line 336
    return-void
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->g()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 24
    :goto_2
    xor-int/lit8 v4, v1, 0x1

    .line 25
    .line 26
    sget v5, Lteam/opay/pay/R$id;->ivHot:I

    .line 27
    .line 28
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 29
    .line 30
    .line 31
    if-nez v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v4, "getView(...)"

    .line 38
    .line 39
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v5, v1

    .line 43
    check-cast v5, Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->g()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v6, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move-object v6, v0

    .line 54
    :goto_3
    const/4 v9, 0x6

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    invoke-static/range {v5 .. v10}, Lme7;->f(Landroid/widget/ImageView;Ljava/lang/String;ZIILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    if-eqz p2, :cond_5

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->i()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    move-object v1, v0

    .line 69
    :goto_4
    if-eqz v1, :cond_7

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_6
    const/4 v1, 0x0

    .line 79
    goto :goto_6

    .line 80
    :cond_7
    :goto_5
    const/4 v1, 0x1

    .line 81
    :goto_6
    xor-int/lit8 v4, v1, 0x1

    .line 82
    .line 83
    sget v5, Lteam/opay/pay/R$id;->ivActivity:I

    .line 84
    .line 85
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 86
    .line 87
    .line 88
    if-nez v1, :cond_9

    .line 89
    .line 90
    if-eqz p2, :cond_8

    .line 91
    .line 92
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->i()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_7

    .line 97
    :cond_8
    move-object v1, v0

    .line 98
    :goto_7
    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 99
    .line 100
    .line 101
    :cond_9
    sget v1, Lteam/opay/pay/R$id;->tvProName:I

    .line 102
    .line 103
    if-eqz p2, :cond_a

    .line 104
    .line 105
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    goto :goto_8

    .line 110
    :cond_a
    move-object v4, v0

    .line 111
    :goto_8
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 112
    .line 113
    .line 114
    if-eqz p2, :cond_b

    .line 115
    .line 116
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->p()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_9

    .line 121
    :cond_b
    move-object v1, v0

    .line 122
    :goto_9
    if-eqz v1, :cond_d

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_c

    .line 129
    .line 130
    goto :goto_a

    .line 131
    :cond_c
    const/4 v1, 0x0

    .line 132
    goto :goto_b

    .line 133
    :cond_d
    :goto_a
    const/4 v1, 0x1

    .line 134
    :goto_b
    xor-int/lit8 v4, v1, 0x1

    .line 135
    .line 136
    sget v5, Lteam/opay/pay/R$id;->tvMonth:I

    .line 137
    .line 138
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 139
    .line 140
    .line 141
    if-nez v1, :cond_f

    .line 142
    .line 143
    if-eqz p2, :cond_e

    .line 144
    .line 145
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->p()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    goto :goto_c

    .line 150
    :cond_e
    move-object v1, v0

    .line 151
    :goto_c
    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 152
    .line 153
    .line 154
    :cond_f
    if-eqz p2, :cond_10

    .line 155
    .line 156
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    goto :goto_d

    .line 161
    :cond_10
    move-object v1, v0

    .line 162
    :goto_d
    if-eqz v1, :cond_12

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_11

    .line 169
    .line 170
    goto :goto_e

    .line 171
    :cond_11
    const/4 v1, 0x0

    .line 172
    goto :goto_f

    .line 173
    :cond_12
    :goto_e
    const/4 v1, 0x1

    .line 174
    :goto_f
    xor-int/lit8 v4, v1, 0x1

    .line 175
    .line 176
    sget v5, Lteam/opay/pay/R$id;->tvProAmountOld:I

    .line 177
    .line 178
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 179
    .line 180
    .line 181
    if-nez v1, :cond_14

    .line 182
    .line 183
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    or-int/lit8 v4, v4, 0x10

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 196
    .line 197
    .line 198
    if-eqz p2, :cond_13

    .line 199
    .line 200
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    goto :goto_10

    .line 205
    :cond_13
    move-object v4, v0

    .line 206
    :goto_10
    invoke-virtual {p0, v4}, Lteam/opay/pay/payment/tv/TvProductAdapter;->r(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    :cond_14
    sget v1, Lteam/opay/pay/R$id;->tvProAmount:I

    .line 214
    .line 215
    if-eqz p2, :cond_15

    .line 216
    .line 217
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->h()Landroid/text/SpannedString;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    goto :goto_11

    .line 222
    :cond_15
    move-object v4, v0

    .line 223
    :goto_11
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 224
    .line 225
    .line 226
    sget v1, Lteam/opay/pay/R$id;->tvProCashBack:I

    .line 227
    .line 228
    if-eqz p2, :cond_16

    .line 229
    .line 230
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    goto :goto_12

    .line 235
    :cond_16
    move-object v4, v0

    .line 236
    :goto_12
    if-eqz v4, :cond_17

    .line 237
    .line 238
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_18

    .line 243
    .line 244
    :cond_17
    const/4 v2, 0x1

    .line 245
    :cond_18
    xor-int/2addr v2, v3

    .line 246
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_1a

    .line 263
    .line 264
    if-eqz p2, :cond_19

    .line 265
    .line 266
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->d()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    :cond_19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    :cond_1a
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/tv/TvProduct;
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
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x23

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->c(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x21

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eq v0, v1, :cond_6

    .line 43
    .line 44
    const/16 v1, 0x22

    .line 45
    .line 46
    if-eq v0, v1, :cond_4

    .line 47
    .line 48
    const/16 v1, 0x24

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    sget v0, Lteam/opay/pay/R$id;->vBg:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :cond_5
    invoke-virtual {p0, v0, v2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->o(Landroid/view/View;F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual {p2}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :cond_7
    invoke-virtual {p0, p1, v2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->q(Lcom/chad/library/adapter/base/BaseViewHolder;F)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvProductAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method public final o(Landroid/view/View;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvProductAdapter;->a:Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    .line 14
    :goto_0
    cmpl-float p2, p2, v0

    .line 15
    .line 16
    if-ltz p2, :cond_1

    .line 17
    .line 18
    sget p2, Lteam/opay/pay/R$drawable;->topup_betting_bundle_hight:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget p2, Lteam/opay/pay/R$drawable;->topup_betting_bundle:I

    .line 22
    .line 23
    :goto_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public final p(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/tv/TvProductAdapter;->a:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(Lcom/chad/library/adapter/base/BaseViewHolder;F)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$id;->backgroundLayer:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvProductAdapter;->a:Ljava/lang/Float;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    .line 20
    :goto_0
    cmpl-float p2, p2, v0

    .line 21
    .line 22
    if-ltz p2, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    sget p2, Lteam/opay/pay/R$drawable;->osdk_bundle_light_stroke:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_1
    return-void
.end method

.method public final r(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lbd9;->a:Lbd9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lbd9;->d(Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
