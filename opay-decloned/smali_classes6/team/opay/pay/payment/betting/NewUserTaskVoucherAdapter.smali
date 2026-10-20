.class public final Lteam/opay/pay/payment/betting/NewUserTaskVoucherAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "NewUserTaskVoucherAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskVoucherAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;)V",
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
    sget v0, Lteam/opay/pay/R$layout;->fragment_new_user_task_item:I

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
    check-cast p2, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;)V
    .locals 19
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "helper"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "item"

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$id;->vBg:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$id;->ivLock:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "getView(...)"

    .line 35
    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v3, 0x8

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/high16 v3, 0x41000000    # 8.0f

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-static {v3}, Lkmf;->f(F)F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/high16 v1, 0x41700000    # 15.0f

    .line 67
    .line 68
    invoke-static {v1}, Lkmf;->f(F)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :goto_1
    sget v5, Lteam/opay/pay/R$id;->tvTitle:I

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroid/widget/TextView;

    .line 79
    .line 80
    float-to-int v1, v1

    .line 81
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    .line 95
    .line 96
    sget v1, Lteam/opay/pay/R$id;->ivArrow:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    sget v6, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    sget v6, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_normal:I

    .line 114
    .line 115
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->e()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    sget-object v1, Lhh2;->a:Lhh2;

    .line 125
    .line 126
    sget v6, Lteam/opay/pay/R$color;->osdk_always_black_85:I

    .line 127
    .line 128
    invoke-virtual {v1, v6}, Lhh2;->a(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    sget-object v1, Lhh2;->a:Lhh2;

    .line 134
    .line 135
    sget v6, Lteam/opay/pay/R$color;->osdk_always_black_45:I

    .line 136
    .line 137
    invoke-virtual {v1, v6}, Lhh2;->a(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    :goto_3
    sget v6, Lteam/opay/pay/R$id;->tvMoney:I

    .line 142
    .line 143
    invoke-virtual {v0, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    sget v7, Lteam/opay/pay/R$id;->tvDesc:I

    .line 153
    .line 154
    invoke-virtual {v0, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->g()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const/4 v8, 0x0

    .line 168
    if-eqz v1, :cond_7

    .line 169
    .line 170
    sget v1, Lteam/opay/pay/R$id;->ivPic:I

    .line 171
    .line 172
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->c()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto :goto_4

    .line 186
    :cond_4
    move-object v1, v8

    .line 187
    :goto_4
    invoke-virtual {v0, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-eqz v1, :cond_5

    .line 195
    .line 196
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->a()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    goto :goto_5

    .line 201
    :cond_5
    move-object v1, v8

    .line 202
    :goto_5
    invoke-virtual {v0, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->b()Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayBatchInfo;->b()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    :cond_6
    invoke-virtual {v0, v7, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 216
    .line 217
    .line 218
    goto/16 :goto_9

    .line 219
    .line 220
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->f()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_b

    .line 225
    .line 226
    sget v1, Lteam/opay/pay/R$id;->ivPic:I

    .line 227
    .line 228
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 229
    .line 230
    .line 231
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->c()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    goto :goto_6

    .line 242
    :cond_8
    move-object v1, v8

    .line 243
    :goto_6
    invoke-virtual {v0, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    if-eqz v1, :cond_9

    .line 251
    .line 252
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->a()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    goto :goto_7

    .line 257
    :cond_9
    move-object v1, v8

    .line 258
    :goto_7
    invoke-virtual {v0, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->d()Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayPackageInfo;->b()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    :cond_a
    invoke-virtual {v0, v7, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 272
    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->a()Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_e

    .line 280
    .line 281
    sget v1, Lteam/opay/pay/R$id;->ivPic:I

    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object v9, v1

    .line 292
    check-cast v9, Landroid/widget/ImageView;

    .line 293
    .line 294
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    if-eqz v1, :cond_c

    .line 302
    .line 303
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->b()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    move-object v10, v1

    .line 308
    goto :goto_8

    .line 309
    :cond_c
    move-object v10, v8

    .line 310
    :goto_8
    invoke-static {v3}, Lkmf;->f(F)F

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    float-to-int v11, v1

    .line 315
    const/16 v17, 0x7c

    .line 316
    .line 317
    const/16 v18, 0x0

    .line 318
    .line 319
    const/4 v12, 0x0

    .line 320
    const/4 v13, 0x0

    .line 321
    const/4 v14, 0x0

    .line 322
    const/4 v15, 0x0

    .line 323
    const/16 v16, 0x0

    .line 324
    .line 325
    invoke-static/range {v9 .. v18}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplaySetting;->c()Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_d

    .line 333
    .line 334
    invoke-virtual {v1}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomInfo;->c()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    :cond_d
    invoke-virtual {v0, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 339
    .line 340
    .line 341
    const-string v1, ""

    .line 342
    .line 343
    invoke-virtual {v0, v6, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v7, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 347
    .line 348
    .line 349
    :cond_e
    :goto_9
    return-void
.end method
