.class public Lteam/opay/business/widget/looper/ViewPagerIndicator;
.super Landroid/view/View;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/widget/looper/ViewPagerIndicator$d;,
        Lteam/opay/business/widget/looper/ViewPagerIndicator$c;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Path;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:I

.field public o:F

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

.field public t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

.field public u:Lteam/opay/business/widget/looper/ViewPagerIndicator$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 3
    new-array p3, p3, [Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    iput-object p3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    const/16 p3, 0x9

    .line 4
    new-array p3, p3, [Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    iput-object p3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 5
    new-instance p3, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;

    invoke-direct {p3, p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    iput-object p3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->u:Lteam/opay/business/widget/looper/ViewPagerIndicator$c;

    .line 6
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->f()V

    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/business/widget/looper/ViewPagerIndicator;IIFI)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h(IIFI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic b(Lteam/opay/business/widget/looper/ViewPagerIndicator;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->i(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->u:Lteam/opay/business/widget/looper/ViewPagerIndicator$c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->b:F

    .line 7
    .line 8
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    aget-object v4, v3, v4

    .line 12
    .line 13
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 14
    .line 15
    iput v5, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    aget-object v6, v3, v6

    .line 20
    .line 21
    neg-float v7, v5

    .line 22
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 23
    .line 24
    iget v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 25
    .line 26
    iget v8, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 27
    .line 28
    add-int/lit8 v9, v8, -0x1

    .line 29
    .line 30
    const v10, 0x3f19999a    # 0.6f

    .line 31
    .line 32
    .line 33
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 34
    .line 35
    const/high16 v15, 0x40000000    # 2.0f

    .line 36
    .line 37
    const-wide v16, 0x3fc999999999999aL    # 0.2

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide v18, 0x3fe999999999999aL    # 0.8

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const/16 v20, 0x0

    .line 48
    .line 49
    const v21, 0x3f4ccccd    # 0.8f

    .line 50
    .line 51
    .line 52
    const/16 v22, 0x5

    .line 53
    .line 54
    const/high16 v23, 0x3f000000    # 0.5f

    .line 55
    .line 56
    const v24, 0x3dcccccd    # 0.1f

    .line 57
    .line 58
    .line 59
    const v25, 0x3e4ccccd    # 0.2f

    .line 60
    .line 61
    .line 62
    const v26, 0x3e99999a    # 0.3f

    .line 63
    .line 64
    .line 65
    const/high16 v27, 0x3f800000    # 1.0f

    .line 66
    .line 67
    const v28, 0x3f0d4a4e

    .line 68
    .line 69
    .line 70
    const/16 v29, 0x1

    .line 71
    .line 72
    if-ne v7, v9, :cond_8

    .line 73
    .line 74
    iget-boolean v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 75
    .line 76
    if-nez v9, :cond_8

    .line 77
    .line 78
    iget v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 79
    .line 80
    float-to-double v11, v7

    .line 81
    cmpg-double v9, v11, v16

    .line 82
    .line 83
    if-gtz v9, :cond_0

    .line 84
    .line 85
    add-int/lit8 v9, v8, -0x1

    .line 86
    .line 87
    neg-int v9, v9

    .line 88
    int-to-float v9, v9

    .line 89
    mul-float v9, v9, v23

    .line 90
    .line 91
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 92
    .line 93
    mul-float v9, v9, v10

    .line 94
    .line 95
    add-int/lit8 v8, v8, -0x1

    .line 96
    .line 97
    int-to-float v8, v8

    .line 98
    mul-float v8, v8, v10

    .line 99
    .line 100
    add-float/2addr v9, v8

    .line 101
    iput v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    float-to-double v11, v7

    .line 105
    cmpg-double v9, v11, v18

    .line 106
    .line 107
    if-gtz v9, :cond_1

    .line 108
    .line 109
    add-int/lit8 v9, v8, -0x1

    .line 110
    .line 111
    neg-int v9, v9

    .line 112
    int-to-float v9, v9

    .line 113
    mul-float v9, v9, v23

    .line 114
    .line 115
    iget v11, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 116
    .line 117
    mul-float v9, v9, v11

    .line 118
    .line 119
    sub-float v12, v7, v25

    .line 120
    .line 121
    div-float/2addr v12, v10

    .line 122
    sub-float v10, v27, v12

    .line 123
    .line 124
    add-int/lit8 v8, v8, -0x1

    .line 125
    .line 126
    int-to-float v8, v8

    .line 127
    mul-float v10, v10, v8

    .line 128
    .line 129
    mul-float v10, v10, v11

    .line 130
    .line 131
    add-float/2addr v9, v10

    .line 132
    iput v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    float-to-double v9, v7

    .line 136
    cmpl-double v11, v9, v18

    .line 137
    .line 138
    if-lez v11, :cond_2

    .line 139
    .line 140
    cmpg-float v9, v7, v27

    .line 141
    .line 142
    if-gez v9, :cond_2

    .line 143
    .line 144
    add-int/lit8 v8, v8, -0x1

    .line 145
    .line 146
    neg-int v8, v8

    .line 147
    int-to-float v8, v8

    .line 148
    mul-float v8, v8, v23

    .line 149
    .line 150
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 151
    .line 152
    mul-float v8, v8, v9

    .line 153
    .line 154
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    cmpl-float v9, v7, v27

    .line 158
    .line 159
    if-nez v9, :cond_3

    .line 160
    .line 161
    add-int/lit8 v8, v8, -0x1

    .line 162
    .line 163
    neg-int v8, v8

    .line 164
    int-to-float v8, v8

    .line 165
    mul-float v8, v8, v23

    .line 166
    .line 167
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 168
    .line 169
    mul-float v8, v8, v9

    .line 170
    .line 171
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 172
    .line 173
    :cond_3
    :goto_0
    float-to-double v8, v7

    .line 174
    cmpl-double v10, v8, v18

    .line 175
    .line 176
    if-lez v10, :cond_4

    .line 177
    .line 178
    cmpg-float v8, v7, v27

    .line 179
    .line 180
    if-gtz v8, :cond_4

    .line 181
    .line 182
    aget-object v8, v3, v22

    .line 183
    .line 184
    iget v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 185
    .line 186
    sub-float v7, v7, v21

    .line 187
    .line 188
    div-float v7, v7, v25

    .line 189
    .line 190
    sub-float/2addr v15, v7

    .line 191
    mul-float v15, v15, v5

    .line 192
    .line 193
    add-float/2addr v15, v9

    .line 194
    iput v15, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 195
    .line 196
    aget-object v7, v3, v20

    .line 197
    .line 198
    sub-float/2addr v9, v5

    .line 199
    iput v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 200
    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :cond_4
    float-to-double v8, v7

    .line 204
    cmpl-double v10, v8, v13

    .line 205
    .line 206
    if-lez v10, :cond_5

    .line 207
    .line 208
    float-to-double v8, v7

    .line 209
    cmpg-double v10, v8, v18

    .line 210
    .line 211
    if-gtz v10, :cond_5

    .line 212
    .line 213
    aget-object v8, v3, v22

    .line 214
    .line 215
    iget v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 216
    .line 217
    mul-float v15, v15, v5

    .line 218
    .line 219
    add-float/2addr v15, v9

    .line 220
    iput v15, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 221
    .line 222
    aget-object v8, v3, v20

    .line 223
    .line 224
    sub-float v10, v21, v7

    .line 225
    .line 226
    div-float v10, v10, v26

    .line 227
    .line 228
    add-float v10, v10, v27

    .line 229
    .line 230
    mul-float v10, v10, v5

    .line 231
    .line 232
    sub-float/2addr v9, v10

    .line 233
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 234
    .line 235
    sub-float v8, v7, v21

    .line 236
    .line 237
    div-float v8, v8, v26

    .line 238
    .line 239
    mul-float v8, v8, v24

    .line 240
    .line 241
    add-float v8, v8, v27

    .line 242
    .line 243
    mul-float v8, v8, v5

    .line 244
    .line 245
    iput v8, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 246
    .line 247
    neg-float v8, v5

    .line 248
    sub-float v9, v7, v21

    .line 249
    .line 250
    div-float v9, v9, v26

    .line 251
    .line 252
    mul-float v9, v9, v24

    .line 253
    .line 254
    add-float v9, v9, v27

    .line 255
    .line 256
    mul-float v8, v8, v9

    .line 257
    .line 258
    iput v8, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 259
    .line 260
    neg-float v7, v7

    .line 261
    :goto_1
    add-float v7, v7, v21

    .line 262
    .line 263
    :goto_2
    div-float v7, v7, v26

    .line 264
    .line 265
    mul-float v7, v7, v26

    .line 266
    .line 267
    add-float v7, v7, v27

    .line 268
    .line 269
    mul-float v28, v28, v7

    .line 270
    .line 271
    goto/16 :goto_7

    .line 272
    .line 273
    :cond_5
    float-to-double v8, v7

    .line 274
    cmpl-double v10, v8, v16

    .line 275
    .line 276
    if-lez v10, :cond_6

    .line 277
    .line 278
    float-to-double v8, v7

    .line 279
    cmpg-double v10, v8, v13

    .line 280
    .line 281
    if-gtz v10, :cond_6

    .line 282
    .line 283
    aget-object v8, v3, v22

    .line 284
    .line 285
    iget v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 286
    .line 287
    sub-float v10, v7, v25

    .line 288
    .line 289
    div-float v10, v10, v26

    .line 290
    .line 291
    add-float v10, v10, v27

    .line 292
    .line 293
    mul-float v10, v10, v5

    .line 294
    .line 295
    add-float/2addr v10, v9

    .line 296
    iput v10, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 297
    .line 298
    aget-object v8, v3, v20

    .line 299
    .line 300
    sub-float v10, v7, v25

    .line 301
    .line 302
    div-float v10, v10, v26

    .line 303
    .line 304
    add-float v10, v10, v27

    .line 305
    .line 306
    mul-float v10, v10, v5

    .line 307
    .line 308
    sub-float/2addr v9, v10

    .line 309
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 310
    .line 311
    sub-float v8, v7, v25

    .line 312
    .line 313
    div-float v8, v8, v26

    .line 314
    .line 315
    mul-float v8, v8, v24

    .line 316
    .line 317
    sub-float v8, v27, v8

    .line 318
    .line 319
    mul-float v8, v8, v5

    .line 320
    .line 321
    iput v8, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 322
    .line 323
    neg-float v8, v5

    .line 324
    sub-float v9, v7, v25

    .line 325
    .line 326
    div-float v9, v9, v26

    .line 327
    .line 328
    mul-float v9, v9, v24

    .line 329
    .line 330
    sub-float v9, v27, v9

    .line 331
    .line 332
    mul-float v8, v8, v9

    .line 333
    .line 334
    iput v8, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 335
    .line 336
    sub-float v7, v7, v25

    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_6
    float-to-double v8, v7

    .line 340
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    cmpl-double v12, v8, v10

    .line 346
    .line 347
    if-lez v12, :cond_7

    .line 348
    .line 349
    float-to-double v8, v7

    .line 350
    cmpg-double v10, v8, v16

    .line 351
    .line 352
    if-gtz v10, :cond_7

    .line 353
    .line 354
    aget-object v8, v3, v22

    .line 355
    .line 356
    iget v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 357
    .line 358
    add-float v10, v9, v5

    .line 359
    .line 360
    iput v10, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 361
    .line 362
    aget-object v8, v3, v20

    .line 363
    .line 364
    sub-float v25, v25, v7

    .line 365
    .line 366
    div-float v25, v25, v24

    .line 367
    .line 368
    mul-float v25, v25, v23

    .line 369
    .line 370
    sub-float v27, v27, v25

    .line 371
    .line 372
    mul-float v27, v27, v5

    .line 373
    .line 374
    sub-float v9, v9, v27

    .line 375
    .line 376
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 377
    .line 378
    goto/16 :goto_7

    .line 379
    .line 380
    :cond_7
    cmpl-float v8, v7, v2

    .line 381
    .line 382
    if-ltz v8, :cond_20

    .line 383
    .line 384
    float-to-double v8, v7

    .line 385
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    cmpg-double v12, v8, v10

    .line 391
    .line 392
    if-gtz v12, :cond_20

    .line 393
    .line 394
    aget-object v8, v3, v22

    .line 395
    .line 396
    iget v9, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 397
    .line 398
    add-float v10, v9, v5

    .line 399
    .line 400
    iput v10, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 401
    .line 402
    aget-object v8, v3, v20

    .line 403
    .line 404
    div-float v7, v7, v24

    .line 405
    .line 406
    mul-float v7, v7, v23

    .line 407
    .line 408
    sub-float v27, v27, v7

    .line 409
    .line 410
    mul-float v27, v27, v5

    .line 411
    .line 412
    sub-float v9, v9, v27

    .line 413
    .line 414
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 415
    .line 416
    goto/16 :goto_7

    .line 417
    .line 418
    :cond_8
    add-int/lit8 v9, v8, -0x1

    .line 419
    .line 420
    if-ne v7, v9, :cond_12

    .line 421
    .line 422
    iget-boolean v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 423
    .line 424
    if-eqz v9, :cond_12

    .line 425
    .line 426
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 427
    .line 428
    float-to-double v11, v9

    .line 429
    cmpg-double v30, v11, v16

    .line 430
    .line 431
    if-gtz v30, :cond_9

    .line 432
    .line 433
    add-int/lit8 v7, v8, -0x1

    .line 434
    .line 435
    neg-int v7, v7

    .line 436
    int-to-float v7, v7

    .line 437
    mul-float v7, v7, v23

    .line 438
    .line 439
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 440
    .line 441
    mul-float v7, v7, v10

    .line 442
    .line 443
    add-int/lit8 v8, v8, -0x1

    .line 444
    .line 445
    int-to-float v8, v8

    .line 446
    mul-float v8, v8, v10

    .line 447
    .line 448
    add-float/2addr v7, v8

    .line 449
    iput v7, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_9
    float-to-double v11, v9

    .line 453
    cmpg-double v30, v11, v18

    .line 454
    .line 455
    if-gtz v30, :cond_a

    .line 456
    .line 457
    add-int/lit8 v7, v8, -0x1

    .line 458
    .line 459
    neg-int v7, v7

    .line 460
    int-to-float v7, v7

    .line 461
    mul-float v7, v7, v23

    .line 462
    .line 463
    iget v11, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 464
    .line 465
    mul-float v7, v7, v11

    .line 466
    .line 467
    sub-float v12, v9, v25

    .line 468
    .line 469
    div-float/2addr v12, v10

    .line 470
    sub-float v10, v27, v12

    .line 471
    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 473
    .line 474
    int-to-float v8, v8

    .line 475
    mul-float v10, v10, v8

    .line 476
    .line 477
    mul-float v10, v10, v11

    .line 478
    .line 479
    add-float/2addr v7, v10

    .line 480
    iput v7, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_a
    float-to-double v10, v9

    .line 484
    cmpl-double v12, v10, v18

    .line 485
    .line 486
    if-lez v12, :cond_b

    .line 487
    .line 488
    cmpg-float v10, v9, v27

    .line 489
    .line 490
    if-gez v10, :cond_b

    .line 491
    .line 492
    add-int/lit8 v8, v8, -0x1

    .line 493
    .line 494
    neg-int v7, v8

    .line 495
    int-to-float v7, v7

    .line 496
    mul-float v7, v7, v23

    .line 497
    .line 498
    iget v8, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 499
    .line 500
    mul-float v7, v7, v8

    .line 501
    .line 502
    iput v7, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 503
    .line 504
    goto :goto_3

    .line 505
    :cond_b
    cmpl-float v10, v9, v27

    .line 506
    .line 507
    if-nez v10, :cond_c

    .line 508
    .line 509
    add-int/lit8 v8, v8, -0x1

    .line 510
    .line 511
    neg-int v8, v8

    .line 512
    int-to-float v8, v8

    .line 513
    mul-float v8, v8, v23

    .line 514
    .line 515
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 516
    .line 517
    mul-float v8, v8, v10

    .line 518
    .line 519
    int-to-float v7, v7

    .line 520
    mul-float v7, v7, v10

    .line 521
    .line 522
    add-float/2addr v8, v7

    .line 523
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 524
    .line 525
    :cond_c
    :goto_3
    cmpg-float v7, v9, v2

    .line 526
    .line 527
    if-gtz v7, :cond_d

    .line 528
    .line 529
    goto/16 :goto_7

    .line 530
    .line 531
    :cond_d
    float-to-double v7, v9

    .line 532
    cmpg-double v10, v7, v16

    .line 533
    .line 534
    if-gtz v10, :cond_e

    .line 535
    .line 536
    cmpl-float v7, v9, v2

    .line 537
    .line 538
    if-ltz v7, :cond_e

    .line 539
    .line 540
    aget-object v7, v3, v22

    .line 541
    .line 542
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 543
    .line 544
    add-float v10, v8, v5

    .line 545
    .line 546
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 547
    .line 548
    aget-object v7, v3, v20

    .line 549
    .line 550
    div-float v9, v9, v25

    .line 551
    .line 552
    add-float v9, v9, v27

    .line 553
    .line 554
    mul-float v9, v9, v5

    .line 555
    .line 556
    sub-float/2addr v8, v9

    .line 557
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 558
    .line 559
    goto/16 :goto_7

    .line 560
    .line 561
    :cond_e
    float-to-double v7, v9

    .line 562
    cmpl-double v10, v7, v16

    .line 563
    .line 564
    if-lez v10, :cond_f

    .line 565
    .line 566
    float-to-double v7, v9

    .line 567
    cmpg-double v10, v7, v13

    .line 568
    .line 569
    if-gtz v10, :cond_f

    .line 570
    .line 571
    aget-object v7, v3, v22

    .line 572
    .line 573
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 574
    .line 575
    sub-float v10, v9, v25

    .line 576
    .line 577
    div-float v10, v10, v26

    .line 578
    .line 579
    add-float v10, v10, v27

    .line 580
    .line 581
    mul-float v10, v10, v5

    .line 582
    .line 583
    add-float/2addr v10, v8

    .line 584
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 585
    .line 586
    aget-object v7, v3, v20

    .line 587
    .line 588
    mul-float v15, v15, v5

    .line 589
    .line 590
    sub-float/2addr v8, v15

    .line 591
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 592
    .line 593
    sub-float v7, v9, v25

    .line 594
    .line 595
    div-float v7, v7, v26

    .line 596
    .line 597
    mul-float v7, v7, v24

    .line 598
    .line 599
    sub-float v7, v27, v7

    .line 600
    .line 601
    mul-float v7, v7, v5

    .line 602
    .line 603
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 604
    .line 605
    neg-float v7, v5

    .line 606
    sub-float v8, v9, v25

    .line 607
    .line 608
    div-float v8, v8, v26

    .line 609
    .line 610
    mul-float v8, v8, v24

    .line 611
    .line 612
    sub-float v8, v27, v8

    .line 613
    .line 614
    mul-float v7, v7, v8

    .line 615
    .line 616
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 617
    .line 618
    :goto_4
    sub-float v9, v9, v25

    .line 619
    .line 620
    div-float v9, v9, v26

    .line 621
    .line 622
    mul-float v9, v9, v26

    .line 623
    .line 624
    add-float v9, v9, v27

    .line 625
    .line 626
    mul-float v28, v28, v9

    .line 627
    .line 628
    goto/16 :goto_7

    .line 629
    .line 630
    :cond_f
    float-to-double v7, v9

    .line 631
    cmpl-double v10, v7, v13

    .line 632
    .line 633
    if-lez v10, :cond_10

    .line 634
    .line 635
    float-to-double v7, v9

    .line 636
    cmpg-double v10, v7, v18

    .line 637
    .line 638
    if-gtz v10, :cond_10

    .line 639
    .line 640
    aget-object v7, v3, v22

    .line 641
    .line 642
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 643
    .line 644
    sub-float v10, v21, v9

    .line 645
    .line 646
    div-float v10, v10, v26

    .line 647
    .line 648
    add-float v10, v10, v27

    .line 649
    .line 650
    mul-float v10, v10, v5

    .line 651
    .line 652
    add-float/2addr v10, v8

    .line 653
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 654
    .line 655
    aget-object v7, v3, v20

    .line 656
    .line 657
    sub-float v10, v21, v9

    .line 658
    .line 659
    div-float v10, v10, v26

    .line 660
    .line 661
    add-float v10, v10, v27

    .line 662
    .line 663
    mul-float v10, v10, v5

    .line 664
    .line 665
    sub-float/2addr v8, v10

    .line 666
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 667
    .line 668
    sub-float v7, v9, v21

    .line 669
    .line 670
    div-float v7, v7, v26

    .line 671
    .line 672
    mul-float v7, v7, v24

    .line 673
    .line 674
    add-float v7, v7, v27

    .line 675
    .line 676
    mul-float v7, v7, v5

    .line 677
    .line 678
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 679
    .line 680
    neg-float v7, v5

    .line 681
    sub-float v8, v9, v21

    .line 682
    .line 683
    div-float v8, v8, v26

    .line 684
    .line 685
    mul-float v8, v8, v24

    .line 686
    .line 687
    add-float v8, v8, v27

    .line 688
    .line 689
    mul-float v7, v7, v8

    .line 690
    .line 691
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 692
    .line 693
    :goto_5
    sub-float v21, v21, v9

    .line 694
    .line 695
    div-float v21, v21, v26

    .line 696
    .line 697
    mul-float v21, v21, v26

    .line 698
    .line 699
    add-float v21, v21, v27

    .line 700
    .line 701
    mul-float v28, v28, v21

    .line 702
    .line 703
    goto/16 :goto_7

    .line 704
    .line 705
    :cond_10
    float-to-double v7, v9

    .line 706
    cmpl-double v10, v7, v18

    .line 707
    .line 708
    if-lez v10, :cond_11

    .line 709
    .line 710
    float-to-double v7, v9

    .line 711
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    cmpg-double v12, v7, v10

    .line 717
    .line 718
    if-gtz v12, :cond_11

    .line 719
    .line 720
    aget-object v7, v3, v22

    .line 721
    .line 722
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 723
    .line 724
    sub-float v9, v9, v21

    .line 725
    .line 726
    div-float v9, v9, v24

    .line 727
    .line 728
    mul-float v9, v9, v23

    .line 729
    .line 730
    sub-float v27, v27, v9

    .line 731
    .line 732
    mul-float v27, v27, v5

    .line 733
    .line 734
    add-float v9, v8, v27

    .line 735
    .line 736
    iput v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 737
    .line 738
    aget-object v7, v3, v20

    .line 739
    .line 740
    sub-float/2addr v8, v5

    .line 741
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 742
    .line 743
    goto/16 :goto_7

    .line 744
    .line 745
    :cond_11
    float-to-double v7, v9

    .line 746
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    cmpl-double v12, v7, v10

    .line 752
    .line 753
    if-lez v12, :cond_20

    .line 754
    .line 755
    cmpg-float v7, v9, v27

    .line 756
    .line 757
    if-gtz v7, :cond_20

    .line 758
    .line 759
    aget-object v7, v3, v22

    .line 760
    .line 761
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 762
    .line 763
    const v10, 0x3f666666    # 0.9f

    .line 764
    .line 765
    .line 766
    sub-float/2addr v9, v10

    .line 767
    div-float v9, v9, v24

    .line 768
    .line 769
    mul-float v9, v9, v23

    .line 770
    .line 771
    sub-float v27, v27, v9

    .line 772
    .line 773
    mul-float v27, v27, v5

    .line 774
    .line 775
    add-float v9, v8, v27

    .line 776
    .line 777
    iput v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 778
    .line 779
    aget-object v7, v3, v20

    .line 780
    .line 781
    sub-float/2addr v8, v5

    .line 782
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 783
    .line 784
    goto/16 :goto_7

    .line 785
    .line 786
    :cond_12
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 787
    .line 788
    float-to-double v11, v9

    .line 789
    cmpg-double v31, v11, v16

    .line 790
    .line 791
    if-gtz v31, :cond_13

    .line 792
    .line 793
    add-int/lit8 v8, v8, -0x1

    .line 794
    .line 795
    neg-int v8, v8

    .line 796
    int-to-float v8, v8

    .line 797
    mul-float v8, v8, v23

    .line 798
    .line 799
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 800
    .line 801
    mul-float v8, v8, v10

    .line 802
    .line 803
    int-to-float v7, v7

    .line 804
    mul-float v7, v7, v10

    .line 805
    .line 806
    add-float/2addr v8, v7

    .line 807
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 808
    .line 809
    goto :goto_6

    .line 810
    :cond_13
    float-to-double v11, v9

    .line 811
    cmpg-double v31, v11, v18

    .line 812
    .line 813
    if-gtz v31, :cond_14

    .line 814
    .line 815
    add-int/lit8 v11, v8, -0x1

    .line 816
    .line 817
    neg-int v11, v11

    .line 818
    int-to-float v11, v11

    .line 819
    mul-float v11, v11, v23

    .line 820
    .line 821
    iget v12, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 822
    .line 823
    mul-float v11, v11, v12

    .line 824
    .line 825
    int-to-float v13, v7

    .line 826
    add-float/2addr v13, v9

    .line 827
    mul-float v13, v13, v12

    .line 828
    .line 829
    add-float/2addr v11, v13

    .line 830
    iput v11, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 831
    .line 832
    add-int/lit8 v8, v8, -0x1

    .line 833
    .line 834
    neg-int v8, v8

    .line 835
    int-to-float v8, v8

    .line 836
    mul-float v8, v8, v23

    .line 837
    .line 838
    mul-float v8, v8, v12

    .line 839
    .line 840
    int-to-float v7, v7

    .line 841
    sub-float v11, v9, v25

    .line 842
    .line 843
    div-float/2addr v11, v10

    .line 844
    add-float/2addr v7, v11

    .line 845
    mul-float v7, v7, v12

    .line 846
    .line 847
    add-float/2addr v8, v7

    .line 848
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 849
    .line 850
    goto :goto_6

    .line 851
    :cond_14
    float-to-double v10, v9

    .line 852
    cmpl-double v12, v10, v18

    .line 853
    .line 854
    if-lez v12, :cond_15

    .line 855
    .line 856
    cmpg-float v10, v9, v27

    .line 857
    .line 858
    if-gez v10, :cond_15

    .line 859
    .line 860
    add-int/lit8 v8, v8, -0x1

    .line 861
    .line 862
    neg-int v8, v8

    .line 863
    int-to-float v8, v8

    .line 864
    mul-float v8, v8, v23

    .line 865
    .line 866
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 867
    .line 868
    mul-float v8, v8, v10

    .line 869
    .line 870
    add-int/lit8 v7, v7, 0x1

    .line 871
    .line 872
    int-to-float v7, v7

    .line 873
    mul-float v7, v7, v10

    .line 874
    .line 875
    add-float/2addr v8, v7

    .line 876
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 877
    .line 878
    goto :goto_6

    .line 879
    :cond_15
    cmpl-float v10, v9, v27

    .line 880
    .line 881
    if-nez v10, :cond_16

    .line 882
    .line 883
    add-int/lit8 v8, v8, -0x1

    .line 884
    .line 885
    neg-int v8, v8

    .line 886
    int-to-float v8, v8

    .line 887
    mul-float v8, v8, v23

    .line 888
    .line 889
    iget v10, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 890
    .line 891
    mul-float v8, v8, v10

    .line 892
    .line 893
    int-to-float v7, v7

    .line 894
    mul-float v7, v7, v10

    .line 895
    .line 896
    add-float/2addr v8, v7

    .line 897
    iput v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 898
    .line 899
    :cond_16
    :goto_6
    iget-boolean v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 900
    .line 901
    if-eqz v7, :cond_1b

    .line 902
    .line 903
    cmpl-float v7, v9, v2

    .line 904
    .line 905
    if-ltz v7, :cond_17

    .line 906
    .line 907
    float-to-double v7, v9

    .line 908
    cmpg-double v10, v7, v16

    .line 909
    .line 910
    if-gtz v10, :cond_17

    .line 911
    .line 912
    aget-object v7, v3, v22

    .line 913
    .line 914
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 915
    .line 916
    sub-float v9, v25, v9

    .line 917
    .line 918
    div-float v9, v9, v25

    .line 919
    .line 920
    sub-float/2addr v15, v9

    .line 921
    mul-float v15, v15, v5

    .line 922
    .line 923
    add-float/2addr v15, v8

    .line 924
    iput v15, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 925
    .line 926
    aget-object v7, v3, v20

    .line 927
    .line 928
    sub-float/2addr v8, v5

    .line 929
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 930
    .line 931
    goto/16 :goto_7

    .line 932
    .line 933
    :cond_17
    float-to-double v7, v9

    .line 934
    cmpl-double v10, v7, v16

    .line 935
    .line 936
    if-lez v10, :cond_18

    .line 937
    .line 938
    float-to-double v7, v9

    .line 939
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 940
    .line 941
    cmpg-double v12, v7, v10

    .line 942
    .line 943
    if-gtz v12, :cond_18

    .line 944
    .line 945
    aget-object v7, v3, v22

    .line 946
    .line 947
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 948
    .line 949
    mul-float v15, v15, v5

    .line 950
    .line 951
    add-float/2addr v15, v8

    .line 952
    iput v15, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 953
    .line 954
    aget-object v7, v3, v20

    .line 955
    .line 956
    sub-float v10, v9, v25

    .line 957
    .line 958
    div-float v10, v10, v26

    .line 959
    .line 960
    add-float v10, v10, v27

    .line 961
    .line 962
    mul-float v10, v10, v5

    .line 963
    .line 964
    sub-float/2addr v8, v10

    .line 965
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 966
    .line 967
    sub-float v7, v9, v25

    .line 968
    .line 969
    div-float v7, v7, v26

    .line 970
    .line 971
    mul-float v7, v7, v24

    .line 972
    .line 973
    sub-float v7, v27, v7

    .line 974
    .line 975
    mul-float v7, v7, v5

    .line 976
    .line 977
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 978
    .line 979
    neg-float v7, v5

    .line 980
    sub-float v8, v9, v25

    .line 981
    .line 982
    div-float v8, v8, v26

    .line 983
    .line 984
    mul-float v8, v8, v24

    .line 985
    .line 986
    sub-float v8, v27, v8

    .line 987
    .line 988
    mul-float v7, v7, v8

    .line 989
    .line 990
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 991
    .line 992
    goto/16 :goto_4

    .line 993
    .line 994
    :cond_18
    float-to-double v7, v9

    .line 995
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 996
    .line 997
    cmpl-double v12, v7, v10

    .line 998
    .line 999
    if-lez v12, :cond_19

    .line 1000
    .line 1001
    float-to-double v7, v9

    .line 1002
    cmpg-double v10, v7, v18

    .line 1003
    .line 1004
    if-gtz v10, :cond_19

    .line 1005
    .line 1006
    aget-object v7, v3, v22

    .line 1007
    .line 1008
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1009
    .line 1010
    sub-float v10, v21, v9

    .line 1011
    .line 1012
    div-float v10, v10, v26

    .line 1013
    .line 1014
    add-float v10, v10, v27

    .line 1015
    .line 1016
    mul-float v10, v10, v5

    .line 1017
    .line 1018
    add-float/2addr v10, v8

    .line 1019
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1020
    .line 1021
    aget-object v7, v3, v20

    .line 1022
    .line 1023
    sub-float v10, v21, v9

    .line 1024
    .line 1025
    div-float v10, v10, v26

    .line 1026
    .line 1027
    add-float v10, v10, v27

    .line 1028
    .line 1029
    mul-float v10, v10, v5

    .line 1030
    .line 1031
    sub-float/2addr v8, v10

    .line 1032
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1033
    .line 1034
    sub-float v7, v9, v21

    .line 1035
    .line 1036
    div-float v7, v7, v26

    .line 1037
    .line 1038
    mul-float v7, v7, v24

    .line 1039
    .line 1040
    add-float v7, v7, v27

    .line 1041
    .line 1042
    mul-float v7, v7, v5

    .line 1043
    .line 1044
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1045
    .line 1046
    neg-float v7, v5

    .line 1047
    sub-float v8, v9, v21

    .line 1048
    .line 1049
    div-float v8, v8, v26

    .line 1050
    .line 1051
    mul-float v8, v8, v24

    .line 1052
    .line 1053
    add-float v8, v8, v27

    .line 1054
    .line 1055
    mul-float v7, v7, v8

    .line 1056
    .line 1057
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1058
    .line 1059
    neg-float v7, v9

    .line 1060
    goto/16 :goto_1

    .line 1061
    .line 1062
    :cond_19
    float-to-double v7, v9

    .line 1063
    cmpl-double v10, v7, v18

    .line 1064
    .line 1065
    if-lez v10, :cond_1a

    .line 1066
    .line 1067
    float-to-double v7, v9

    .line 1068
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    cmpg-double v12, v7, v10

    .line 1074
    .line 1075
    if-gtz v12, :cond_1a

    .line 1076
    .line 1077
    aget-object v7, v3, v22

    .line 1078
    .line 1079
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1080
    .line 1081
    add-float v10, v8, v5

    .line 1082
    .line 1083
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1084
    .line 1085
    aget-object v7, v3, v20

    .line 1086
    .line 1087
    sub-float v9, v9, v21

    .line 1088
    .line 1089
    div-float v9, v9, v24

    .line 1090
    .line 1091
    mul-float v9, v9, v23

    .line 1092
    .line 1093
    sub-float v27, v27, v9

    .line 1094
    .line 1095
    mul-float v27, v27, v5

    .line 1096
    .line 1097
    sub-float v8, v8, v27

    .line 1098
    .line 1099
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1100
    .line 1101
    goto/16 :goto_7

    .line 1102
    .line 1103
    :cond_1a
    float-to-double v7, v9

    .line 1104
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    cmpl-double v12, v7, v10

    .line 1110
    .line 1111
    if-lez v12, :cond_20

    .line 1112
    .line 1113
    cmpg-float v7, v9, v27

    .line 1114
    .line 1115
    if-gtz v7, :cond_20

    .line 1116
    .line 1117
    aget-object v7, v3, v22

    .line 1118
    .line 1119
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1120
    .line 1121
    add-float v10, v8, v5

    .line 1122
    .line 1123
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1124
    .line 1125
    aget-object v7, v3, v20

    .line 1126
    .line 1127
    sub-float v9, v27, v9

    .line 1128
    .line 1129
    div-float v9, v9, v24

    .line 1130
    .line 1131
    mul-float v9, v9, v23

    .line 1132
    .line 1133
    sub-float v27, v27, v9

    .line 1134
    .line 1135
    mul-float v27, v27, v5

    .line 1136
    .line 1137
    sub-float v8, v8, v27

    .line 1138
    .line 1139
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1140
    .line 1141
    goto/16 :goto_7

    .line 1142
    .line 1143
    :cond_1b
    cmpg-float v7, v9, v27

    .line 1144
    .line 1145
    if-gtz v7, :cond_1c

    .line 1146
    .line 1147
    float-to-double v7, v9

    .line 1148
    cmpl-double v10, v7, v18

    .line 1149
    .line 1150
    if-ltz v10, :cond_1c

    .line 1151
    .line 1152
    aget-object v7, v3, v22

    .line 1153
    .line 1154
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1155
    .line 1156
    add-float v10, v8, v5

    .line 1157
    .line 1158
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1159
    .line 1160
    aget-object v7, v3, v20

    .line 1161
    .line 1162
    sub-float v9, v9, v21

    .line 1163
    .line 1164
    div-float v9, v9, v25

    .line 1165
    .line 1166
    sub-float/2addr v15, v9

    .line 1167
    mul-float v15, v15, v5

    .line 1168
    .line 1169
    sub-float/2addr v8, v15

    .line 1170
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1171
    .line 1172
    goto/16 :goto_7

    .line 1173
    .line 1174
    :cond_1c
    float-to-double v7, v9

    .line 1175
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1176
    .line 1177
    cmpl-double v12, v7, v10

    .line 1178
    .line 1179
    if-lez v12, :cond_1d

    .line 1180
    .line 1181
    float-to-double v7, v9

    .line 1182
    cmpg-double v10, v7, v18

    .line 1183
    .line 1184
    if-gtz v10, :cond_1d

    .line 1185
    .line 1186
    aget-object v7, v3, v22

    .line 1187
    .line 1188
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1189
    .line 1190
    sub-float v10, v9, v23

    .line 1191
    .line 1192
    div-float v10, v10, v26

    .line 1193
    .line 1194
    sub-float v10, v15, v10

    .line 1195
    .line 1196
    mul-float v10, v10, v5

    .line 1197
    .line 1198
    add-float/2addr v10, v8

    .line 1199
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1200
    .line 1201
    aget-object v7, v3, v20

    .line 1202
    .line 1203
    mul-float v15, v15, v5

    .line 1204
    .line 1205
    sub-float/2addr v8, v15

    .line 1206
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1207
    .line 1208
    sub-float v7, v21, v9

    .line 1209
    .line 1210
    div-float v7, v7, v26

    .line 1211
    .line 1212
    mul-float v7, v7, v24

    .line 1213
    .line 1214
    sub-float v7, v27, v7

    .line 1215
    .line 1216
    mul-float v7, v7, v5

    .line 1217
    .line 1218
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1219
    .line 1220
    neg-float v7, v5

    .line 1221
    sub-float v8, v21, v9

    .line 1222
    .line 1223
    div-float v8, v8, v26

    .line 1224
    .line 1225
    mul-float v8, v8, v24

    .line 1226
    .line 1227
    sub-float v8, v27, v8

    .line 1228
    .line 1229
    mul-float v7, v7, v8

    .line 1230
    .line 1231
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1232
    .line 1233
    goto/16 :goto_5

    .line 1234
    .line 1235
    :cond_1d
    float-to-double v7, v9

    .line 1236
    cmpl-double v10, v7, v16

    .line 1237
    .line 1238
    if-lez v10, :cond_1e

    .line 1239
    .line 1240
    float-to-double v7, v9

    .line 1241
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1242
    .line 1243
    cmpg-double v12, v7, v10

    .line 1244
    .line 1245
    if-gtz v12, :cond_1e

    .line 1246
    .line 1247
    aget-object v7, v3, v22

    .line 1248
    .line 1249
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1250
    .line 1251
    sub-float v10, v9, v25

    .line 1252
    .line 1253
    div-float v10, v10, v26

    .line 1254
    .line 1255
    add-float v10, v10, v27

    .line 1256
    .line 1257
    mul-float v10, v10, v5

    .line 1258
    .line 1259
    add-float/2addr v10, v8

    .line 1260
    iput v10, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1261
    .line 1262
    aget-object v7, v3, v20

    .line 1263
    .line 1264
    sub-float v10, v9, v25

    .line 1265
    .line 1266
    div-float v10, v10, v26

    .line 1267
    .line 1268
    add-float v10, v10, v27

    .line 1269
    .line 1270
    mul-float v10, v10, v5

    .line 1271
    .line 1272
    sub-float/2addr v8, v10

    .line 1273
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1274
    .line 1275
    sub-float v7, v9, v25

    .line 1276
    .line 1277
    div-float v7, v7, v26

    .line 1278
    .line 1279
    mul-float v7, v7, v24

    .line 1280
    .line 1281
    sub-float v7, v27, v7

    .line 1282
    .line 1283
    mul-float v7, v7, v5

    .line 1284
    .line 1285
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1286
    .line 1287
    neg-float v7, v5

    .line 1288
    sub-float v8, v9, v25

    .line 1289
    .line 1290
    div-float v8, v8, v26

    .line 1291
    .line 1292
    mul-float v8, v8, v24

    .line 1293
    .line 1294
    sub-float v8, v27, v8

    .line 1295
    .line 1296
    mul-float v7, v7, v8

    .line 1297
    .line 1298
    iput v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1299
    .line 1300
    goto/16 :goto_4

    .line 1301
    .line 1302
    :cond_1e
    float-to-double v7, v9

    .line 1303
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    cmpl-double v12, v7, v10

    .line 1309
    .line 1310
    if-lez v12, :cond_1f

    .line 1311
    .line 1312
    float-to-double v7, v9

    .line 1313
    cmpg-double v10, v7, v16

    .line 1314
    .line 1315
    if-gtz v10, :cond_1f

    .line 1316
    .line 1317
    aget-object v7, v3, v22

    .line 1318
    .line 1319
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1320
    .line 1321
    sub-float v25, v25, v9

    .line 1322
    .line 1323
    div-float v25, v25, v24

    .line 1324
    .line 1325
    mul-float v25, v25, v23

    .line 1326
    .line 1327
    sub-float v27, v27, v25

    .line 1328
    .line 1329
    mul-float v27, v27, v5

    .line 1330
    .line 1331
    add-float v9, v8, v27

    .line 1332
    .line 1333
    iput v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1334
    .line 1335
    aget-object v7, v3, v20

    .line 1336
    .line 1337
    sub-float/2addr v8, v5

    .line 1338
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1339
    .line 1340
    goto :goto_7

    .line 1341
    :cond_1f
    cmpl-float v7, v9, v2

    .line 1342
    .line 1343
    if-ltz v7, :cond_20

    .line 1344
    .line 1345
    float-to-double v7, v9

    .line 1346
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    cmpg-double v12, v7, v10

    .line 1352
    .line 1353
    if-gtz v12, :cond_20

    .line 1354
    .line 1355
    aget-object v7, v3, v22

    .line 1356
    .line 1357
    iget v8, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1358
    .line 1359
    div-float v9, v9, v24

    .line 1360
    .line 1361
    mul-float v9, v9, v23

    .line 1362
    .line 1363
    sub-float v27, v27, v9

    .line 1364
    .line 1365
    mul-float v27, v27, v5

    .line 1366
    .line 1367
    add-float v9, v8, v27

    .line 1368
    .line 1369
    iput v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1370
    .line 1371
    aget-object v7, v3, v20

    .line 1372
    .line 1373
    sub-float/2addr v8, v5

    .line 1374
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1375
    .line 1376
    :cond_20
    :goto_7
    aget-object v7, v3, v20

    .line 1377
    .line 1378
    iput v2, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1379
    .line 1380
    aget-object v8, v3, v29

    .line 1381
    .line 1382
    iget v9, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1383
    .line 1384
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1385
    .line 1386
    mul-float v9, v5, v28

    .line 1387
    .line 1388
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1389
    .line 1390
    const/16 v8, 0xb

    .line 1391
    .line 1392
    aget-object v8, v3, v8

    .line 1393
    .line 1394
    iget v7, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1395
    .line 1396
    iput v7, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1397
    .line 1398
    neg-float v7, v5

    .line 1399
    mul-float v7, v7, v28

    .line 1400
    .line 1401
    iput v7, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1402
    .line 1403
    iget v1, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$c;->a:F

    .line 1404
    .line 1405
    mul-float v7, v5, v28

    .line 1406
    .line 1407
    sub-float v7, v1, v7

    .line 1408
    .line 1409
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1410
    .line 1411
    const/4 v7, 0x3

    .line 1412
    aget-object v7, v3, v7

    .line 1413
    .line 1414
    iput v1, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1415
    .line 1416
    iget v8, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1417
    .line 1418
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1419
    .line 1420
    const/4 v7, 0x4

    .line 1421
    aget-object v7, v3, v7

    .line 1422
    .line 1423
    mul-float v8, v5, v28

    .line 1424
    .line 1425
    add-float/2addr v8, v1

    .line 1426
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1427
    .line 1428
    iget v4, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1429
    .line 1430
    iput v4, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1431
    .line 1432
    aget-object v4, v3, v22

    .line 1433
    .line 1434
    mul-float v7, v5, v28

    .line 1435
    .line 1436
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1437
    .line 1438
    const/4 v7, 0x6

    .line 1439
    aget-object v7, v3, v7

    .line 1440
    .line 1441
    iget v8, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1442
    .line 1443
    iput v8, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1444
    .line 1445
    iput v2, v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1446
    .line 1447
    const/4 v2, 0x7

    .line 1448
    aget-object v2, v3, v2

    .line 1449
    .line 1450
    iget v4, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1451
    .line 1452
    iput v4, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1453
    .line 1454
    neg-float v4, v5

    .line 1455
    mul-float v4, v4, v28

    .line 1456
    .line 1457
    iput v4, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1458
    .line 1459
    mul-float v2, v5, v28

    .line 1460
    .line 1461
    add-float/2addr v2, v1

    .line 1462
    iput v2, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1463
    .line 1464
    const/16 v2, 0x9

    .line 1465
    .line 1466
    aget-object v2, v3, v2

    .line 1467
    .line 1468
    iput v1, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1469
    .line 1470
    iget v4, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1471
    .line 1472
    iput v4, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1473
    .line 1474
    const/16 v2, 0xa

    .line 1475
    .line 1476
    aget-object v2, v3, v2

    .line 1477
    .line 1478
    mul-float v5, v5, v28

    .line 1479
    .line 1480
    sub-float/2addr v1, v5

    .line 1481
    iput v1, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 1482
    .line 1483
    iget v1, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1484
    .line 1485
    iput v1, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 1486
    .line 1487
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 12
    .line 13
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aget-object v2, v2, v3

    .line 17
    .line 18
    iget v4, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 19
    .line 20
    iget v2, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 21
    .line 22
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    .line 24
    .line 25
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 26
    .line 27
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aget-object v2, v1, v2

    .line 31
    .line 32
    iget v6, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 33
    .line 34
    iget v7, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    aget-object v2, v1, v2

    .line 38
    .line 39
    iget v8, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 40
    .line 41
    iget v9, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    aget-object v1, v1, v2

    .line 45
    .line 46
    iget v10, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 47
    .line 48
    iget v11, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 49
    .line 50
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 51
    .line 52
    .line 53
    iget-object v12, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 56
    .line 57
    const/4 v2, 0x4

    .line 58
    aget-object v2, v1, v2

    .line 59
    .line 60
    iget v13, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 61
    .line 62
    iget v14, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    aget-object v2, v1, v2

    .line 66
    .line 67
    iget v15, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 68
    .line 69
    iget v2, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 70
    .line 71
    const/4 v4, 0x6

    .line 72
    aget-object v1, v1, v4

    .line 73
    .line 74
    iget v4, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 75
    .line 76
    iget v1, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 77
    .line 78
    move/from16 v16, v2

    .line 79
    .line 80
    move/from16 v17, v4

    .line 81
    .line 82
    move/from16 v18, v1

    .line 83
    .line 84
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    .line 86
    .line 87
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 88
    .line 89
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 90
    .line 91
    const/4 v2, 0x7

    .line 92
    aget-object v2, v1, v2

    .line 93
    .line 94
    iget v6, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 95
    .line 96
    iget v7, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 97
    .line 98
    const/16 v2, 0x8

    .line 99
    .line 100
    aget-object v2, v1, v2

    .line 101
    .line 102
    iget v8, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 103
    .line 104
    iget v9, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 105
    .line 106
    const/16 v2, 0x9

    .line 107
    .line 108
    aget-object v1, v1, v2

    .line 109
    .line 110
    iget v10, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 111
    .line 112
    iget v11, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 113
    .line 114
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 115
    .line 116
    .line 117
    iget-object v12, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 118
    .line 119
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 120
    .line 121
    const/16 v2, 0xa

    .line 122
    .line 123
    aget-object v2, v1, v2

    .line 124
    .line 125
    iget v13, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 126
    .line 127
    iget v14, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 128
    .line 129
    const/16 v2, 0xb

    .line 130
    .line 131
    aget-object v2, v1, v2

    .line 132
    .line 133
    iget v15, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 134
    .line 135
    iget v2, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 136
    .line 137
    aget-object v1, v1, v3

    .line 138
    .line 139
    iget v3, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 140
    .line 141
    iget v1, v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 142
    .line 143
    move/from16 v16, v2

    .line 144
    .line 145
    move/from16 v17, v3

    .line 146
    .line 147
    move/from16 v18, v1

    .line 148
    .line 149
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 153
    .line 154
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 155
    .line 156
    move-object/from16 v3, p1

    .line 157
    .line 158
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float v4, v2, v3

    .line 10
    .line 11
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 12
    .line 13
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 14
    .line 15
    add-int/lit8 v7, v6, -0x1

    .line 16
    .line 17
    const/high16 v8, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    const/high16 v11, 0x3f000000    # 0.5f

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    if-ne v5, v7, :cond_1

    .line 25
    .line 26
    iget-boolean v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 31
    .line 32
    float-to-double v13, v5

    .line 33
    cmpg-double v7, v13, v9

    .line 34
    .line 35
    if-gtz v7, :cond_0

    .line 36
    .line 37
    add-int/lit8 v7, v6, -0x1

    .line 38
    .line 39
    neg-int v7, v7

    .line 40
    int-to-float v7, v7

    .line 41
    mul-float v7, v7, v11

    .line 42
    .line 43
    iget v8, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 44
    .line 45
    mul-float v7, v7, v8

    .line 46
    .line 47
    add-int/lit8 v9, v6, -0x1

    .line 48
    .line 49
    int-to-float v9, v9

    .line 50
    mul-float v9, v9, v8

    .line 51
    .line 52
    add-float/2addr v7, v9

    .line 53
    add-int/lit8 v9, v6, -0x1

    .line 54
    .line 55
    neg-int v9, v9

    .line 56
    int-to-float v9, v9

    .line 57
    mul-float v9, v9, v11

    .line 58
    .line 59
    mul-float v9, v9, v8

    .line 60
    .line 61
    sub-float v10, v11, v5

    .line 62
    .line 63
    div-float/2addr v10, v11

    .line 64
    sub-int/2addr v6, v12

    .line 65
    int-to-float v6, v6

    .line 66
    mul-float v10, v10, v6

    .line 67
    .line 68
    mul-float v10, v10, v8

    .line 69
    .line 70
    add-float/2addr v9, v10

    .line 71
    sub-float v6, v2, v4

    .line 72
    .line 73
    sub-float v8, v11, v5

    .line 74
    .line 75
    mul-float v6, v6, v8

    .line 76
    .line 77
    div-float/2addr v6, v11

    .line 78
    add-float/2addr v4, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    add-int/lit8 v7, v6, -0x1

    .line 81
    .line 82
    neg-int v7, v7

    .line 83
    int-to-float v7, v7

    .line 84
    mul-float v7, v7, v11

    .line 85
    .line 86
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 87
    .line 88
    mul-float v7, v7, v9

    .line 89
    .line 90
    sub-float/2addr v8, v5

    .line 91
    div-float/2addr v8, v11

    .line 92
    add-int/lit8 v10, v6, -0x1

    .line 93
    .line 94
    int-to-float v10, v10

    .line 95
    mul-float v8, v8, v10

    .line 96
    .line 97
    mul-float v8, v8, v9

    .line 98
    .line 99
    add-float/2addr v7, v8

    .line 100
    sub-int/2addr v6, v12

    .line 101
    neg-int v6, v6

    .line 102
    int-to-float v6, v6

    .line 103
    mul-float v6, v6, v11

    .line 104
    .line 105
    mul-float v9, v9, v6

    .line 106
    .line 107
    :goto_0
    mul-float v2, v2, v5

    .line 108
    .line 109
    :goto_1
    move v3, v4

    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :cond_1
    add-int/lit8 v7, v6, -0x1

    .line 113
    .line 114
    if-ne v5, v7, :cond_3

    .line 115
    .line 116
    iget-boolean v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 117
    .line 118
    if-eqz v7, :cond_3

    .line 119
    .line 120
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 121
    .line 122
    float-to-double v13, v5

    .line 123
    cmpl-double v7, v13, v9

    .line 124
    .line 125
    if-ltz v7, :cond_2

    .line 126
    .line 127
    sub-float v7, v2, v4

    .line 128
    .line 129
    const/high16 v9, -0x41000000    # -0.5f

    .line 130
    .line 131
    add-float/2addr v9, v5

    .line 132
    mul-float v7, v7, v9

    .line 133
    .line 134
    div-float/2addr v7, v11

    .line 135
    add-float/2addr v4, v7

    .line 136
    add-int/lit8 v7, v6, -0x1

    .line 137
    .line 138
    neg-int v7, v7

    .line 139
    int-to-float v7, v7

    .line 140
    mul-float v7, v7, v11

    .line 141
    .line 142
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 143
    .line 144
    mul-float v7, v7, v9

    .line 145
    .line 146
    add-int/lit8 v10, v6, -0x1

    .line 147
    .line 148
    neg-int v10, v10

    .line 149
    int-to-float v10, v10

    .line 150
    mul-float v10, v10, v11

    .line 151
    .line 152
    mul-float v10, v10, v9

    .line 153
    .line 154
    sub-float v13, v8, v5

    .line 155
    .line 156
    div-float/2addr v13, v11

    .line 157
    sub-int/2addr v6, v12

    .line 158
    int-to-float v6, v6

    .line 159
    mul-float v13, v13, v6

    .line 160
    .line 161
    mul-float v13, v13, v9

    .line 162
    .line 163
    add-float/2addr v10, v13

    .line 164
    :goto_2
    move v9, v7

    .line 165
    move v7, v10

    .line 166
    goto :goto_3

    .line 167
    :cond_2
    add-int/lit8 v7, v6, -0x1

    .line 168
    .line 169
    neg-int v7, v7

    .line 170
    int-to-float v7, v7

    .line 171
    mul-float v7, v7, v11

    .line 172
    .line 173
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 174
    .line 175
    mul-float v7, v7, v9

    .line 176
    .line 177
    sub-float v10, v11, v5

    .line 178
    .line 179
    div-float/2addr v10, v11

    .line 180
    add-int/lit8 v13, v6, -0x1

    .line 181
    .line 182
    int-to-float v13, v13

    .line 183
    mul-float v10, v10, v13

    .line 184
    .line 185
    mul-float v10, v10, v9

    .line 186
    .line 187
    add-float/2addr v7, v10

    .line 188
    add-int/lit8 v10, v6, -0x1

    .line 189
    .line 190
    neg-int v10, v10

    .line 191
    int-to-float v10, v10

    .line 192
    mul-float v10, v10, v11

    .line 193
    .line 194
    mul-float v10, v10, v9

    .line 195
    .line 196
    sub-int/2addr v6, v12

    .line 197
    int-to-float v6, v6

    .line 198
    mul-float v6, v6, v9

    .line 199
    .line 200
    add-float/2addr v10, v6

    .line 201
    goto :goto_2

    .line 202
    :goto_3
    sub-float/2addr v8, v5

    .line 203
    mul-float v2, v2, v8

    .line 204
    .line 205
    move v3, v2

    .line 206
    move v2, v4

    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_3
    iget-boolean v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 210
    .line 211
    if-eqz v7, :cond_5

    .line 212
    .line 213
    iget v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 214
    .line 215
    int-to-float v13, v5

    .line 216
    add-float/2addr v13, v7

    .line 217
    iget v14, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 218
    .line 219
    mul-float v13, v13, v14

    .line 220
    .line 221
    iput v13, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 222
    .line 223
    move v15, v4

    .line 224
    float-to-double v3, v7

    .line 225
    cmpl-double v16, v3, v9

    .line 226
    .line 227
    if-ltz v16, :cond_4

    .line 228
    .line 229
    add-int/lit8 v3, v6, -0x1

    .line 230
    .line 231
    neg-int v3, v3

    .line 232
    int-to-float v3, v3

    .line 233
    mul-float v3, v3, v11

    .line 234
    .line 235
    mul-float v3, v3, v14

    .line 236
    .line 237
    sub-float v4, v7, v11

    .line 238
    .line 239
    div-float/2addr v4, v11

    .line 240
    int-to-float v9, v5

    .line 241
    add-float/2addr v4, v9

    .line 242
    mul-float v4, v4, v14

    .line 243
    .line 244
    add-float/2addr v3, v4

    .line 245
    sub-int/2addr v6, v12

    .line 246
    neg-int v4, v6

    .line 247
    int-to-float v4, v4

    .line 248
    mul-float v4, v4, v11

    .line 249
    .line 250
    mul-float v4, v4, v14

    .line 251
    .line 252
    add-int/2addr v5, v12

    .line 253
    int-to-float v5, v5

    .line 254
    mul-float v5, v5, v14

    .line 255
    .line 256
    add-float/2addr v4, v5

    .line 257
    sub-float v5, v2, v15

    .line 258
    .line 259
    sub-float v6, v7, v11

    .line 260
    .line 261
    mul-float v5, v5, v6

    .line 262
    .line 263
    div-float/2addr v5, v11

    .line 264
    add-float/2addr v5, v15

    .line 265
    move v9, v3

    .line 266
    move v3, v4

    .line 267
    move v4, v5

    .line 268
    goto :goto_4

    .line 269
    :cond_4
    add-int/lit8 v3, v6, -0x1

    .line 270
    .line 271
    neg-int v3, v3

    .line 272
    int-to-float v3, v3

    .line 273
    mul-float v3, v3, v11

    .line 274
    .line 275
    mul-float v3, v3, v14

    .line 276
    .line 277
    div-float v4, v7, v11

    .line 278
    .line 279
    int-to-float v9, v5

    .line 280
    add-float/2addr v4, v9

    .line 281
    mul-float v4, v4, v14

    .line 282
    .line 283
    add-float/2addr v3, v4

    .line 284
    sub-int/2addr v6, v12

    .line 285
    neg-int v4, v6

    .line 286
    int-to-float v4, v4

    .line 287
    mul-float v4, v4, v11

    .line 288
    .line 289
    mul-float v4, v4, v14

    .line 290
    .line 291
    int-to-float v5, v5

    .line 292
    mul-float v5, v5, v14

    .line 293
    .line 294
    add-float/2addr v4, v5

    .line 295
    move v9, v4

    .line 296
    move v4, v15

    .line 297
    :goto_4
    sub-float/2addr v8, v7

    .line 298
    mul-float v2, v2, v8

    .line 299
    .line 300
    move v7, v3

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_5
    move v15, v4

    .line 304
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 305
    .line 306
    int-to-float v4, v5

    .line 307
    add-float/2addr v4, v3

    .line 308
    iget v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 309
    .line 310
    mul-float v4, v4, v7

    .line 311
    .line 312
    iput v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 313
    .line 314
    float-to-double v13, v3

    .line 315
    cmpg-double v8, v13, v9

    .line 316
    .line 317
    if-gtz v8, :cond_6

    .line 318
    .line 319
    add-int/lit8 v8, v6, -0x1

    .line 320
    .line 321
    neg-int v8, v8

    .line 322
    int-to-float v8, v8

    .line 323
    mul-float v8, v8, v11

    .line 324
    .line 325
    mul-float v8, v8, v7

    .line 326
    .line 327
    int-to-float v9, v5

    .line 328
    mul-float v9, v9, v7

    .line 329
    .line 330
    add-float/2addr v8, v9

    .line 331
    sub-int/2addr v6, v12

    .line 332
    neg-int v6, v6

    .line 333
    int-to-float v6, v6

    .line 334
    mul-float v6, v6, v11

    .line 335
    .line 336
    mul-float v6, v6, v7

    .line 337
    .line 338
    div-float v9, v3, v11

    .line 339
    .line 340
    int-to-float v5, v5

    .line 341
    add-float/2addr v9, v5

    .line 342
    mul-float v9, v9, v7

    .line 343
    .line 344
    add-float/2addr v6, v9

    .line 345
    sub-float v5, v2, v15

    .line 346
    .line 347
    sub-float v7, v11, v3

    .line 348
    .line 349
    mul-float v5, v5, v7

    .line 350
    .line 351
    div-float/2addr v5, v11

    .line 352
    add-float/2addr v5, v15

    .line 353
    move v15, v5

    .line 354
    :goto_5
    move v7, v6

    .line 355
    move v9, v8

    .line 356
    goto :goto_6

    .line 357
    :cond_6
    add-int/lit8 v8, v6, -0x1

    .line 358
    .line 359
    neg-int v8, v8

    .line 360
    int-to-float v8, v8

    .line 361
    mul-float v8, v8, v11

    .line 362
    .line 363
    mul-float v8, v8, v7

    .line 364
    .line 365
    sub-float v9, v3, v11

    .line 366
    .line 367
    div-float/2addr v9, v11

    .line 368
    int-to-float v10, v5

    .line 369
    add-float/2addr v9, v10

    .line 370
    mul-float v9, v9, v7

    .line 371
    .line 372
    add-float/2addr v8, v9

    .line 373
    sub-int/2addr v6, v12

    .line 374
    neg-int v6, v6

    .line 375
    int-to-float v6, v6

    .line 376
    mul-float v6, v6, v11

    .line 377
    .line 378
    mul-float v6, v6, v7

    .line 379
    .line 380
    add-int/2addr v5, v12

    .line 381
    int-to-float v5, v5

    .line 382
    mul-float v5, v5, v7

    .line 383
    .line 384
    add-float/2addr v6, v5

    .line 385
    goto :goto_5

    .line 386
    :goto_6
    mul-float v2, v2, v3

    .line 387
    .line 388
    move v3, v2

    .line 389
    move v2, v15

    .line 390
    :goto_7
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 391
    .line 392
    const/4 v6, 0x0

    .line 393
    invoke-virtual {v1, v7, v6, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 394
    .line 395
    .line 396
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 397
    .line 398
    invoke-virtual {v1, v9, v6, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 399
    .line 400
    .line 401
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    aget-object v8, v5, v6

    .line 405
    .line 406
    iput v9, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 407
    .line 408
    neg-float v10, v2

    .line 409
    iput v10, v8, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 410
    .line 411
    const/4 v8, 0x5

    .line 412
    aget-object v11, v5, v8

    .line 413
    .line 414
    iput v9, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 415
    .line 416
    iput v2, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 417
    .line 418
    aget-object v11, v5, v12

    .line 419
    .line 420
    add-float/2addr v9, v7

    .line 421
    const/high16 v4, 0x40000000    # 2.0f

    .line 422
    .line 423
    div-float/2addr v9, v4

    .line 424
    iput v9, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 425
    .line 426
    div-float/2addr v10, v4

    .line 427
    iput v10, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 428
    .line 429
    const/4 v10, 0x4

    .line 430
    aget-object v11, v5, v10

    .line 431
    .line 432
    iput v9, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 433
    .line 434
    div-float/2addr v2, v4

    .line 435
    iput v2, v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 436
    .line 437
    const/4 v2, 0x2

    .line 438
    aget-object v4, v5, v2

    .line 439
    .line 440
    iput v7, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 441
    .line 442
    neg-float v9, v3

    .line 443
    iput v9, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 444
    .line 445
    const/4 v4, 0x3

    .line 446
    aget-object v5, v5, v4

    .line 447
    .line 448
    iput v7, v5, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 449
    .line 450
    iput v3, v5, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 451
    .line 452
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 453
    .line 454
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 455
    .line 456
    .line 457
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 458
    .line 459
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 460
    .line 461
    aget-object v5, v5, v6

    .line 462
    .line 463
    iget v6, v5, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 464
    .line 465
    iget v5, v5, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 466
    .line 467
    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 468
    .line 469
    .line 470
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 471
    .line 472
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 473
    .line 474
    aget-object v6, v5, v12

    .line 475
    .line 476
    iget v7, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 477
    .line 478
    iget v6, v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 479
    .line 480
    aget-object v2, v5, v2

    .line 481
    .line 482
    iget v5, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 483
    .line 484
    iget v2, v2, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 485
    .line 486
    invoke-virtual {v3, v7, v6, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 487
    .line 488
    .line 489
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 490
    .line 491
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 492
    .line 493
    aget-object v3, v3, v4

    .line 494
    .line 495
    iget v4, v3, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 496
    .line 497
    iget v3, v3, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 498
    .line 499
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    .line 501
    .line 502
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 503
    .line 504
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 505
    .line 506
    aget-object v4, v3, v10

    .line 507
    .line 508
    iget v5, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 509
    .line 510
    iget v4, v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 511
    .line 512
    aget-object v3, v3, v8

    .line 513
    .line 514
    iget v6, v3, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->a:F

    .line 515
    .line 516
    iget v3, v3, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;->b:F

    .line 517
    .line 518
    invoke-virtual {v2, v5, v4, v6, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 519
    .line 520
    .line 521
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 522
    .line 523
    iget-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 524
    .line 525
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 526
    .line 527
    .line 528
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->a:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 23
    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget v1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->i:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 43
    .line 44
    const/high16 v2, 0x40400000    # 3.0f

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 50
    .line 51
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->j:I

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public g(FIZ)V
    .locals 4

    .line 1
    iput p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 2
    .line 3
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->o:F

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 6
    .line 7
    iget v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->k:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    if-eq v0, v2, :cond_3

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 22
    .line 23
    add-int/lit8 v2, v0, -0x1

    .line 24
    .line 25
    if-ne p2, v2, :cond_1

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    iget v2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 30
    .line 31
    mul-float v2, v2, p1

    .line 32
    .line 33
    iput v2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 34
    .line 35
    :cond_1
    sub-int/2addr v0, v1

    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    iget p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 41
    .line 42
    mul-float p1, p1, p2

    .line 43
    .line 44
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 48
    .line 49
    mul-float p1, p1, p2

    .line 50
    .line 51
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 55
    .line 56
    add-int/lit8 v2, v0, -0x1

    .line 57
    .line 58
    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    .line 60
    if-ne p2, v2, :cond_4

    .line 61
    .line 62
    if-nez p3, :cond_4

    .line 63
    .line 64
    sub-float/2addr v3, p1

    .line 65
    sub-int/2addr v0, v1

    .line 66
    int-to-float p1, v0

    .line 67
    mul-float v3, v3, p1

    .line 68
    .line 69
    iget p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 70
    .line 71
    mul-float v3, v3, p1

    .line 72
    .line 73
    iput v3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    add-int/lit8 v2, v0, -0x1

    .line 77
    .line 78
    if-ne p2, v2, :cond_5

    .line 79
    .line 80
    if-eqz p3, :cond_5

    .line 81
    .line 82
    sub-float/2addr v3, p1

    .line 83
    sub-int/2addr v0, v1

    .line 84
    int-to-float p1, v0

    .line 85
    mul-float v3, v3, p1

    .line 86
    .line 87
    iget p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 88
    .line 89
    mul-float v3, v3, p1

    .line 90
    .line 91
    iput v3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    int-to-float p2, p2

    .line 95
    add-float/2addr p1, p2

    .line 96
    iget p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 97
    .line 98
    mul-float p1, p1, p2

    .line 99
    .line 100
    iput p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final h(IIFI)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->p:Z

    .line 7
    .line 8
    div-int/lit8 p1, p1, 0xa

    .line 9
    .line 10
    div-int/lit8 v1, p4, 0xa

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-le p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-ge p1, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_2
    :goto_0
    iget p1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 22
    .line 23
    if-lez p1, :cond_3

    .line 24
    .line 25
    iget-boolean v1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    rem-int/2addr p2, p1

    .line 30
    invoke-virtual {p0, p3, p2, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g(FIZ)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    if-lez p1, :cond_6

    .line 35
    .line 36
    iget-boolean v1, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 37
    .line 38
    if-eqz v1, :cond_6

    .line 39
    .line 40
    if-nez p2, :cond_4

    .line 41
    .line 42
    add-int/lit8 v2, p1, -0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    add-int/2addr p1, v3

    .line 46
    if-ne p2, p1, :cond_5

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    add-int/lit8 v2, p2, -0x1

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, p3, v2, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g(FIZ)V

    .line 52
    .line 53
    .line 54
    :cond_6
    :goto_2
    return p4
.end method

.method public final i(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    rem-int/2addr p1, v0

    .line 17
    invoke-virtual {p0, v1, p1, v2}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g(FIZ)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-lez v0, :cond_4

    .line 22
    .line 23
    iget-boolean v3, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0, v1, v0, v2}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g(FIZ)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_1
    return-void
.end method

.method public j(Lteam/opay/business/widget/looper/BaseRecycleView;I)Lteam/opay/business/widget/looper/ViewPagerIndicator;
    .locals 0

    .line 1
    iput p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 5
    .line 6
    new-instance p2, Lteam/opay/business/widget/looper/ViewPagerIndicator$a;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$a;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lteam/opay/business/widget/looper/BaseRecycleView;->setOnPageChangeListener(Lca7;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public k(Lteam/opay/pay/widget/LoopViewPager;I)Lteam/opay/business/widget/looper/ViewPagerIndicator;
    .locals 0

    .line 1
    iput p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->q:Z

    .line 5
    .line 6
    new-instance p2, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$b;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lteam/opay/pay/widget/LoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final l(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    sget-object v6, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator:[I

    .line 9
    .line 10
    move-object/from16 v7, p1

    .line 11
    .line 12
    move-object/from16 v8, p2

    .line 13
    .line 14
    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_selected_color:I

    .line 19
    .line 20
    const/4 v8, -0x1

    .line 21
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->i:I

    .line 26
    .line 27
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_default_color:I

    .line 28
    .line 29
    const v8, -0x323233

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->j:I

    .line 37
    .line 38
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_radius:I

    .line 39
    .line 40
    const/high16 v8, 0x41a00000    # 20.0f

    .line 41
    .line 42
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 47
    .line 48
    sget v8, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_radius_selected:I

    .line 49
    .line 50
    invoke-virtual {v6, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->f:F

    .line 55
    .line 56
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_length:I

    .line 57
    .line 58
    const/high16 v8, 0x40000000    # 2.0f

    .line 59
    .line 60
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 61
    .line 62
    mul-float v9, v9, v8

    .line 63
    .line 64
    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g:F

    .line 69
    .line 70
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_distance:I

    .line 71
    .line 72
    const/high16 v8, 0x40400000    # 3.0f

    .line 73
    .line 74
    iget v9, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 75
    .line 76
    mul-float v9, v9, v8

    .line 77
    .line 78
    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 83
    .line 84
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_distanceType:I

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->l:I

    .line 92
    .line 93
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_indicatorType:I

    .line 94
    .line 95
    const/4 v9, 0x1

    .line 96
    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->k:I

    .line 101
    .line 102
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_num:I

    .line 103
    .line 104
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    iput v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 109
    .line 110
    sget v7, Lteam/opay/business/widget/R$styleable;->ViewPagerIndicator_vpi_animation:I

    .line 111
    .line 112
    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    iput-boolean v7, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->r:Z

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    .line 120
    .line 121
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->k:I

    .line 122
    .line 123
    if-eq v6, v5, :cond_1

    .line 124
    .line 125
    if-eq v6, v4, :cond_0

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_0
    new-instance v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 130
    .line 131
    invoke-direct {v6, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 132
    .line 133
    .line 134
    new-instance v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 135
    .line 136
    invoke-direct {v7, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 137
    .line 138
    .line 139
    new-instance v10, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 140
    .line 141
    invoke-direct {v10, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 142
    .line 143
    .line 144
    new-instance v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 145
    .line 146
    invoke-direct {v11, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 147
    .line 148
    .line 149
    new-instance v12, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 150
    .line 151
    invoke-direct {v12, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 152
    .line 153
    .line 154
    new-instance v13, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 155
    .line 156
    invoke-direct {v13, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 157
    .line 158
    .line 159
    new-array v3, v3, [Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 160
    .line 161
    aput-object v6, v3, v8

    .line 162
    .line 163
    aput-object v7, v3, v9

    .line 164
    .line 165
    aput-object v10, v3, v2

    .line 166
    .line 167
    aput-object v11, v3, v5

    .line 168
    .line 169
    aput-object v12, v3, v4

    .line 170
    .line 171
    aput-object v13, v3, v1

    .line 172
    .line 173
    iput-object v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->s:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_1
    new-instance v6, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 177
    .line 178
    invoke-direct {v6, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 179
    .line 180
    .line 181
    new-instance v7, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 182
    .line 183
    invoke-direct {v7, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 184
    .line 185
    .line 186
    new-instance v10, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 187
    .line 188
    invoke-direct {v10, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 189
    .line 190
    .line 191
    new-instance v11, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 192
    .line 193
    invoke-direct {v11, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 194
    .line 195
    .line 196
    new-instance v12, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 197
    .line 198
    invoke-direct {v12, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 199
    .line 200
    .line 201
    new-instance v13, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 202
    .line 203
    invoke-direct {v13, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 204
    .line 205
    .line 206
    new-instance v14, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 207
    .line 208
    invoke-direct {v14, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 209
    .line 210
    .line 211
    new-instance v15, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 212
    .line 213
    invoke-direct {v15, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 214
    .line 215
    .line 216
    new-instance v3, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 217
    .line 218
    invoke-direct {v3, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 219
    .line 220
    .line 221
    new-instance v1, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 222
    .line 223
    invoke-direct {v1, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 224
    .line 225
    .line 226
    new-instance v4, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 227
    .line 228
    invoke-direct {v4, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 232
    .line 233
    invoke-direct {v5, v0}, Lteam/opay/business/widget/looper/ViewPagerIndicator$d;-><init>(Lteam/opay/business/widget/looper/ViewPagerIndicator;)V

    .line 234
    .line 235
    .line 236
    const/16 v2, 0xc

    .line 237
    .line 238
    new-array v2, v2, [Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 239
    .line 240
    aput-object v6, v2, v8

    .line 241
    .line 242
    aput-object v7, v2, v9

    .line 243
    .line 244
    const/4 v6, 0x2

    .line 245
    aput-object v10, v2, v6

    .line 246
    .line 247
    const/4 v6, 0x3

    .line 248
    aput-object v11, v2, v6

    .line 249
    .line 250
    const/4 v6, 0x4

    .line 251
    aput-object v12, v2, v6

    .line 252
    .line 253
    const/4 v6, 0x5

    .line 254
    aput-object v13, v2, v6

    .line 255
    .line 256
    const/4 v6, 0x6

    .line 257
    aput-object v14, v2, v6

    .line 258
    .line 259
    const/4 v6, 0x7

    .line 260
    aput-object v15, v2, v6

    .line 261
    .line 262
    const/16 v6, 0x8

    .line 263
    .line 264
    aput-object v3, v2, v6

    .line 265
    .line 266
    const/16 v3, 0x9

    .line 267
    .line 268
    aput-object v1, v2, v3

    .line 269
    .line 270
    const/16 v1, 0xa

    .line 271
    .line 272
    aput-object v4, v2, v1

    .line 273
    .line 274
    const/16 v1, 0xb

    .line 275
    .line 276
    aput-object v5, v2, v1

    .line 277
    .line 278
    iput-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->t:[Lteam/opay/business/widget/looper/ViewPagerIndicator$d;

    .line 279
    .line 280
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    div-int/lit8 v3, v1, 0x2

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    const/4 v4, 0x2

    .line 24
    div-int/2addr v2, v4

    .line 25
    int-to-float v2, v2

    .line 26
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->f()V

    .line 30
    .line 31
    .line 32
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->l:I

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->k:I

    .line 41
    .line 42
    if-ne v2, v4, :cond_2

    .line 43
    .line 44
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 45
    .line 46
    add-int/2addr v2, v8

    .line 47
    div-int/2addr v1, v2

    .line 48
    int-to-float v1, v1

    .line 49
    iput v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 53
    .line 54
    div-int/2addr v1, v2

    .line 55
    int-to-float v1, v1

    .line 56
    iput v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    .line 60
    .line 61
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 62
    .line 63
    mul-float v2, v2, v1

    .line 64
    .line 65
    iput v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 66
    .line 67
    :goto_0
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->k:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    const/high16 v9, 0x40000000    # 2.0f

    .line 71
    .line 72
    const/high16 v10, 0x3f000000    # 0.5f

    .line 73
    .line 74
    if-eqz v1, :cond_11

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    if-eq v1, v8, :cond_f

    .line 78
    .line 79
    const/4 v5, 0x3

    .line 80
    if-eq v1, v4, :cond_a

    .line 81
    .line 82
    if-eq v1, v5, :cond_8

    .line 83
    .line 84
    const/4 v4, 0x4

    .line 85
    if-eq v1, v4, :cond_6

    .line 86
    .line 87
    const/4 v4, 0x5

    .line 88
    if-eq v1, v4, :cond_4

    .line 89
    .line 90
    goto/16 :goto_9

    .line 91
    .line 92
    :cond_4
    :goto_1
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 93
    .line 94
    if-ge v2, v1, :cond_5

    .line 95
    .line 96
    add-int/lit8 v1, v1, -0x1

    .line 97
    .line 98
    neg-int v1, v1

    .line 99
    int-to-float v1, v1

    .line 100
    mul-float v1, v1, v10

    .line 101
    .line 102
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 103
    .line 104
    mul-float v1, v1, v4

    .line 105
    .line 106
    int-to-float v5, v2

    .line 107
    mul-float v5, v5, v4

    .line 108
    .line 109
    add-float/2addr v1, v5

    .line 110
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 111
    .line 112
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 113
    .line 114
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    add-int/lit8 v2, v1, -0x1

    .line 121
    .line 122
    neg-int v2, v2

    .line 123
    int-to-float v2, v2

    .line 124
    mul-float v2, v2, v10

    .line 125
    .line 126
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 127
    .line 128
    mul-float v2, v2, v3

    .line 129
    .line 130
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 131
    .line 132
    add-float/2addr v2, v4

    .line 133
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 134
    .line 135
    add-float/2addr v2, v4

    .line 136
    sub-int/2addr v1, v8

    .line 137
    neg-int v1, v1

    .line 138
    int-to-float v1, v1

    .line 139
    mul-float v1, v1, v10

    .line 140
    .line 141
    mul-float v1, v1, v3

    .line 142
    .line 143
    sub-float/2addr v1, v4

    .line 144
    neg-float v3, v4

    .line 145
    new-instance v5, Landroid/graphics/RectF;

    .line 146
    .line 147
    invoke-direct {v5, v1, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .line 149
    .line 150
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 151
    .line 152
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-virtual {v7, v5, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_6
    :goto_2
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 160
    .line 161
    if-ge v2, v1, :cond_7

    .line 162
    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 164
    .line 165
    neg-int v1, v1

    .line 166
    int-to-float v1, v1

    .line 167
    mul-float v1, v1, v10

    .line 168
    .line 169
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 170
    .line 171
    mul-float v1, v1, v4

    .line 172
    .line 173
    int-to-float v5, v2

    .line 174
    mul-float v5, v5, v4

    .line 175
    .line 176
    add-float/2addr v1, v5

    .line 177
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 178
    .line 179
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 180
    .line 181
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e(Landroid/graphics/Canvas;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_8
    :goto_3
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 193
    .line 194
    if-ge v2, v1, :cond_9

    .line 195
    .line 196
    add-int/lit8 v1, v1, -0x1

    .line 197
    .line 198
    neg-int v1, v1

    .line 199
    int-to-float v1, v1

    .line 200
    mul-float v1, v1, v10

    .line 201
    .line 202
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 203
    .line 204
    mul-float v1, v1, v4

    .line 205
    .line 206
    int-to-float v5, v2

    .line 207
    mul-float v5, v5, v4

    .line 208
    .line 209
    add-float/2addr v1, v5

    .line 210
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 211
    .line 212
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 213
    .line 214
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d(Landroid/graphics/Canvas;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_9

    .line 224
    .line 225
    :cond_a
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 226
    .line 227
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 228
    .line 229
    add-int/lit8 v6, v2, -0x1

    .line 230
    .line 231
    if-ne v1, v6, :cond_c

    .line 232
    .line 233
    neg-int v1, v2

    .line 234
    int-to-float v1, v1

    .line 235
    mul-float v1, v1, v10

    .line 236
    .line 237
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 238
    .line 239
    mul-float v1, v1, v2

    .line 240
    .line 241
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 242
    .line 243
    sub-float/2addr v1, v2

    .line 244
    mul-float v4, v2, v9

    .line 245
    .line 246
    add-float/2addr v4, v1

    .line 247
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 248
    .line 249
    add-float/2addr v4, v5

    .line 250
    neg-float v5, v2

    .line 251
    new-instance v6, Landroid/graphics/RectF;

    .line 252
    .line 253
    invoke-direct {v6, v1, v5, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 254
    .line 255
    .line 256
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 257
    .line 258
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 259
    .line 260
    invoke-virtual {v7, v6, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 261
    .line 262
    .line 263
    :goto_4
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 264
    .line 265
    if-ge v8, v1, :cond_b

    .line 266
    .line 267
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 268
    .line 269
    sub-float v2, v4, v1

    .line 270
    .line 271
    int-to-float v5, v8

    .line 272
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 273
    .line 274
    mul-float v5, v5, v6

    .line 275
    .line 276
    add-float/2addr v2, v5

    .line 277
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 278
    .line 279
    invoke-virtual {v7, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 280
    .line 281
    .line 282
    add-int/lit8 v8, v8, 0x1

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_b
    neg-int v2, v1

    .line 286
    int-to-float v2, v2

    .line 287
    mul-float v2, v2, v10

    .line 288
    .line 289
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 290
    .line 291
    mul-float v2, v2, v3

    .line 292
    .line 293
    int-to-float v1, v1

    .line 294
    mul-float v1, v1, v3

    .line 295
    .line 296
    add-float/2addr v2, v1

    .line 297
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 298
    .line 299
    add-float/2addr v2, v1

    .line 300
    mul-float v9, v9, v1

    .line 301
    .line 302
    sub-float v4, v2, v9

    .line 303
    .line 304
    sub-float/2addr v4, v3

    .line 305
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 306
    .line 307
    add-float/2addr v4, v3

    .line 308
    neg-float v3, v1

    .line 309
    new-instance v5, Landroid/graphics/RectF;

    .line 310
    .line 311
    invoke-direct {v5, v4, v3, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .line 313
    .line 314
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 315
    .line 316
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 317
    .line 318
    invoke-virtual {v7, v5, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_9

    .line 322
    .line 323
    :cond_c
    neg-int v2, v2

    .line 324
    int-to-float v2, v2

    .line 325
    mul-float v2, v2, v10

    .line 326
    .line 327
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 328
    .line 329
    mul-float v2, v2, v6

    .line 330
    .line 331
    int-to-float v1, v1

    .line 332
    mul-float v1, v1, v6

    .line 333
    .line 334
    add-float/2addr v2, v1

    .line 335
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 336
    .line 337
    sub-float/2addr v2, v1

    .line 338
    mul-float v11, v1, v9

    .line 339
    .line 340
    add-float/2addr v11, v2

    .line 341
    add-float/2addr v11, v6

    .line 342
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 343
    .line 344
    sub-float/2addr v11, v6

    .line 345
    neg-float v6, v1

    .line 346
    new-instance v12, Landroid/graphics/RectF;

    .line 347
    .line 348
    invoke-direct {v12, v2, v6, v11, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 349
    .line 350
    .line 351
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 352
    .line 353
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 354
    .line 355
    invoke-virtual {v7, v12, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 356
    .line 357
    .line 358
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 359
    .line 360
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 361
    .line 362
    add-int/lit8 v6, v2, -0x1

    .line 363
    .line 364
    if-ge v1, v6, :cond_d

    .line 365
    .line 366
    neg-int v2, v2

    .line 367
    int-to-float v2, v2

    .line 368
    mul-float v2, v2, v10

    .line 369
    .line 370
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 371
    .line 372
    mul-float v2, v2, v6

    .line 373
    .line 374
    add-int/2addr v1, v4

    .line 375
    int-to-float v1, v1

    .line 376
    mul-float v1, v1, v6

    .line 377
    .line 378
    add-float/2addr v2, v1

    .line 379
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 380
    .line 381
    add-float/2addr v2, v1

    .line 382
    mul-float v9, v9, v1

    .line 383
    .line 384
    sub-float v4, v2, v9

    .line 385
    .line 386
    iget v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 387
    .line 388
    sub-float/2addr v4, v6

    .line 389
    neg-float v6, v1

    .line 390
    new-instance v9, Landroid/graphics/RectF;

    .line 391
    .line 392
    invoke-direct {v9, v4, v6, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 393
    .line 394
    .line 395
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 396
    .line 397
    iget-object v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 398
    .line 399
    invoke-virtual {v7, v9, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 400
    .line 401
    .line 402
    :cond_d
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 403
    .line 404
    add-int/2addr v1, v5

    .line 405
    :goto_5
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 406
    .line 407
    if-gt v1, v2, :cond_e

    .line 408
    .line 409
    neg-int v2, v2

    .line 410
    int-to-float v2, v2

    .line 411
    mul-float v2, v2, v10

    .line 412
    .line 413
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 414
    .line 415
    mul-float v2, v2, v4

    .line 416
    .line 417
    int-to-float v5, v1

    .line 418
    mul-float v5, v5, v4

    .line 419
    .line 420
    add-float/2addr v2, v5

    .line 421
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 422
    .line 423
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 424
    .line 425
    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 426
    .line 427
    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_e
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->n:I

    .line 432
    .line 433
    sub-int/2addr v1, v8

    .line 434
    :goto_6
    if-ltz v1, :cond_13

    .line 435
    .line 436
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 437
    .line 438
    neg-int v2, v2

    .line 439
    int-to-float v2, v2

    .line 440
    mul-float v2, v2, v10

    .line 441
    .line 442
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 443
    .line 444
    mul-float v2, v2, v4

    .line 445
    .line 446
    int-to-float v5, v1

    .line 447
    mul-float v5, v5, v4

    .line 448
    .line 449
    add-float/2addr v2, v5

    .line 450
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 451
    .line 452
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 453
    .line 454
    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v1, v1, -0x1

    .line 458
    .line 459
    goto :goto_6

    .line 460
    :cond_f
    :goto_7
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 461
    .line 462
    if-ge v2, v1, :cond_10

    .line 463
    .line 464
    add-int/lit8 v1, v1, -0x1

    .line 465
    .line 466
    neg-int v1, v1

    .line 467
    int-to-float v1, v1

    .line 468
    mul-float v1, v1, v10

    .line 469
    .line 470
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 471
    .line 472
    mul-float v1, v1, v4

    .line 473
    .line 474
    int-to-float v5, v2

    .line 475
    mul-float v5, v5, v4

    .line 476
    .line 477
    add-float/2addr v1, v5

    .line 478
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 479
    .line 480
    iget-object v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 481
    .line 482
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 483
    .line 484
    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 486
    .line 487
    goto :goto_7

    .line 488
    :cond_10
    sub-int/2addr v1, v8

    .line 489
    neg-int v1, v1

    .line 490
    int-to-float v1, v1

    .line 491
    mul-float v1, v1, v10

    .line 492
    .line 493
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 494
    .line 495
    mul-float v1, v1, v2

    .line 496
    .line 497
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 498
    .line 499
    add-float/2addr v1, v2

    .line 500
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->f:F

    .line 501
    .line 502
    iget-object v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 503
    .line 504
    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 505
    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_11
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 509
    .line 510
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 511
    .line 512
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 513
    .line 514
    .line 515
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 516
    .line 517
    add-int/lit8 v3, v1, -0x1

    .line 518
    .line 519
    neg-int v3, v3

    .line 520
    int-to-float v3, v3

    .line 521
    mul-float v3, v3, v10

    .line 522
    .line 523
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 524
    .line 525
    mul-float v3, v3, v4

    .line 526
    .line 527
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g:F

    .line 528
    .line 529
    div-float v6, v5, v9

    .line 530
    .line 531
    sub-float v11, v3, v6

    .line 532
    .line 533
    sub-int/2addr v1, v8

    .line 534
    neg-int v1, v1

    .line 535
    int-to-float v1, v1

    .line 536
    mul-float v1, v1, v10

    .line 537
    .line 538
    mul-float v1, v1, v4

    .line 539
    .line 540
    div-float/2addr v5, v9

    .line 541
    add-float v12, v1, v5

    .line 542
    .line 543
    const/4 v13, 0x0

    .line 544
    :goto_8
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 545
    .line 546
    if-ge v13, v1, :cond_12

    .line 547
    .line 548
    int-to-float v1, v13

    .line 549
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 550
    .line 551
    mul-float v3, v1, v2

    .line 552
    .line 553
    add-float/2addr v3, v11

    .line 554
    mul-float v1, v1, v2

    .line 555
    .line 556
    add-float v4, v12, v1

    .line 557
    .line 558
    const/4 v5, 0x0

    .line 559
    iget-object v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->c:Landroid/graphics/Paint;

    .line 560
    .line 561
    const/4 v14, 0x0

    .line 562
    move-object/from16 v1, p1

    .line 563
    .line 564
    move v2, v3

    .line 565
    move v3, v14

    .line 566
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 567
    .line 568
    .line 569
    add-int/lit8 v13, v13, 0x1

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_12
    iget-object v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 573
    .line 574
    iget v2, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->e:F

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 577
    .line 578
    .line 579
    iget v1, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->d:I

    .line 580
    .line 581
    add-int/lit8 v2, v1, -0x1

    .line 582
    .line 583
    neg-int v2, v2

    .line 584
    int-to-float v2, v2

    .line 585
    mul-float v2, v2, v10

    .line 586
    .line 587
    iget v3, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->m:F

    .line 588
    .line 589
    mul-float v2, v2, v3

    .line 590
    .line 591
    iget v4, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->g:F

    .line 592
    .line 593
    div-float v5, v4, v9

    .line 594
    .line 595
    sub-float/2addr v2, v5

    .line 596
    iget v5, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->h:F

    .line 597
    .line 598
    add-float/2addr v2, v5

    .line 599
    sub-int/2addr v1, v8

    .line 600
    neg-int v1, v1

    .line 601
    int-to-float v1, v1

    .line 602
    mul-float v1, v1, v10

    .line 603
    .line 604
    mul-float v1, v1, v3

    .line 605
    .line 606
    div-float/2addr v4, v9

    .line 607
    add-float/2addr v1, v4

    .line 608
    add-float v4, v1, v5

    .line 609
    .line 610
    const/4 v5, 0x0

    .line 611
    iget-object v6, v0, Lteam/opay/business/widget/looper/ViewPagerIndicator;->b:Landroid/graphics/Paint;

    .line 612
    .line 613
    const/4 v3, 0x0

    .line 614
    move-object/from16 v1, p1

    .line 615
    .line 616
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 617
    .line 618
    .line 619
    :cond_13
    :goto_9
    return-void
.end method
