.class public Lcom/opay/face/common/util/LiveConfigParser;
.super Ljava/lang/Object;
.source "LiveConfigParser.java"


# static fields
.field public static final a:Ljava/lang/String; = "LiveConfigParser"

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p0, "jsonStr is empty!"

    .line 9
    .line 10
    sput-object p0, Lcom/opay/face/common/util/LiveConfigParser;->b:Ljava/lang/String;

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/opay/face/common/util/LiveConfigParser;->b:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v0, Lcom/opay/face/common/util/LiveConfigParser;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    const-string p0, "debug_mode"

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->z0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 46
    .line 47
    .line 48
    const-string p0, "camera_id"

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->v0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 55
    .line 56
    .line 57
    const-string p0, "switch_camera"

    .line 58
    .line 59
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 64
    .line 65
    .line 66
    const-string p0, "prepare_timeout"

    .line 67
    .line 68
    const/16 v2, 0x14

    .line 69
    .line 70
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 75
    .line 76
    .line 77
    const-string p0, "motion_timeout"

    .line 78
    .line 79
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->S0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 84
    .line 85
    .line 86
    const-string p0, "detect_motion"

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 94
    .line 95
    .line 96
    const-string p0, "save_video"

    .line 97
    .line 98
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 103
    .line 104
    .line 105
    const-string p0, "img_compress"

    .line 106
    .line 107
    const/16 v4, 0x55

    .line 108
    .line 109
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 114
    .line 115
    .line 116
    const-string p0, "pupil_dist_min"

    .line 117
    .line 118
    const/16 v4, 0x4b

    .line 119
    .line 120
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 125
    .line 126
    .line 127
    const-string p0, "pupil_dist_max"

    .line 128
    .line 129
    const/16 v4, 0xa0

    .line 130
    .line 131
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 136
    .line 137
    .line 138
    const-string p0, "is_audio"

    .line 139
    .line 140
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 145
    .line 146
    .line 147
    const-string p0, "blink_th"

    .line 148
    .line 149
    const/16 v4, 0x1e

    .line 150
    .line 151
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->t0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 156
    .line 157
    .line 158
    const-string p0, "open_eye_th"

    .line 159
    .line 160
    const/16 v5, 0x28

    .line 161
    .line 162
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->U0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 167
    .line 168
    .line 169
    const-string p0, "close_eye_th"

    .line 170
    .line 171
    const/16 v5, 0xf

    .line 172
    .line 173
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 178
    .line 179
    .line 180
    const-string p0, "open_mouth_th"

    .line 181
    .line 182
    const/16 v6, 0x19

    .line 183
    .line 184
    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->W0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 189
    .line 190
    .line 191
    const-string p0, "shake_head_th"

    .line 192
    .line 193
    const/16 v6, 0xa

    .line 194
    .line 195
    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 200
    .line 201
    .line 202
    const-string p0, "nod_th"

    .line 203
    .line 204
    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 209
    .line 210
    .line 211
    const-string p0, "shake_detect"

    .line 212
    .line 213
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 218
    .line 219
    .line 220
    const-string p0, "shake_th"

    .line 221
    .line 222
    const/16 v7, 0x46

    .line 223
    .line 224
    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 229
    .line 230
    .line 231
    const-string p0, "difficult_mode"

    .line 232
    .line 233
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 238
    .line 239
    .line 240
    const-string p0, "motion_list"

    .line 241
    .line 242
    const-string v7, "1234"

    .line 243
    .line 244
    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q0(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 249
    .line 250
    .line 251
    const-string p0, "motion_order"

    .line 252
    .line 253
    const-string v7, "1*"

    .line 254
    .line 255
    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->P0(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 260
    .line 261
    .line 262
    const-string p0, "pitch_calibration"

    .line 263
    .line 264
    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 269
    .line 270
    .line 271
    const-string p0, "quality"

    .line 272
    .line 273
    const/4 v7, -0x1

    .line 274
    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 279
    .line 280
    .line 281
    const-string p0, "align_eye"

    .line 282
    .line 283
    invoke-virtual {v0, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 288
    .line 289
    .line 290
    const-string p0, "align_mouth"

    .line 291
    .line 292
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 297
    .line 298
    .line 299
    const-string p0, "align_yaw"

    .line 300
    .line 301
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->r0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 306
    .line 307
    .line 308
    const-string p0, "align_pitch"

    .line 309
    .line 310
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 315
    .line 316
    .line 317
    const-string p0, "align_roll"

    .line 318
    .line 319
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->q0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 324
    .line 325
    .line 326
    const-string p0, "motion_start_delay_time"

    .line 327
    .line 328
    const/16 v5, 0x1f4

    .line 329
    .line 330
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 335
    .line 336
    .line 337
    const-string p0, "motion_end_delay_time"

    .line 338
    .line 339
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 344
    .line 345
    .line 346
    const-string p0, "face_lost_detect"

    .line 347
    .line 348
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->L0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 353
    .line 354
    .line 355
    const-string p0, "face_lost_allow_time"

    .line 356
    .line 357
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 362
    .line 363
    .line 364
    const-string p0, "brightness_th"

    .line 365
    .line 366
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->u0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 371
    .line 372
    .line 373
    const-string p0, "encrypt"

    .line 374
    .line 375
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 380
    .line 381
    .line 382
    const-string p0, "test_env"

    .line 383
    .line 384
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 389
    .line 390
    .line 391
    const-string p0, "motion_image_temp_size"

    .line 392
    .line 393
    const/4 v5, 0x2

    .line 394
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->O0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 399
    .line 400
    .line 401
    const-string p0, "detect_far_near"

    .line 402
    .line 403
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 408
    .line 409
    .line 410
    const-string p0, "detect_fingerprint"

    .line 411
    .line 412
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 417
    .line 418
    .line 419
    const-string p0, "detect_flash"

    .line 420
    .line 421
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 422
    .line 423
    .line 424
    move-result p0

    .line 425
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 426
    .line 427
    .line 428
    const-string p0, "detect_flash_max_millis"

    .line 429
    .line 430
    const/16 v5, 0x96

    .line 431
    .line 432
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 437
    .line 438
    .line 439
    const-string p0, "detect_motion_max_millis"

    .line 440
    .line 441
    const/16 v5, 0x12c

    .line 442
    .line 443
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 448
    .line 449
    .line 450
    const-string p0, "clarity_th"

    .line 451
    .line 452
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result p0

    .line 456
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->x0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 457
    .line 458
    .line 459
    const-string p0, "dialog_type"

    .line 460
    .line 461
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 466
    .line 467
    .line 468
    const-string p0, "sec_wait_millis"

    .line 469
    .line 470
    const/16 v5, 0x3e8

    .line 471
    .line 472
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 477
    .line 478
    .line 479
    const-string p0, "detect_camera"

    .line 480
    .line 481
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 486
    .line 487
    .line 488
    const-string p0, "timeout_limit_count"

    .line 489
    .line 490
    const/16 v5, 0x3e7

    .line 491
    .line 492
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 493
    .line 494
    .line 495
    move-result p0

    .line 496
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 497
    .line 498
    .line 499
    const-string p0, "volume"

    .line 500
    .line 501
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 502
    .line 503
    .line 504
    move-result p0

    .line 505
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->t1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 506
    .line 507
    .line 508
    const-string p0, "detect_sensor"

    .line 509
    .line 510
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 515
    .line 516
    .line 517
    const-string p0, "raise_millis"

    .line 518
    .line 519
    const/16 v5, 0x5dc

    .line 520
    .line 521
    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 522
    .line 523
    .line 524
    move-result p0

    .line 525
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 526
    .line 527
    .line 528
    const-string p0, "with_motion_image"

    .line 529
    .line 530
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->u1(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 535
    .line 536
    .line 537
    const-string p0, "over_expose_brightness"

    .line 538
    .line 539
    const/16 v1, 0xc3

    .line 540
    .line 541
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 546
    .line 547
    .line 548
    const-string p0, "over_expose_highlight_ratio"

    .line 549
    .line 550
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 551
    .line 552
    .line 553
    move-result p0

    .line 554
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Z0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 555
    .line 556
    .line 557
    const-string p0, "over_expose_entropy"

    .line 558
    .line 559
    const/16 v1, 0x1194

    .line 560
    .line 561
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 562
    .line 563
    .line 564
    move-result p0

    .line 565
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Y0(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 566
    .line 567
    .line 568
    const-string p0, "under_expose_brightness"

    .line 569
    .line 570
    const/16 v2, 0x30

    .line 571
    .line 572
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->q1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 577
    .line 578
    .line 579
    const-string p0, "under_expose_shadow_ratio"

    .line 580
    .line 581
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 582
    .line 583
    .line 584
    move-result p0

    .line 585
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 586
    .line 587
    .line 588
    const-string p0, "under_expose_entropy"

    .line 589
    .line 590
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 591
    .line 592
    .line 593
    move-result p0

    .line 594
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->r1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 595
    .line 596
    .line 597
    const-string p0, "play_progress_millis"

    .line 598
    .line 599
    const/16 v1, 0x50

    .line 600
    .line 601
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 602
    .line 603
    .line 604
    move-result p0

    .line 605
    invoke-virtual {p1, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b1(I)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 606
    .line 607
    .line 608
    return v3
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/util/LiveConfigParser;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
