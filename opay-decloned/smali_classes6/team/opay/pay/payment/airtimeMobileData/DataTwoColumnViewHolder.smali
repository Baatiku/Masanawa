.class public final Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DataBundlesTwoColumnAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lyoe;",
        "binding",
        "<init>",
        "(Lyoe;)V",
        "Lteam/opay/pay/api/BundleInfo;",
        "bundle",
        "",
        "a",
        "(Lteam/opay/pay/api/BundleInfo;)V",
        "Landroid/widget/TextView;",
        "textView",
        "c",
        "(Landroid/widget/TextView;Lteam/opay/pay/api/BundleInfo;)V",
        "Lyoe;",
        "b",
        "()Lyoe;",
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
.field public final a:Lyoe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyoe;)V
    .locals 1
    .param p1    # Lyoe;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lyoe;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/api/BundleInfo;)V
    .locals 12
    .param p1    # Lteam/opay/pay/api/BundleInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 9
    .line 10
    iget-object v1, v1, Lyoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getShortTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move-object v2, v3

    .line 21
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 25
    .line 26
    iget-object v1, v1, Lyoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getProductDetail()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v3, v2

    .line 36
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 40
    .line 41
    iget-object v1, v1, Lyoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const-string v2, "dataItemSubTitle"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getProductDetail()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x1

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v2, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 66
    :goto_2
    const/16 v5, 0x8

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/16 v2, 0x8

    .line 73
    .line 74
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getActivitePrice()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 82
    .line 83
    iget-object v2, v2, Lyoe;->i:Landroid/widget/TextView;

    .line 84
    .line 85
    const-string v6, "tvPriceValue"

    .line 86
    .line 87
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->c(Landroid/widget/TextView;Lteam/opay/pay/api/BundleInfo;)V

    .line 91
    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    const/4 v1, 0x0

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    :goto_4
    const/4 v1, 0x1

    .line 105
    :goto_5
    if-nez v1, :cond_9

    .line 106
    .line 107
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 108
    .line 109
    iget-object v2, v2, Lyoe;->h:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    or-int/lit8 v6, v6, 0x10

    .line 116
    .line 117
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 121
    .line 122
    iget-object v2, v2, Lyoe;->h:Landroid/widget/TextView;

    .line 123
    .line 124
    sget-object v6, Lbd9;->a:Lbd9;

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    if-eqz v7, :cond_7

    .line 131
    .line 132
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-nez v7, :cond_8

    .line 137
    .line 138
    :cond_7
    const-string v7, "0"

    .line 139
    .line 140
    :cond_8
    sget-object v8, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 141
    .line 142
    const/4 v10, 0x4

    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    invoke-static/range {v6 .. v11}, Lbd9;->q(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 154
    .line 155
    iget-object v2, v2, Lyoe;->h:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    sget v7, Lteam/opay/pay/R$string;->osdk_price:I

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 171
    .line 172
    iget-object v2, v2, Lyoe;->h:Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 175
    .line 176
    .line 177
    :goto_6
    iget-object v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 178
    .line 179
    iget-object v2, v2, Lyoe;->m:Landroid/view/View;

    .line 180
    .line 181
    const-string v6, "vVoucher"

    .line 182
    .line 183
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    if-nez v1, :cond_a

    .line 187
    .line 188
    const/4 v1, 0x0

    .line 189
    goto :goto_7

    .line 190
    :cond_a
    const/16 v1, 0x8

    .line 191
    .line 192
    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getBottomText()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_c

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_b

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_b
    const/4 v3, 0x0

    .line 209
    :cond_c
    :goto_8
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 210
    .line 211
    iget-object v1, v1, Lyoe;->f:Landroid/widget/ImageView;

    .line 212
    .line 213
    const-string v2, "ivNotice"

    .line 214
    .line 215
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    if-nez v3, :cond_d

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    goto :goto_9

    .line 222
    :cond_d
    const/16 v2, 0x8

    .line 223
    .line 224
    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    const-string v2, "cashBack"

    .line 236
    .line 237
    if-nez v1, :cond_e

    .line 238
    .line 239
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 240
    .line 241
    iget-object v1, v1, Lyoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 251
    .line 252
    iget-object v1, v1, Lyoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 261
    .line 262
    iget-object v1, v1, Lyoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 263
    .line 264
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    :goto_a
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 272
    .line 273
    iget-object v1, v1, Lyoe;->k:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getSubTitle()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    sget v2, Lteam/opay/pay/R$color;->black_85:I

    .line 287
    .line 288
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 297
    .line 298
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    sget v3, Lteam/opay/pay/R$drawable;->shap_bottom_8_ddfff3:I

    .line 303
    .line 304
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getBackgroundColor()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string v4, "animtorBox"

    .line 309
    .line 310
    if-eqz p1, :cond_10

    .line 311
    .line 312
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-nez p1, :cond_f

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_f
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 320
    .line 321
    iget-object p1, p1, Lyoe;->b:Landroid/widget/ImageView;

    .line 322
    .line 323
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    sget v1, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 334
    .line 335
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    sget v0, Lteam/opay/pay/R$color;->osdk_ea597b:I

    .line 344
    .line 345
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    sget v3, Lteam/opay/pay/R$drawable;->shap_bottom_8_pink_10:I

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_10
    :goto_b
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 353
    .line 354
    iget-object p1, p1, Lyoe;->b:Landroid/widget/ImageView;

    .line 355
    .line 356
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    :goto_c
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 363
    .line 364
    iget-object p1, p1, Lyoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 365
    .line 366
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 370
    .line 371
    iget-object p1, p1, Lyoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 372
    .line 373
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    .line 375
    .line 376
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 377
    .line 378
    iget-object p1, p1, Lyoe;->l:Landroid/view/View;

    .line 379
    .line 380
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method public final b()Lyoe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataTwoColumnViewHolder;->a:Lyoe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroid/widget/TextView;Lteam/opay/pay/api/BundleInfo;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lteam/opay/pay/api/BundleInfo;->getPayAmount(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, ".00"

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, ""

    .line 24
    .line 25
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    new-instance v1, Landroid/text/SpannableString;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "\u20a6"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    .line 55
    .line 56
    const v2, 0x3f2b851f    # 0.67f

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    const/16 v3, 0x21

    .line 64
    .line 65
    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method
