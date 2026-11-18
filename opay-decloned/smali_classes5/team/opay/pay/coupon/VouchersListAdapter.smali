.class public final Lteam/opay/pay/coupon/VouchersListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "VouchersListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR0\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R0\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\r\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/coupon/VouchersListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/api/QueryVoucherItem;)V",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "r",
        "()Lkotlin/jvm/functions/Function1;",
        "s",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getVoucherClickedCallback",
        "b",
        "getUseVoucherClick",
        "t",
        "useVoucherClick",
        "Ljava/text/DecimalFormat;",
        "c",
        "Ljava/text/DecimalFormat;",
        "decimalFormat",
        "",
        "d",
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
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/text/DecimalFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:F


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
    iput-object v0, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->c:Ljava/text/DecimalFormat;

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
    iput v0, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->d:F

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/VouchersListAdapter;->o(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/coupon/VouchersListAdapter;->p(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/coupon/VouchersListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/coupon/VouchersListAdapter;->q(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/coupon/VouchersListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final o(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->a:Lkotlin/jvm/functions/Function1;

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

.method public static final p(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->b:Lkotlin/jvm/functions/Function1;

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

.method public static final q(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/coupon/VouchersListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/api/QueryVoucherItem;->turnMaxLine()V

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
    check-cast p2, Lteam/opay/pay/api/QueryVoucherItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/coupon/VouchersListAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/api/QueryVoucherItem;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/api/QueryVoucherItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v2, Lteam/opay/pay/R$id;->amount:I

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getDiscountedAmount()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget v2, Lteam/opay/pay/R$id;->tv_title:I

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 37
    .line 38
    .line 39
    sget v2, Lteam/opay/pay/R$id;->date:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getTimeStr()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 46
    .line 47
    .line 48
    sget v3, Lteam/opay/pay/R$id;->coupon_detail_desc:I

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getVoucherDesc()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getTimeType()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x2

    .line 75
    packed-switch v4, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget v5, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 87
    .line 88
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget v4, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->d:F

    .line 96
    .line 97
    int-to-float v5, v6

    .line 98
    mul-float v6, v4, v5

    .line 99
    .line 100
    float-to-int v6, v6

    .line 101
    float-to-int v7, v4

    .line 102
    mul-float v5, v5, v4

    .line 103
    .line 104
    float-to-int v5, v5

    .line 105
    float-to-int v4, v4

    .line 106
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    .line 108
    .line 109
    sget v4, Lteam/opay/pay/R$drawable;->osdk_bg_fff8e1_r_4_no_r:I

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    sget v5, Lteam/opay/pay/R$color;->primary:I

    .line 120
    .line 121
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    sget v4, Lteam/opay/pay/R$drawable;->osdk_bg_e2f5eb_r_4_no_r:I

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    iget v4, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->d:F

    .line 134
    .line 135
    int-to-float v5, v6

    .line 136
    mul-float v6, v4, v5

    .line 137
    .line 138
    float-to-int v6, v6

    .line 139
    float-to-int v7, v4

    .line 140
    mul-float v5, v5, v4

    .line 141
    .line 142
    float-to-int v5, v5

    .line 143
    float-to-int v4, v4

    .line 144
    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget v6, Lteam/opay/pay/R$color;->black_65:I

    .line 153
    .line 154
    invoke-static {v4, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    sget v6, Lteam/opay/pay/R$color;->primary:I

    .line 173
    .line 174
    invoke-static {v4, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    .line 186
    .line 187
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getPayAmount()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-eqz v2, :cond_2

    .line 192
    .line 193
    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v2, :cond_2

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    goto :goto_1

    .line 204
    :cond_2
    const/4 v2, 0x0

    .line 205
    :goto_1
    sget v4, Lteam/opay/pay/R$id;->tv_available:I

    .line 206
    .line 207
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Landroid/widget/TextView;

    .line 212
    .line 213
    sget v5, Lteam/opay/pay/R$string;->osdk_voucher_start_amount_tips:I

    .line 214
    .line 215
    iget-object v6, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->c:Ljava/text/DecimalFormat;

    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v6, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    new-array v6, v0, [Ljava/lang/Object;

    .line 226
    .line 227
    aput-object v2, v6, v1

    .line 228
    .line 229
    invoke-static {v5, v6}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    sget v2, Lteam/opay/pay/R$id;->btn_get:I

    .line 237
    .line 238
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    iget-object v4, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    if-eqz v4, :cond_3

    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    sget v5, Lteam/opay/pay/R$string;->voucher_get:I

    .line 253
    .line 254
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    new-instance v4, Lj4g;

    .line 265
    .line 266
    invoke-direct {v4, p0, p2}, Lj4g;-><init>(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    sget v5, Lteam/opay/pay/R$string;->omain_use:I

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Lk4g;

    .line 290
    .line 291
    invoke-direct {v4, p0, p2}, Lk4g;-><init>(Lteam/opay/pay/coupon/VouchersListAdapter;Lteam/opay/pay/api/QueryVoucherItem;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 295
    .line 296
    .line 297
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getCalculateLine()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-le v2, v0, :cond_4

    .line 302
    .line 303
    const/4 v1, 0x1

    .line 304
    :cond_4
    sget v2, Lteam/opay/pay/R$id;->arrow:I

    .line 305
    .line 306
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Lteam/opay/pay/api/QueryVoucherItem;->getMaxLine()I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    const/4 v5, -0x1

    .line 314
    if-le v4, v5, :cond_5

    .line 315
    .line 316
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 317
    .line 318
    .line 319
    :cond_5
    if-eqz v1, :cond_7

    .line 320
    .line 321
    if-eq v4, v5, :cond_6

    .line 322
    .line 323
    if-eq v4, v0, :cond_6

    .line 324
    .line 325
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_up:I

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_6
    sget v0, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_down:I

    .line 329
    .line 330
    :goto_3
    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 331
    .line 332
    .line 333
    :cond_7
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 338
    .line 339
    new-instance v1, Ll4g;

    .line 340
    .line 341
    invoke-direct {v1, p2, p0, p1}, Ll4g;-><init>(Lteam/opay/pay/api/QueryVoucherItem;Lteam/opay/pay/coupon/VouchersListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    nop

    .line 349
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/pay/api/QueryVoucherItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/coupon/VouchersListAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
