.class public final Lteam/opay/sme/va/TransferActivity;
.super Lcx6;
.source "TransferActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/sme/va/TransferActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onNewIntent",
        "",
        "d0",
        "(Landroid/content/Intent;Z)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "f0",
        "(Landroidx/fragment/app/Fragment;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "(Landroid/content/Intent;)V",
        "sme-va_release"
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
    sget v0, Lteam/opay/sme/va/R$layout;->sme_va_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcx6;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d0(Landroid/content/Intent;Z)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    sget-object v5, Lbl8;->c:Lbl8;

    .line 13
    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v8, "uri -> "

    .line 20
    .line 21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x2

    .line 33
    invoke-static {v5, v7, v8, v9, v8}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-static {v4}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v5, v8

    .line 44
    :goto_0
    if-eqz v5, :cond_12

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const-string v10, "format(...)"

    .line 51
    .line 52
    const-string v11, "orderNo"

    .line 53
    .line 54
    const-string v12, "transferNumber"

    .line 55
    .line 56
    const-string v13, ""

    .line 57
    .line 58
    sparse-switch v7, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :sswitch_0
    const-string v1, "opay://business/sme/va/changeTnBindSource"

    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;->l:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$Companion;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosDetailFragment;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v6, v1, v0}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_8

    .line 87
    .line 88
    :sswitch_1
    const-string v0, "opay://business/sme/va/large/list"

    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_2
    const-string v0, "status"

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object v13, v0

    .line 108
    :goto_1
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;->n:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$Companion;

    .line 109
    .line 110
    invoke-virtual {v0, v13}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersListFragment;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v6, v0, v3, v9, v8}, Lteam/opay/sme/va/TransferActivity;->g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :sswitch_2
    const-string v1, "opay://business/sme/va/phoneBindPos"

    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    goto/16 :goto_7

    .line 128
    .line 129
    :cond_4
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->k:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$Companion;

    .line 130
    .line 131
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$Companion;->a()Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v6, v1, v0}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_8

    .line 139
    .line 140
    :sswitch_3
    const-string v0, "opay://business/sme/va/grantPermission"

    .line 141
    .line 142
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_5

    .line 147
    .line 148
    goto/16 :goto_7

    .line 149
    .line 150
    :cond_5
    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move-object v13, v0

    .line 158
    :goto_2
    sget-object v0, Lud;->a:Lud;

    .line 159
    .line 160
    sget-object v1, Lz9f;->a:Lz9f;

    .line 161
    .line 162
    invoke-virtual {v1, v13}, Lz9f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const/4 v4, 0x4

    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v3, 0x0

    .line 169
    move-object/from16 v1, p0

    .line 170
    .line 171
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :sswitch_4
    const-string v0, "otravel://sme/entrance"

    .line 180
    .line 181
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_12

    .line 186
    .line 187
    goto/16 :goto_6

    .line 188
    .line 189
    :sswitch_5
    const-string v1, "opay://business/sme/va/transferNumberDetails"

    .line 190
    .line 191
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_7

    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_7
    invoke-virtual {v4, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    sget-object v2, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->n:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$Companion;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v6, v1, v0}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :sswitch_6
    const-string v0, "opay://business/sme/va/detail"

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_8

    .line 221
    .line 222
    goto/16 :goto_7

    .line 223
    .line 224
    :cond_8
    invoke-virtual {v4, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-nez v0, :cond_9

    .line 229
    .line 230
    move-object v15, v13

    .line 231
    goto :goto_3

    .line 232
    :cond_9
    move-object v15, v0

    .line 233
    :goto_3
    sget-object v14, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment;->w:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;

    .line 234
    .line 235
    const/16 v18, 0x4

    .line 236
    .line 237
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v16, 0x0

    .line 240
    .line 241
    const/16 v17, 0x0

    .line 242
    .line 243
    invoke-static/range {v14 .. v19}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;->b(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;Ljava/lang/String;ZIILjava/lang/Object;)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v6, v0, v3, v9, v8}, Lteam/opay/sme/va/TransferActivity;->g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_8

    .line 251
    .line 252
    :sswitch_7
    const-string v1, "opay://business/sme/va/openPhoneAccount"

    .line 253
    .line 254
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-nez v1, :cond_a

    .line 259
    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :cond_a
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/ModifyWalletStatusFragment;->i:Lteam/opay/sme/va/receive/staticAccount/phoneAccount/ModifyWalletStatusFragment$Companion;

    .line 263
    .line 264
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/phoneAccount/ModifyWalletStatusFragment$Companion;->a()Lteam/opay/sme/va/receive/staticAccount/phoneAccount/ModifyWalletStatusFragment;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v6, v1, v0}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :sswitch_8
    const-string v0, "opay://business/sme/va/large"

    .line 274
    .line 275
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_b

    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_b
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersFragment;->i:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersFragment$Companion;

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersFragment$Companion;->a(Z)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersFragment;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v6, v0, v3, v9, v8}, Lteam/opay/sme/va/TransferActivity;->g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :sswitch_9
    const-string v0, "opay://business/sme/va/order/detail"

    .line 295
    .line 296
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_c

    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_c
    invoke-virtual {v4, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-nez v0, :cond_d

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_d
    move-object v13, v0

    .line 312
    :goto_4
    const-string v0, "autoPrint"

    .line 313
    .line 314
    invoke-virtual {v4, v0, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    const-string v1, "orderStatus"

    .line 319
    .line 320
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    sget-object v1, Lteam/opay/core/common/spi/IFragment;->Companion:Lteam/opay/core/common/spi/IFragment$Companion;

    .line 324
    .line 325
    sget-object v4, Lteam/opay/core/common/spi/FragmentTab;->NEW_TRANSACTION_DETAIL:Lteam/opay/core/common/spi/FragmentTab;

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Lteam/opay/core/common/spi/IFragment$Companion;->a(Lteam/opay/core/common/spi/FragmentTab;)Lteam/opay/core/common/spi/IModuleFragment;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    new-instance v4, Landroid/os/Bundle;

    .line 332
    .line 333
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 334
    .line 335
    .line 336
    sget-object v5, Lf6e;->a:Lf6e;

    .line 337
    .line 338
    if-nez v0, :cond_e

    .line 339
    .line 340
    const-string v0, "0"

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_e
    const-string v0, "1"

    .line 344
    .line 345
    :goto_5
    new-array v5, v9, [Ljava/lang/Object;

    .line 346
    .line 347
    aput-object v13, v5, v3

    .line 348
    .line 349
    aput-object v0, v5, v2

    .line 350
    .line 351
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const-string v2, "opay://transfer/transferFlow/detail?menuType=TRANSFER_NUMBER_TRANSACTION&orderNo=%s&autoPrint=%s"

    .line 356
    .line 357
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const-string v2, "key_uri"

    .line 369
    .line 370
    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v6, v1, v3, v9, v8}, Lteam/opay/sme/va/TransferActivity;->g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :sswitch_a
    const-string v1, "opay://business/sme/va/transferNumberList"

    .line 381
    .line 382
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-nez v1, :cond_f

    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_f
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;->n:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$Companion;

    .line 390
    .line 391
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment$Companion;->a()Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberListFragment;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-direct {v6, v1, v0}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :sswitch_b
    const-string v0, "opay://business/sme/va/list"

    .line 400
    .line 401
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_10

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_10
    const-string v0, "accountNo"

    .line 409
    .line 410
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    sget-object v0, Lud;->a:Lud;

    .line 414
    .line 415
    sget-object v4, Lf6e;->a:Lf6e;

    .line 416
    .line 417
    new-array v4, v1, [Ljava/lang/Object;

    .line 418
    .line 419
    const-string v5, "TRANSFER_NUMBER_TRANSACTION"

    .line 420
    .line 421
    aput-object v5, v4, v3

    .line 422
    .line 423
    aput-object v13, v4, v2

    .line 424
    .line 425
    aput-object v13, v4, v9

    .line 426
    .line 427
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const-string v2, "opay://transfer/transferFlow/transactionList?onlyOneMenu=true&params_tab=%s&pageFrom=%s&defaultTransType=%s"

    .line 432
    .line 433
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const/4 v4, 0x4

    .line 441
    const/4 v5, 0x0

    .line 442
    const/4 v3, 0x0

    .line 443
    move-object/from16 v1, p0

    .line 444
    .line 445
    invoke-static/range {v0 .. v5}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :sswitch_c
    const-string v0, "opay://business/sme/va/home"

    .line 453
    .line 454
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_11

    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_11
    :goto_6
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/home/StaticAccountFragment;->j:Lteam/opay/sme/va/receive/staticAccount/home/StaticAccountFragment$Companion;

    .line 462
    .line 463
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/staticAccount/home/StaticAccountFragment$Companion;->a()Lteam/opay/sme/va/receive/staticAccount/home/StaticAccountFragment;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-static {v6, v0, v3, v9, v8}, Lteam/opay/sme/va/TransferActivity;->g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_12
    :goto_7
    sget v0, Lteam/opay/core/common/R$string;->common_not_supported:I

    .line 472
    .line 473
    invoke-static {v6, v0}, Let;->u(Landroid/content/Context;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 477
    .line 478
    .line 479
    :goto_8
    return-void

    .line 480
    nop

    .line 481
    :sswitch_data_0
    .sparse-switch
        -0x5cb6f62f -> :sswitch_c
        -0x5cb53a70 -> :sswitch_b
        -0x49b25cbc -> :sswitch_a
        -0x3b07bedc -> :sswitch_9
        -0x39f5bb77 -> :sswitch_8
        -0x36efddc5 -> :sswitch_7
        -0x122f473d -> :sswitch_6
        0x26cc35dc -> :sswitch_5
        0x4916502b -> :sswitch_4
        0x5e606fd9 -> :sswitch_3
        0x60f1567b -> :sswitch_2
        0x66512a64 -> :sswitch_1
        0x72ec1614 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic e0(Lteam/opay/sme/va/TransferActivity;Landroid/content/Intent;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/sme/va/TransferActivity;->d0(Landroid/content/Intent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f0(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p2, Lteam/opay/sme/va/R$id;->fragment_container:I

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lre6;->d(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget p2, Lteam/opay/sme/va/R$id;->fragment_container:I

    .line 10
    .line 11
    invoke-static {p0, p2, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public static synthetic g0(Lteam/opay/sme/va/TransferActivity;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/sme/va/TransferActivity;->f0(Landroidx/fragment/app/Fragment;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcx6;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "getIntent(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/sme/va/TransferActivity;->e0(Lteam/opay/sme/va/TransferActivity;Landroid/content/Intent;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lteam/opay/sme/va/TransferActivity;->d0(Landroid/content/Intent;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
