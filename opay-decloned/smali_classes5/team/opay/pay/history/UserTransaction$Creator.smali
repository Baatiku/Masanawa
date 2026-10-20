.class public final Lteam/opay/pay/history/UserTransaction$Creator;
.super Ljava/lang/Object;
.source "Transaction.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/history/UserTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lteam/opay/pay/history/UserTransaction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lteam/opay/pay/history/UserTransaction;
    .locals 58

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    move-object v4, v2

    .line 19
    check-cast v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v8, 0x0

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    move-object v9, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lteam/opay/core/api/GraphQL$TransactionType;->valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$TransactionType;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v9, v2

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    move-object v13, v8

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$ServiceType;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v13, v2

    .line 80
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    move-object/from16 v16, v8

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lteam/opay/core/api/GraphQL$TransactionState;->valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$TransactionState;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object/from16 v16, v2

    .line 106
    .line 107
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_3

    .line 112
    .line 113
    move-object/from16 v17, v8

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Lteam/opay/core/api/GraphQL$TransactionState;->valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$TransactionState;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    move-object/from16 v17, v2

    .line 125
    .line 126
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const/16 v18, 0x0

    .line 131
    .line 132
    const/16 v19, 0x1

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    const/16 v20, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    const/16 v20, 0x0

    .line 140
    .line 141
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v21

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v22

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v23

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v24

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v25

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v26

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v27

    .line 169
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    move-object/from16 v28, v2

    .line 174
    .line 175
    check-cast v28, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 176
    .line 177
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    move-object/from16 v29, v2

    .line 182
    .line 183
    check-cast v29, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 184
    .line 185
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object/from16 v30, v2

    .line 190
    .line 191
    check-cast v30, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    const/16 v31, 0x1

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_5
    const/16 v31, 0x0

    .line 203
    .line 204
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    move-object/from16 v32, v2

    .line 209
    .line 210
    check-cast v32, Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    move-object/from16 v33, v2

    .line 217
    .line 218
    check-cast v33, Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 219
    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v34

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v35

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v36

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v37

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v38

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v39

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_6

    .line 249
    .line 250
    move-object/from16 v40, v8

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;->valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    move-object/from16 v40, v2

    .line 262
    .line 263
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object/from16 v41, v2

    .line 268
    .line 269
    check-cast v41, Lteam/opay/core/api/GraphQL$Template;

    .line 270
    .line 271
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    move-object/from16 v42, v2

    .line 276
    .line 277
    check-cast v42, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 278
    .line 279
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    move-object/from16 v43, v2

    .line 284
    .line 285
    check-cast v43, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 286
    .line 287
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    move-object/from16 v44, v2

    .line 292
    .line 293
    check-cast v44, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 294
    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v45

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    .line 300
    .line 301
    .line 302
    move-result v46

    .line 303
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    move-object/from16 v47, v2

    .line 308
    .line 309
    check-cast v47, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 310
    .line 311
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    move-object/from16 v48, v2

    .line 316
    .line 317
    check-cast v48, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 318
    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-nez v2, :cond_7

    .line 324
    .line 325
    move-object v2, v8

    .line 326
    goto :goto_7

    .line 327
    :cond_7
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    :goto_7
    move-object/from16 v49, v2

    .line 332
    .line 333
    check-cast v49, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 334
    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v50

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v51

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v52

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v53

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v54

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-nez v2, :cond_8

    .line 360
    .line 361
    move-object v1, v8

    .line 362
    goto :goto_8

    .line 363
    :cond_8
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    :goto_8
    check-cast v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v55

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-nez v2, :cond_9

    .line 378
    .line 379
    move-object/from16 v56, v8

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    move-object/from16 v56, v2

    .line 391
    .line 392
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-nez v2, :cond_b

    .line 397
    .line 398
    move-object/from16 v57, v1

    .line 399
    .line 400
    :cond_a
    move-object v0, v8

    .line 401
    goto :goto_b

    .line 402
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    new-instance v8, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v57, v1

    .line 412
    .line 413
    const/4 v1, 0x0

    .line 414
    :goto_a
    if-eq v1, v2, :cond_a

    .line 415
    .line 416
    move/from16 v18, v2

    .line 417
    .line 418
    sget-object v2, Lteam/opay/core/api/GraphQL$RevenueBreakdown;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 419
    .line 420
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    .line 429
    move/from16 v2, v18

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :goto_b
    new-instance v1, Lteam/opay/pay/history/UserTransaction;

    .line 433
    .line 434
    move-object v2, v1

    .line 435
    move-object v8, v9

    .line 436
    move-object v9, v10

    .line 437
    move-object v10, v11

    .line 438
    move-object v11, v12

    .line 439
    move-object v12, v13

    .line 440
    move-object v13, v14

    .line 441
    move v14, v15

    .line 442
    move-object/from16 v15, v16

    .line 443
    .line 444
    move-object/from16 v16, v17

    .line 445
    .line 446
    move/from16 v17, v20

    .line 447
    .line 448
    move-object/from16 v18, v21

    .line 449
    .line 450
    move-object/from16 v19, v22

    .line 451
    .line 452
    move-object/from16 v20, v23

    .line 453
    .line 454
    move-object/from16 v21, v24

    .line 455
    .line 456
    move-object/from16 v22, v25

    .line 457
    .line 458
    move-object/from16 v23, v26

    .line 459
    .line 460
    move-object/from16 v24, v27

    .line 461
    .line 462
    move-object/from16 v25, v28

    .line 463
    .line 464
    move-object/from16 v26, v29

    .line 465
    .line 466
    move-object/from16 v27, v30

    .line 467
    .line 468
    move/from16 v28, v31

    .line 469
    .line 470
    move-object/from16 v29, v32

    .line 471
    .line 472
    move-object/from16 v30, v33

    .line 473
    .line 474
    move-object/from16 v31, v34

    .line 475
    .line 476
    move-object/from16 v32, v35

    .line 477
    .line 478
    move-object/from16 v33, v36

    .line 479
    .line 480
    move-object/from16 v34, v37

    .line 481
    .line 482
    move-object/from16 v35, v38

    .line 483
    .line 484
    move-object/from16 v36, v39

    .line 485
    .line 486
    move-object/from16 v37, v40

    .line 487
    .line 488
    move-object/from16 v38, v41

    .line 489
    .line 490
    move-object/from16 v39, v42

    .line 491
    .line 492
    move-object/from16 v40, v43

    .line 493
    .line 494
    move-object/from16 v41, v44

    .line 495
    .line 496
    move-object/from16 v42, v45

    .line 497
    .line 498
    move/from16 v43, v46

    .line 499
    .line 500
    move-object/from16 v44, v47

    .line 501
    .line 502
    move-object/from16 v45, v48

    .line 503
    .line 504
    move-object/from16 v46, v49

    .line 505
    .line 506
    move-object/from16 v47, v50

    .line 507
    .line 508
    move-object/from16 v48, v51

    .line 509
    .line 510
    move-object/from16 v49, v52

    .line 511
    .line 512
    move-object/from16 v50, v53

    .line 513
    .line 514
    move-object/from16 v51, v54

    .line 515
    .line 516
    move-object/from16 v52, v57

    .line 517
    .line 518
    move-object/from16 v53, v55

    .line 519
    .line 520
    move-object/from16 v54, v56

    .line 521
    .line 522
    move-object/from16 v55, v0

    .line 523
    .line 524
    invoke-direct/range {v2 .. v55}, Lteam/opay/pay/history/UserTransaction;-><init>(ILteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;ILteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;FLteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 525
    .line 526
    .line 527
    return-object v1
.end method

.method public final b(I)[Lteam/opay/pay/history/UserTransaction;
    .locals 0

    .line 1
    new-array p1, p1, [Lteam/opay/pay/history/UserTransaction;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/UserTransaction$Creator;->a(Landroid/os/Parcel;)Lteam/opay/pay/history/UserTransaction;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/UserTransaction$Creator;->b(I)[Lteam/opay/pay/history/UserTransaction;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
