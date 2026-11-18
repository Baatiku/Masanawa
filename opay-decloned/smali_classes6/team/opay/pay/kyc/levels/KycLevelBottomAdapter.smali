.class public final Lteam/opay/pay/kyc/levels/KycLevelBottomAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "KycLevelBottomAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/kyc/levels/KycLevelBottomAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/levels/KycLevelBottomItem;)V",
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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    sget v1, Lteam/opay/pay/R$layout;->activity_kyc_level_bottom_title_item:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$layout;->activity_kyc_level_bottom_value_item:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/levels/KycLevelBottomItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/kyc/levels/KycLevelBottomItem;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/levels/KycLevelBottomItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-lez v2, :cond_b

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x1

    .line 34
    :goto_0
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->b()Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lteam/opay/pay/kyc/levels/UserKycLimit;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v4, 0x1

    .line 60
    :goto_1
    sget v5, Lteam/opay/pay/R$id;->tvTitleDesc:I

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/widget/TextView;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    if-ne v4, v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 72
    .line 73
    .line 74
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    sget v9, Lteam/opay/pay/R$string;->osdk_current:I

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 87
    .line 88
    .line 89
    sget-object v8, Lhh2;->a:Lhh2;

    .line 90
    .line 91
    sget v9, Lteam/opay/pay/R$color;->primary:I

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Lhh2;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    sub-int v8, v4, v3

    .line 105
    .line 106
    if-ne v8, v1, :cond_4

    .line 107
    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->a()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move-object v8, v7

    .line 116
    :goto_2
    const-string v9, "0"

    .line 117
    .line 118
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    xor-int/2addr v8, v1

    .line 123
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 124
    .line 125
    .line 126
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    sget v9, Lteam/opay/pay/R$string;->osdk_up_next:I

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {p1, v5, v8}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 139
    .line 140
    .line 141
    sget-object v8, Lhh2;->a:Lhh2;

    .line 142
    .line 143
    sget v9, Lteam/opay/pay/R$color;->omain_white:I

    .line 144
    .line 145
    invoke-virtual {v8, v9}, Lhh2;->a(I)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {p1, v5, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 157
    .line 158
    .line 159
    :goto_3
    if-ne v3, v4, :cond_5

    .line 160
    .line 161
    invoke-virtual {p1, v5, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 162
    .line 163
    .line 164
    :cond_5
    sget v3, Lteam/opay/pay/R$id;->tvTitle:I

    .line 165
    .line 166
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    sget v5, Lteam/opay/pay/R$string;->osdk_tier:I

    .line 173
    .line 174
    if-eqz p2, :cond_6

    .line 175
    .line 176
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->b()Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    if-eqz v6, :cond_6

    .line 181
    .line 182
    invoke-virtual {v6}, Lteam/opay/pay/kyc/levels/UserKycLimit;->c()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    move-object v6, v7

    .line 188
    :goto_4
    new-array v8, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object v6, v8, v0

    .line 191
    .line 192
    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 197
    .line 198
    .line 199
    sget v0, Lteam/opay/pay/R$id;->tvTitle2:I

    .line 200
    .line 201
    sget-object v3, Lbd9;->a:Lbd9;

    .line 202
    .line 203
    if-eqz p2, :cond_7

    .line 204
    .line 205
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->b()Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-eqz v4, :cond_7

    .line 210
    .line 211
    invoke-virtual {v4}, Lteam/opay/pay/kyc/levels/UserKycLimit;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    goto :goto_5

    .line 216
    :cond_7
    move-object v4, v7

    .line 217
    :goto_5
    invoke-virtual {v3, v4, v1}, Lbd9;->d(Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 222
    .line 223
    .line 224
    if-eqz p2, :cond_8

    .line 225
    .line 226
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->b()Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_8

    .line 231
    .line 232
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/UserKycLimit;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_8

    .line 237
    .line 238
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    goto :goto_6

    .line 249
    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    .line 250
    .line 251
    :goto_6
    float-to-double v4, v0

    .line 252
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 253
    .line 254
    cmpl-double v0, v4, v8

    .line 255
    .line 256
    if-lez v0, :cond_a

    .line 257
    .line 258
    if-eqz p2, :cond_9

    .line 259
    .line 260
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->b()Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    if-eqz p2, :cond_9

    .line 265
    .line 266
    invoke-virtual {p2}, Lteam/opay/pay/kyc/levels/UserKycLimit;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    :cond_9
    invoke-virtual {v3, v7, v1}, Lbd9;->d(Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    goto :goto_7

    .line 275
    :cond_a
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    sget v0, Lteam/opay/pay/R$string;->kyc_unlimited:I

    .line 282
    .line 283
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    sget v0, Lteam/opay/pay/R$id;->tvTitle3:I

    .line 291
    .line 292
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 293
    .line 294
    .line 295
    const/4 p2, 0x2

    .line 296
    if-ne v2, p2, :cond_b

    .line 297
    .line 298
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 299
    .line 300
    sget-object p2, Lhh2;->a:Lhh2;

    .line 301
    .line 302
    sget v0, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 303
    .line 304
    invoke-virtual {p2, v0}, Lhh2;->a(I)I

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 309
    .line 310
    .line 311
    :cond_b
    return-void
.end method
