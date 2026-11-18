.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "Li86;",
        "binding",
        "<init>",
        "(Li86;)V",
        "",
        "position",
        "data",
        "",
        "a",
        "(ILteam/opay/business/transfer/flow/api/TransactionInfo;)V",
        "Li86;",
        "getBinding",
        "()Li86;",
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


# instance fields
.field public final a:Li86;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li86;)V
    .locals 1
    .param p1    # Li86;
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
    invoke-direct {p0, p1}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder;->a:Li86;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(ILteam/opay/business/transfer/flow/api/TransactionInfo;)V
    .locals 7
    .param p2    # Lteam/opay/business/transfer/flow/api/TransactionInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder;->a:Li86;

    .line 7
    .line 8
    invoke-virtual {p1}, Li86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Li86;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getServiceName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getServiceName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Li86;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    const-string v2, "itemIcon"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getIconUrl()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sget v3, Lteam/opay/core/common/R$drawable;->common_default_logo_grey:I

    .line 57
    .line 58
    invoke-static {v1, v2, v3}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lgwa;->v:Lgwa$a;

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getStatus()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lgwa$a;->a(Ljava/lang/String;)Lteam/opay/business/transfer/flow/internal/StatusBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getStatusShowMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getStatusShowMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    :goto_2
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->d()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :goto_3
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getStatusShowColor()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    :try_start_0
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getStatusShowColor()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :catch_0
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->c()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_5
    :goto_4
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->c()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    :goto_5
    iget-object v2, p1, Li86;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    const-string v3, "itemStatus"

    .line 160
    .line 161
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 165
    .line 166
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 167
    .line 168
    .line 169
    const/high16 v4, 0x40800000    # 4.0f

    .line 170
    .line 171
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    mul-float v5, v5, v4

    .line 190
    .line 191
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    const-class v5, Ljava/lang/Float;

    .line 196
    .line 197
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 202
    .line 203
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_6

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_6
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 215
    .line 216
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_7

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/lang/Float;

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_7
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 238
    .line 239
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_8

    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 250
    .line 251
    .line 252
    move-result-wide v4

    .line 253
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    check-cast v4, Ljava/lang/Float;

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 261
    .line 262
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eqz v5, :cond_f

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, Ljava/lang/Float;

    .line 281
    .line 282
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    const/4 v5, 0x0

    .line 287
    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    const-string v4, "build(...)"

    .line 296
    .line 297
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v4, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 301
    .line 302
    invoke-direct {v4}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/internal/StatusBean;->a()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {v4, v1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v2, v3, v1}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getReceiptAccount()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const-string v2, ""

    .line 329
    .line 330
    if-eqz v1, :cond_a

    .line 331
    .line 332
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_9
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getReceiptAccount()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v4, " \u2022 "

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    goto :goto_8

    .line 361
    :cond_a
    :goto_7
    move-object v1, v2

    .line 362
    :goto_8
    iget-object v3, p1, Li86;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    sget-object v4, Lxa6;->a:Lxa6;

    .line 365
    .line 366
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getFinishDate()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    const-string v6, "MMM dd, HH:mm"

    .line 371
    .line 372
    invoke-virtual {v4, v5, v6}, Lxa6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, p1, Li86;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 395
    .line 396
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getAmount()Lteam/opay/core/common/amount/MoneyAmount;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    if-eqz v3, :cond_b

    .line 401
    .line 402
    invoke-virtual {v3, v2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    goto :goto_9

    .line 407
    :cond_b
    const/4 v3, 0x0

    .line 408
    :goto_9
    if-nez v3, :cond_c

    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_c
    move-object v2, v3

    .line 412
    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    iget-object v1, p1, Li86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getSign()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getFlowType()Lteam/opay/business/transfer/flow/api/FlowType;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    if-nez p2, :cond_d

    .line 429
    .line 430
    const/4 p2, -0x1

    .line 431
    goto :goto_b

    .line 432
    :cond_d
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/transactionList/HistoryViewHolder$a;->a:[I

    .line 433
    .line 434
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 435
    .line 436
    .line 437
    move-result p2

    .line 438
    aget p2, v1, p2

    .line 439
    .line 440
    :goto_b
    const/4 v1, 0x1

    .line 441
    if-ne p2, v1, :cond_e

    .line 442
    .line 443
    iget-object p2, p1, Li86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 444
    .line 445
    sget v1, Lteam/opay/core/common/R$color;->mint:I

    .line 446
    .line 447
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    .line 453
    .line 454
    iget-object p1, p1, Li86;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 455
    .line 456
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 457
    .line 458
    .line 459
    move-result p2

    .line 460
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_e
    iget-object p2, p1, Li86;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 465
    .line 466
    sget v1, Lteam/opay/core/common/R$color;->black_85:I

    .line 467
    .line 468
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    .line 474
    .line 475
    iget-object p1, p1, Li86;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 476
    .line 477
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 478
    .line 479
    .line 480
    move-result p2

    .line 481
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    .line 483
    .line 484
    :goto_c
    return-void

    .line 485
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 486
    .line 487
    const-string p2, "return number type not support"

    .line 488
    .line 489
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw p1
.end method
