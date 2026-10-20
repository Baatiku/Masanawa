.class public final Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "NewUserTaskVoucherDialogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V",
        "Ljava/text/DecimalFormat;",
        "a",
        "Ljava/text/DecimalFormat;",
        "decimalFormat",
        "",
        "b",
        "F",
        "two",
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
.field public final a:Ljava/text/DecimalFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_voucher_list:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/text/DecimalFormat;

    .line 7
    .line 8
    const-string v1, "0.##"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->a:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-static {v0}, Ljmf;->c(F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->b:F

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->m(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->turnMaxLine()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;)V
    .locals 6
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v2, Lteam/opay/pay/R$id;->amount:I

    .line 14
    .line 15
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherAmount()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 20
    .line 21
    .line 22
    sget v2, Lteam/opay/pay/R$id;->tv_available:I

    .line 23
    .line 24
    sget v3, Lteam/opay/pay/R$string;->osdk_voucher_start_amount_tips:I

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->a:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getStartPrice()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-static {v5}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    :cond_0
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-array v5, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v4, v5, v0

    .line 49
    .line 50
    invoke-static {v3, v5}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 55
    .line 56
    .line 57
    sget v2, Lteam/opay/pay/R$id;->tv_title:I

    .line 58
    .line 59
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getVoucherDescription()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget v3, Lteam/opay/pay/R$id;->coupon_detail_desc:I

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getCalculateLine()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-le v2, v1, :cond_2

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v2, 0x0

    .line 90
    :goto_0
    sget v4, Lteam/opay/pay/R$id;->arrow:I

    .line 91
    .line 92
    invoke-virtual {p1, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getMaxLine()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getMaxLine()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    const/4 v2, -0x1

    .line 113
    if-eq v5, v2, :cond_4

    .line 114
    .line 115
    if-eq v5, v1, :cond_4

    .line 116
    .line 117
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_up:I

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_down:I

    .line 121
    .line 122
    :goto_2
    invoke-virtual {p1, v4, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 123
    .line 124
    .line 125
    :cond_5
    sget v2, Lteam/opay/pay/R$id;->date:I

    .line 126
    .line 127
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getTimeStr()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroid/widget/TextView;

    .line 139
    .line 140
    sget v3, Lteam/opay/pay/R$id;->btn_get:I

    .line 141
    .line 142
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getNoActivate()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    xor-int/2addr v1, v5

    .line 147
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 148
    .line 149
    .line 150
    filled-new-array {v3}, [I

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
    .line 163
    new-instance v4, Lfu9;

    .line 164
    .line 165
    invoke-direct {v4, p2, p0, p1}, Lfu9;-><init>(Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->enable()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setEnabled(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->enable()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    sget v4, Lteam/opay/pay/R$string;->osdk_use_only:I

    .line 191
    .line 192
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto :goto_3

    .line 197
    :cond_6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    sget v4, Lteam/opay/pay/R$string;->osdk_used_only:I

    .line 204
    .line 205
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :goto_3
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayVoucherInfo;->getTimeType()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    const/4 p2, 0x0

    .line 217
    const/4 v1, 0x2

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :pswitch_0
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    sget p2, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 230
    .line 231
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    iget p1, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->b:F

    .line 239
    .line 240
    int-to-float p2, v1

    .line 241
    mul-float v0, p1, p2

    .line 242
    .line 243
    float-to-int v0, v0

    .line 244
    float-to-int v1, p1

    .line 245
    mul-float p2, p2, p1

    .line 246
    .line 247
    float-to-int p2, p2

    .line 248
    float-to-int p1, p1

    .line 249
    invoke-virtual {v2, v0, v1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    sget p1, Lteam/opay/pay/R$drawable;->osdk_bg_fff8e1_r_4_no_r:I

    .line 253
    .line 254
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    sget p2, Lteam/opay/pay/R$color;->primary:I

    .line 263
    .line 264
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    sget p1, Lteam/opay/pay/R$drawable;->osdk_bg_e2f5eb_r_4_no_r:I

    .line 272
    .line 273
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    .line 275
    .line 276
    iget p1, p0, Lteam/opay/pay/payment/betting/NewUserTaskVoucherDialogAdapter;->b:F

    .line 277
    .line 278
    int-to-float p2, v1

    .line 279
    mul-float v0, p1, p2

    .line 280
    .line 281
    float-to-int v0, v0

    .line 282
    float-to-int v1, p1

    .line 283
    mul-float p2, p2, p1

    .line 284
    .line 285
    float-to-int p2, p2

    .line 286
    float-to-int p1, p1

    .line 287
    invoke-virtual {v2, v0, v1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    sget v1, Lteam/opay/pay/R$color;->black_65:I

    .line 296
    .line 297
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :pswitch_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    sget v1, Lteam/opay/pay/R$color;->primary:I

    .line 316
    .line 317
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    .line 329
    .line 330
    :goto_4
    return-void

    .line 331
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
