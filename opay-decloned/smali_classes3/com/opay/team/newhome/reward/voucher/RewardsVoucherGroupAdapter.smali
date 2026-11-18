.class public final Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "RewardsVoucherGroupAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/opay/team/newhome/reward/GetVoucherItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\nR0\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/opay/team/newhome/reward/GetVoucherItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V",
        "p",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getOnVoucherButtonClick",
        "()Lkotlin/jvm/functions/Function1;",
        "q",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onVoucherButtonClick",
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


# instance fields
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_rewards_voucher_group_voucher:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->o(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Landroid/text/SpannableString;IILandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->n(Landroid/text/SpannableString;IILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lteam/opay/pay/R$id;->voucherDesc:I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getVoucherName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    move-object v2, v3

    .line 19
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget v1, Lteam/opay/pay/R$id;->voucherAmount:I

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget v5, Lteam/opay/pay/R$color;->osdk_color_00DDD0:I

    .line 57
    .line 58
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget v6, Lteam/opay/pay/R$color;->mint:I

    .line 67
    .line 68
    invoke-static {v5, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    new-instance v6, Llzc;

    .line 73
    .line 74
    invoke-direct {v6, v2, v4, v5, v1}, Llzc;-><init>(Landroid/text/SpannableString;IILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    sget v1, Lteam/opay/pay/R$id;->voucherButton:I

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getCouponStatus()Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-ne v4, v0, :cond_4

    .line 100
    .line 101
    sget v2, Lteam/opay/pay/R$drawable;->osdk_rewards_tag_use_bg_r_24:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    sget v4, Lteam/opay/pay/R$string;->omain_use:I

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    sget v2, Lteam/opay/pay/R$drawable;->osdk_rewards_tag_bg_r24:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget v4, Lteam/opay/pay/R$string;->voucher_get:I

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    :goto_2
    move-object v2, v3

    .line 143
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Lmzc;

    .line 150
    .line 151
    invoke-direct {v2, p0, p2}, Lmzc;-><init>(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    sget v1, Lteam/opay/pay/R$id;->processGroup:I

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroidx/constraintlayout/widget/Group;

    .line 164
    .line 165
    sget v2, Lteam/opay/pay/R$id;->toUseText:I

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    sget v4, Lteam/opay/pay/R$id;->processLine:I

    .line 174
    .line 175
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object v5, v4

    .line 180
    check-cast v5, Lcom/opay/team/newhome/reward/SimpleProcessLineView;

    .line 181
    .line 182
    sget v4, Lteam/opay/pay/R$id;->processEndText:I

    .line 183
    .line 184
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getShowProgressOrSill()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    if-nez v6, :cond_7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    const/4 v8, 0x2

    .line 202
    if-ne v7, v8, :cond_9

    .line 203
    .line 204
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getSill()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-nez p1, :cond_8

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_8
    move-object v3, p1

    .line 224
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_9
    :goto_5
    if-nez v6, :cond_a

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-ne v3, v0, :cond_d

    .line 236
    .line 237
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getProgress()Ljava/lang/Float;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const/4 v2, 0x0

    .line 254
    if-eqz v1, :cond_b

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    goto :goto_6

    .line 261
    :cond_b
    const/4 v1, 0x0

    .line 262
    :goto_6
    const/16 v3, 0x64

    .line 263
    .line 264
    int-to-float v3, v3

    .line 265
    mul-float v1, v1, v3

    .line 266
    .line 267
    float-to-int v6, v1

    .line 268
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    sget v7, Lteam/opay/pay/R$color;->osdk_rewards_vertical_process_total:I

    .line 271
    .line 272
    invoke-static {v1, v7}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    const/16 v11, 0xc

    .line 277
    .line 278
    const/4 v12, 0x0

    .line 279
    const/16 v7, 0x64

    .line 280
    .line 281
    const/4 v8, 0x0

    .line 282
    const/4 v9, 0x0

    .line 283
    invoke-static/range {v5 .. v12}, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b(Lcom/opay/team/newhome/reward/SimpleProcessLineView;IIIIIILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    sget v1, Lteam/opay/pay/R$string;->osdk_voucher_claimed:I

    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/GetVoucherItem;->getProgress()Ljava/lang/Float;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    if-eqz p2, :cond_c

    .line 299
    .line 300
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    :cond_c
    mul-float v2, v2, v3

    .line 305
    .line 306
    float-to-int p2, v2

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    new-array v0, v0, [Ljava/lang/Object;

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    aput-object p2, v0, v2

    .line 315
    .line 316
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_d
    :goto_7
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 325
    .line 326
    .line 327
    :goto_8
    return-void
.end method

.method public static final n(Landroid/text/SpannableString;IILandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/reward/LinearGradidentForegroundSpan;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-direct {v0, p1, p2, v2, v1}, Lcom/opay/team/newhome/reward/LinearGradidentForegroundSpan;-><init>(IIFF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/16 p2, 0x11

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public static final o(Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;Lcom/opay/team/newhome/reward/GetVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/GetVoucherItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/GetVoucherItem;
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
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/opay/team/newhome/reward/GetVoucherItem;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final q(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/opay/team/newhome/reward/GetVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/voucher/RewardsVoucherGroupAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
