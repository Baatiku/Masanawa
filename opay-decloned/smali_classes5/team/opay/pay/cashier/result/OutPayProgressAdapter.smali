.class public final Lteam/opay/pay/cashier/result/OutPayProgressAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "OutPayResultAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/cashier/OutPayProgress;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/OutPayProgressAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/cashier/OutPayProgress;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/OutPayProgress;)V",
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
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_out_pay_progress_child:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/cashier/OutPayProgress;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/OutPayProgressAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/OutPayProgress;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/OutPayProgress;)V
    .locals 13
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/OutPayProgress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$id;->label:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    sget v2, Lteam/opay/pay/R$id;->label_name:I

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/TextView;

    .line 28
    .line 29
    sget v3, Lteam/opay/pay/R$id;->time:I

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/TextView;

    .line 36
    .line 37
    sget v4, Lteam/opay/pay/R$id;->line_left:I

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget v5, Lteam/opay/pay/R$id;->line_right:I

    .line 44
    .line 45
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayProgress;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_8

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const v7, 0x201b82

    .line 60
    .line 61
    .line 62
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x2

    .line 66
    const/4 v12, 0x0

    .line 67
    if-eq v6, v7, :cond_5

    .line 68
    .line 69
    const v7, 0x276046

    .line 70
    .line 71
    .line 72
    if-eq v6, v7, :cond_3

    .line 73
    .line 74
    const v7, 0x3e34357

    .line 75
    .line 76
    .line 77
    if-eq v6, v7, :cond_0

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_0
    const-string v6, "DOING"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_1

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget v5, Lteam/opay/pay/R$mipmap;->bank_progress_waiting_v2:I

    .line 95
    .line 96
    invoke-static {v1, v5, v12, v11, v10}, Lme7;->r(Landroid/widget/ImageView;IZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 104
    .line 105
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Ljava/util/Date;

    .line 131
    .line 132
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayProgress;->a()Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v8

    .line 142
    :cond_2
    invoke-direct {p1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Le1f;->h(Ljava/util/Date;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_3
    const-string v6, "TODO"

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_4

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 169
    .line 170
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    .line 175
    const/high16 v6, 0x40800000    # 4.0f

    .line 176
    .line 177
    invoke-static {v6}, Ljmf;->e(F)F

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    float-to-int v6, v6

    .line 182
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const/16 v6, 0x8

    .line 192
    .line 193
    invoke-static {v6}, Ljmf;->d(I)I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    .line 199
    invoke-static {v6}, Ljmf;->d(I)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    .line 205
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    sget v5, Lteam/opay/pay/R$drawable;->osdk_shape_e7e7e7_4:I

    .line 212
    .line 213
    invoke-static {v1, v5, v12, v11, v10}, Lme7;->r(Landroid/widget/ImageView;IZILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    sget v5, Lteam/opay/pay/R$color;->black_45:I

    .line 221
    .line 222
    invoke-static {v1, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 239
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
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    sget v0, Lteam/opay/pay/R$color;->black_09:I

    .line 252
    .line 253
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_5
    const-string v6, "DONE"

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_6

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget v5, Lteam/opay/pay/R$mipmap;->bank_progress_success_v2:I

    .line 274
    .line 275
    invoke-static {v1, v5, v12, v11, v10}, Lme7;->r(Landroid/widget/ImageView;IZILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 283
    .line 284
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    new-instance p1, Ljava/util/Date;

    .line 310
    .line 311
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayProgress;->a()Ljava/lang/Long;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_7

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 318
    .line 319
    .line 320
    move-result-wide v8

    .line 321
    :cond_7
    invoke-direct {p1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Le1f;->h(Ljava/util/Date;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_8
    :goto_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 333
    .line 334
    .line 335
    :goto_1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OutPayProgress;->b()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    if-nez p1, :cond_9

    .line 340
    .line 341
    const-string p1, ""

    .line 342
    .line 343
    :cond_9
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    return-void
.end method
