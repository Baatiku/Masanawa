.class public final Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "CashBackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000fR\u0018\u0010\u0014\u001a\u00020\u0011*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "Lw56;",
        "binding",
        "<init>",
        "(Lw56;)V",
        "",
        "position",
        "data",
        "",
        "c",
        "(ILteam/opay/business/transfer/flow/api/CashBackBean;)V",
        "a",
        "Lw56;",
        "()Lw56;",
        "Ljava/util/Date;",
        "",
        "b",
        "(Ljava/util/Date;)Ljava/lang/String;",
        "detailTimeFormat",
        "business-transfer-flow_release"
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
.field public final a:Lw56;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw56;)V
    .locals 1
    .param p1    # Lw56;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lw56;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "d MMM, yyyy, HH:mm"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "format(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public c(ILteam/opay/business/transfer/flow/api/CashBackBean;)V
    .locals 11
    .param p2    # Lteam/opay/business/transfer/flow/api/CashBackBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->b()Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_c

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 15
    .line 16
    invoke-virtual {v1}, Lw56;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 25
    .line 26
    iget-object v3, v2, Lw56;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    const-string v2, "typeIcon"

    .line 29
    .line 30
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget v5, Lteam/opay/core/common/R$drawable;->common_default_logo_grey:I

    .line 38
    .line 39
    const/16 v9, 0x1c

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-static/range {v3 .. v10}, Lteam/opay/core/common/android/glide/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 49
    .line 50
    iget-object v2, v2, Lw56;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->k()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, ""

    .line 57
    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    move-object v3, v4

    .line 61
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 65
    .line 66
    iget-object v2, v2, Lw56;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->h()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v5, "SUBTRACT"

    .line 73
    .line 74
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const-string v6, "PLUS"

    .line 79
    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    const-string v3, "-"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    const-string v3, "+"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-object v3, v4

    .line 95
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->h()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 v3, 0x0

    .line 110
    :goto_1
    invoke-static {v2, v3}, Lg0g;->j(Landroid/view/View;Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->b()Lteam/opay/core/common/amount/MoneyAmount;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2, v4}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object v2, v3

    .line 126
    :goto_2
    if-nez v2, :cond_5

    .line 127
    .line 128
    move-object v2, v4

    .line 129
    :cond_5
    iget-object v5, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 130
    .line 131
    iget-object v5, v5, Lw56;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->h()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    sget v2, Lteam/opay/core/common/R$color;->mint:I

    .line 147
    .line 148
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    goto :goto_3

    .line 153
    :cond_6
    sget v2, Lteam/opay/business/transfer/flow/R$color;->flow_dc0c48:I

    .line 154
    .line 155
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_3
    iget-object v5, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 160
    .line 161
    iget-object v5, v5, Lw56;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v5, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 167
    .line 168
    iget-object v5, v5, Lw56;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->c()Lteam/opay/core/common/amount/MoneyAmount;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount;->getCurrency()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    goto :goto_4

    .line 184
    :cond_7
    move-object v2, v3

    .line 185
    :goto_4
    sget v5, Lteam/opay/business/transfer/flow/R$string;->flow_invalid_currency:I

    .line 186
    .line 187
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_8

    .line 196
    .line 197
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 198
    .line 199
    iget-object p1, p1, Lw56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    const-string v0, "balanceAfter"

    .line 202
    .line 203
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_8
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->c()Lteam/opay/core/common/amount/MoneyAmount;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_9

    .line 215
    .line 216
    iget-object v5, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 217
    .line 218
    iget-object v5, v5, Lw56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    .line 220
    sget v6, Lteam/opay/business/transfer/flow/R$string;->flow_wallet_remainder:I

    .line 221
    .line 222
    invoke-virtual {v2, v4}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object v2, v0, p1

    .line 229
    .line 230
    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v5}, Lg0g;->h(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    :goto_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->a:Lw56;

    .line 244
    .line 245
    iget-object p1, p1, Lw56;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackItem;->d()Ljava/util/Date;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    if-eqz p2, :cond_a

    .line 252
    .line 253
    invoke-virtual {p0, p2}, Lteam/opay/business/transfer/flow/cashback/ItemViewHolder;->b(Ljava/util/Date;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    :cond_a
    if-nez v3, :cond_b

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    move-object v4, v3

    .line 261
    :goto_6
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    :cond_c
    return-void
.end method
