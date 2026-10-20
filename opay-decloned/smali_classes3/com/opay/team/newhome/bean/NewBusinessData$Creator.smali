.class public final Lcom/opay/team/newhome/bean/NewBusinessData$Creator;
.super Ljava/lang/Object;
.source "NewBusinessData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/bean/NewBusinessData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
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
.method public final a(Landroid/os/Parcel;)Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 45

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
    new-instance v1, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v4, v2

    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    move-object v5, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v5, v2

    .line 45
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    move-object v15, v3

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 90
    .line 91
    .line 92
    move-result-wide v15

    .line 93
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v15, v2

    .line 98
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    move-object/from16 v18, v3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object/from16 v18, v2

    .line 124
    .line 125
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    move-object/from16 v19, v3

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object/from16 v19, v2

    .line 143
    .line 144
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v20

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    const/16 v21, 0x0

    .line 153
    .line 154
    const/16 v22, 0x1

    .line 155
    .line 156
    if-nez v2, :cond_5

    .line 157
    .line 158
    move-object/from16 v23, v3

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    const/4 v2, 0x1

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    const/4 v2, 0x0

    .line 170
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    move-object/from16 v23, v2

    .line 175
    .line 176
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_7

    .line 181
    .line 182
    move-object/from16 v24, v3

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_7

    .line 193
    :cond_8
    const/4 v2, 0x0

    .line 194
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    move-object/from16 v24, v2

    .line 199
    .line 200
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v25

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v26

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v27

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_9

    .line 217
    .line 218
    move-object/from16 v28, v3

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    move-object/from16 v28, v2

    .line 230
    .line 231
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_a

    .line 236
    .line 237
    move-object/from16 v29, v3

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    move-object/from16 v29, v2

    .line 249
    .line 250
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 251
    .line 252
    .line 253
    move-result-wide v30

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 255
    .line 256
    .line 257
    move-result-wide v32

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result v34

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v42

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_b

    .line 271
    .line 272
    move-object/from16 v43, v3

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_c

    .line 280
    .line 281
    const/4 v2, 0x1

    .line 282
    goto :goto_b

    .line 283
    :cond_c
    const/4 v2, 0x0

    .line 284
    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    move-object/from16 v43, v2

    .line 289
    .line 290
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_d

    .line 295
    .line 296
    move-object/from16 v44, v3

    .line 297
    .line 298
    goto :goto_d

    .line 299
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_e

    .line 304
    .line 305
    const/16 v21, 0x1

    .line 306
    .line 307
    :cond_e
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    move-object/from16 v44, v2

    .line 312
    .line 313
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v35

    .line 317
    const-class v2, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    move-object/from16 v36, v3

    .line 328
    .line 329
    check-cast v36, Lteam/opay/odialog/net/AdDataItem;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    move-object/from16 v37, v2

    .line 340
    .line 341
    check-cast v37, Lteam/opay/odialog/net/BackgroundConfig;

    .line 342
    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v38

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v39

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v40

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v41

    .line 359
    move-object v2, v1

    .line 360
    move-object v3, v4

    .line 361
    move-object v4, v5

    .line 362
    move-object v5, v6

    .line 363
    move-object v6, v7

    .line 364
    move-object v7, v8

    .line 365
    move-object v8, v9

    .line 366
    move-object v9, v10

    .line 367
    move-object v10, v11

    .line 368
    move-object v11, v12

    .line 369
    move-object v12, v13

    .line 370
    move-object v13, v14

    .line 371
    move-object v14, v15

    .line 372
    move-object/from16 v15, v16

    .line 373
    .line 374
    move-object/from16 v16, v17

    .line 375
    .line 376
    move-object/from16 v17, v18

    .line 377
    .line 378
    move-object/from16 v18, v19

    .line 379
    .line 380
    move-object/from16 v19, v20

    .line 381
    .line 382
    move-object/from16 v20, v23

    .line 383
    .line 384
    move-object/from16 v21, v24

    .line 385
    .line 386
    move-object/from16 v22, v25

    .line 387
    .line 388
    move-object/from16 v23, v26

    .line 389
    .line 390
    move-object/from16 v24, v27

    .line 391
    .line 392
    move-object/from16 v25, v28

    .line 393
    .line 394
    move-object/from16 v26, v29

    .line 395
    .line 396
    move-wide/from16 v27, v30

    .line 397
    .line 398
    move-wide/from16 v29, v32

    .line 399
    .line 400
    move/from16 v31, v34

    .line 401
    .line 402
    move-object/from16 v32, v42

    .line 403
    .line 404
    move-object/from16 v33, v43

    .line 405
    .line 406
    move-object/from16 v34, v44

    .line 407
    .line 408
    invoke-direct/range {v2 .. v41}, Lcom/opay/team/newhome/bean/NewBusinessData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-object v1
.end method

.method public final b(I)[Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/bean/NewBusinessData$Creator;->a(Landroid/os/Parcel;)Lcom/opay/team/newhome/bean/NewBusinessData;

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
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/bean/NewBusinessData$Creator;->b(I)[Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
