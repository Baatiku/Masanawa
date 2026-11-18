.class public final Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TransactionDetailBankProgressAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;)V",
        "",
        "timeCost",
        "l",
        "(Z)V",
        "a",
        "Ljava/lang/Boolean;",
        "hasTimeCost",
        "b",
        "Companion",
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


# static fields
.field public static final b:Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;->b:Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_item_transaction_progress:I

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
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;)V
    .locals 12
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    sget v0, Lteam/opay/pay/R$id;->line_left:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    const-string v1, "INIT"

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v4, v2

    .line 38
    :goto_1
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    sget v4, Lteam/opay/pay/R$color;->black_09:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    sget v4, Lteam/opay/pay/R$color;->color_00B876:I

    .line 48
    .line 49
    :goto_2
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_3
    sget v0, Lteam/opay/pay/R$id;->line_right:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x1

    .line 75
    sub-int/2addr v4, v5

    .line 76
    if-eq v3, v4, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move-object v0, v2

    .line 80
    :goto_3
    if-eqz v0, :cond_7

    .line 81
    .line 82
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "getData(...)"

    .line 90
    .line 91
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    add-int/2addr v4, v5

    .line 99
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v3}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move-object v3, v2

    .line 113
    :goto_4
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    sget v3, Lteam/opay/pay/R$color;->black_09:I

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 125
    .line 126
    :goto_5
    invoke-static {v4, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    .line 132
    .line 133
    :cond_7
    sget v0, Lteam/opay/pay/R$id;->label:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 140
    .line 141
    if-eqz p2, :cond_8

    .line 142
    .line 143
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    move-object v3, v2

    .line 149
    :goto_6
    if-eqz v3, :cond_d

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    sparse-switch v4, :sswitch_data_0

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :sswitch_0
    const-string v4, "PENDING"

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_9

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_9
    sget v3, Lteam/opay/pay/R$mipmap;->bank_progress_waiting:I

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_7

    .line 174
    :sswitch_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_a

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_a
    sget v3, Lteam/opay/pay/R$mipmap;->bank_progress_none:I

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_7

    .line 187
    :sswitch_2
    const-string v4, "FAIL"

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_b

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_b
    sget v3, Lteam/opay/pay/R$mipmap;->bank_progress_error:I

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :sswitch_3
    const-string v4, "SUCCESS"

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-nez v3, :cond_c

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_c
    sget v3, Lteam/opay/pay/R$mipmap;->bank_progress_success:I

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 214
    .line 215
    .line 216
    :cond_d
    :goto_7
    sget v0, Lteam/opay/pay/R$id;->label_name:I

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/widget/TextView;

    .line 223
    .line 224
    if-eqz v0, :cond_11

    .line 225
    .line 226
    if-eqz p2, :cond_e

    .line 227
    .line 228
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getDesc()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    if-eqz v6, :cond_e

    .line 233
    .line 234
    const/4 v10, 0x4

    .line 235
    const/4 v11, 0x0

    .line 236
    const-string v7, "\\n"

    .line 237
    .line 238
    const-string v8, "\n"

    .line 239
    .line 240
    const/4 v9, 0x0

    .line 241
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    goto :goto_8

    .line 246
    :cond_e
    move-object v3, v2

    .line 247
    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 251
    .line 252
    if-eqz p2, :cond_f

    .line 253
    .line 254
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    goto :goto_9

    .line 259
    :cond_f
    move-object v4, v2

    .line 260
    :goto_9
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_10

    .line 265
    .line 266
    sget v4, Lteam/opay/pay/R$color;->black_45:I

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_10
    sget v4, Lteam/opay/pay/R$color;->black_65:I

    .line 270
    .line 271
    :goto_a
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    .line 277
    .line 278
    :cond_11
    sget v0, Lteam/opay/pay/R$id;->time:I

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v3, v0

    .line 285
    check-cast v3, Landroid/widget/TextView;

    .line 286
    .line 287
    if-eqz p2, :cond_12

    .line 288
    .line 289
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    goto :goto_b

    .line 294
    :cond_12
    move-object v3, v2

    .line 295
    :goto_b
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_13

    .line 300
    .line 301
    goto :goto_c

    .line 302
    :cond_13
    move-object v0, v2

    .line 303
    :goto_c
    check-cast v0, Landroid/widget/TextView;

    .line 304
    .line 305
    const-string v1, ""

    .line 306
    .line 307
    if-eqz v0, :cond_16

    .line 308
    .line 309
    sget-object v3, Ld1f;->a:Ld1f;

    .line 310
    .line 311
    if-eqz p2, :cond_14

    .line 312
    .line 313
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getDate()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    goto :goto_d

    .line 318
    :cond_14
    move-object v4, v2

    .line 319
    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v4, "000"

    .line 328
    .line 329
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v3, v4}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_15

    .line 341
    .line 342
    invoke-static {v3}, Le1f;->h(Ljava/util/Date;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-eqz v3, :cond_15

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_15
    move-object v3, v1

    .line 350
    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    :cond_16
    iget-object v0, p0, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;->a:Ljava/lang/Boolean;

    .line 354
    .line 355
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    const/4 v3, 0x0

    .line 362
    if-eqz v0, :cond_1a

    .line 363
    .line 364
    sget v0, Lteam/opay/pay/R$id;->label_tips:I

    .line 365
    .line 366
    if-eqz p2, :cond_17

    .line 367
    .line 368
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getTips()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    goto :goto_f

    .line 373
    :cond_17
    move-object v4, v2

    .line 374
    :goto_f
    if-nez v4, :cond_18

    .line 375
    .line 376
    move-object v4, v1

    .line 377
    :cond_18
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-lez v4, :cond_19

    .line 382
    .line 383
    goto :goto_10

    .line 384
    :cond_19
    const/4 v5, 0x0

    .line 385
    :goto_10
    invoke-virtual {p1, v0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 386
    .line 387
    .line 388
    goto :goto_13

    .line 389
    :cond_1a
    sget v0, Lteam/opay/pay/R$id;->label_tips:I

    .line 390
    .line 391
    if-eqz p2, :cond_1b

    .line 392
    .line 393
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getTips()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    goto :goto_11

    .line 398
    :cond_1b
    move-object v4, v2

    .line 399
    :goto_11
    if-nez v4, :cond_1c

    .line 400
    .line 401
    move-object v4, v1

    .line 402
    :cond_1c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-lez v4, :cond_1d

    .line 407
    .line 408
    goto :goto_12

    .line 409
    :cond_1d
    const/4 v5, 0x0

    .line 410
    :goto_12
    invoke-virtual {p1, v0, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 411
    .line 412
    .line 413
    :goto_13
    sget v0, Lteam/opay/pay/R$id;->label_tips:I

    .line 414
    .line 415
    if-eqz p2, :cond_1e

    .line 416
    .line 417
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getTips()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    :cond_1e
    if-nez v2, :cond_1f

    .line 422
    .line 423
    goto :goto_14

    .line 424
    :cond_1f
    move-object v1, v2

    .line 425
    :goto_14
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :sswitch_data_0
    .sparse-switch
        -0x447f341d -> :sswitch_3
        0x20cf1e -> :sswitch_2
        0x225d10 -> :sswitch_1
        0x21c1577 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lteam/opay/pay/history/details/TransactionDetailBankProgressAdapter;->a:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method
