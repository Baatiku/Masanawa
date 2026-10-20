.class public Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "KycLevelDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;->a:Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;->e(Ld2d;Lteam/opay/pay/kyc/levels/KycLevel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR ABORT INTO `KycLevel` (`level`,`role`,`benefits`,`dailyVolumeMax_valueString`,`dailyVolumeMax_currency`,`walletBalanceMax_valueString`,`walletBalanceMax_currency`,`singleOutAmountMax_valueString`,`singleOutAmountMax_currency`,`dailyOutAmountMax_valueString`,`dailyOutAmountMax_currency`,`totalOutAmountMax_valueString`,`totalOutAmountMax_currency`,`singleInAmountMax_valueString`,`singleInAmountMax_currency`,`totalInAmountMax_valueString`,`totalInAmountMax_currency`,`weeklyOutAmountMax_valueString`,`weeklyOutAmountMax_currency`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/kyc/levels/KycLevel;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/levels/KycLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl$a;->a:Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;

    .line 38
    .line 39
    invoke-static {v0}, Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;->k(Lteam/opay/pay/kyc/levels/KycLevelDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->a()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lteam/opay/pay/database/RoomTypeConverters;->l(Ljava/util/List;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x3

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x4

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x5

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {p1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_4
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->j()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/4 v2, 0x6

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {p1, v2, v1}, Ld2d;->m(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_5
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v2, 0x7

    .line 128
    if-nez v1, :cond_6

    .line 129
    .line 130
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_6
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {p1, v2, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_6
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->g()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/16 v1, 0x9

    .line 146
    .line 147
    const/16 v2, 0x8

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_7
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-interface {p1, v2, v3}, Ld2d;->m(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_7
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-nez v2, :cond_8

    .line 173
    .line 174
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_8
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_9
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 190
    .line 191
    .line 192
    :goto_8
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/16 v1, 0xb

    .line 197
    .line 198
    const/16 v2, 0xa

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-nez v3, :cond_a

    .line 207
    .line 208
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_a
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-interface {p1, v2, v3}, Ld2d;->m(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_9
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    if-nez v2, :cond_b

    .line 224
    .line 225
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_b
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_c
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 241
    .line 242
    .line 243
    :goto_a
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->i()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/16 v1, 0xd

    .line 248
    .line 249
    const/16 v2, 0xc

    .line 250
    .line 251
    if-eqz v0, :cond_f

    .line 252
    .line 253
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-nez v3, :cond_d

    .line 258
    .line 259
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_d
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {p1, v2, v3}, Ld2d;->m(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_b
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    if-nez v2, :cond_e

    .line 275
    .line 276
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 277
    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_e
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_c

    .line 288
    :cond_f
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 292
    .line 293
    .line 294
    :goto_c
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->f()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const/16 v1, 0xf

    .line 299
    .line 300
    const/16 v2, 0xe

    .line 301
    .line 302
    if-eqz v0, :cond_12

    .line 303
    .line 304
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    if-nez v3, :cond_10

    .line 309
    .line 310
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_10
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-interface {p1, v2, v3}, Ld2d;->m(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :goto_d
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    if-nez v2, :cond_11

    .line 326
    .line 327
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_e

    .line 331
    :cond_11
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_e

    .line 339
    :cond_12
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 343
    .line 344
    .line 345
    :goto_e
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->h()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const/16 v1, 0x11

    .line 350
    .line 351
    const/16 v2, 0x10

    .line 352
    .line 353
    if-eqz v0, :cond_15

    .line 354
    .line 355
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    if-nez v3, :cond_13

    .line 360
    .line 361
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 362
    .line 363
    .line 364
    goto :goto_f

    .line 365
    :cond_13
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-interface {p1, v2, v3}, Ld2d;->m(ILjava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :goto_f
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-nez v2, :cond_14

    .line 377
    .line 378
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 379
    .line 380
    .line 381
    goto :goto_10

    .line 382
    :cond_14
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_10

    .line 390
    :cond_15
    invoke-interface {p1, v2}, Ld2d;->l(I)V

    .line 391
    .line 392
    .line 393
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 394
    .line 395
    .line 396
    :goto_10
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevel;->k()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    const/16 v0, 0x13

    .line 401
    .line 402
    const/16 v1, 0x12

    .line 403
    .line 404
    if-eqz p2, :cond_18

    .line 405
    .line 406
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    if-nez v2, :cond_16

    .line 411
    .line 412
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_16
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-interface {p1, v1, v2}, Ld2d;->m(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :goto_11
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-nez v1, :cond_17

    .line 428
    .line 429
    invoke-interface {p1, v0}, Ld2d;->l(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_12

    .line 433
    :cond_17
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getCurrency()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-interface {p1, v0, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    goto :goto_12

    .line 441
    :cond_18
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 442
    .line 443
    .line 444
    invoke-interface {p1, v0}, Ld2d;->l(I)V

    .line 445
    .line 446
    .line 447
    :goto_12
    return-void
.end method
