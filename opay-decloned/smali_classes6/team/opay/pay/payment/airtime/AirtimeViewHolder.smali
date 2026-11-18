.class public final Lteam/opay/pay/payment/airtime/AirtimeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AirtimeBundlesAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtime/AirtimeViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lvoe;",
        "binding",
        "<init>",
        "(Lvoe;)V",
        "Lteam/opay/pay/api/BundleInfo;",
        "bundle",
        "",
        "enabled",
        "",
        "b",
        "(Lteam/opay/pay/api/BundleInfo;Z)V",
        "Landroid/view/View;",
        "v",
        "",
        "dp",
        "c",
        "(Landroid/view/View;I)V",
        "a",
        "Lvoe;",
        "d",
        "()Lvoe;",
        "",
        "Lid8;",
        "e",
        "()F",
        "marginBottom",
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
.field public final a:Lvoe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvoe;)V
    .locals 1
    .param p1    # Lvoe;
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
    invoke-virtual {p1}, Lvoe;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 14
    .line 15
    new-instance p1, Loq;

    .line 16
    .line 17
    invoke-direct {p1}, Loq;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a()F
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->f()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final f()F
    .locals 1

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    .line 3
    invoke-static {v0}, Lkmf;->f(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/api/BundleInfo;Z)V
    .locals 12
    .param p1    # Lteam/opay/pay/api/BundleInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "bundle"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 9
    .line 10
    iget-object v2, v2, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v4

    .line 25
    :goto_0
    if-nez v3, :cond_1

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    :cond_1
    invoke-static {v3}, Ljmf;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getActivitePrice()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 41
    .line 42
    iget-object v3, v3, Lvoe;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string v5, "amount"

    .line 45
    .line 46
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v6, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 61
    :goto_2
    if-nez v6, :cond_4

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v6, 0x8

    .line 66
    .line 67
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_8

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    invoke-static {p1, v0, v1, v4}, Lteam/opay/pay/api/BundleInfo;->getPayAmount$default(Lteam/opay/pay/api/BundleInfo;ZILjava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    const/4 v10, 0x4

    .line 86
    const/4 v11, 0x0

    .line 87
    const-string v7, ".00"

    .line 88
    .line 89
    const-string v8, ""

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v6, v2

    .line 93
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v0}, Lkotlin/text/StringsKt;->A1(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v2, v1, :cond_6

    .line 112
    .line 113
    sget v2, Lteam/opay/pay/R$string;->label_pay_amount_no_space:I

    .line 114
    .line 115
    new-array v4, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v3, v4, v0

    .line 118
    .line 119
    invoke-static {v2, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object v4, v2

    .line 124
    goto :goto_4

    .line 125
    :cond_6
    move-object v4, v3

    .line 126
    :cond_7
    :goto_4
    sget v2, Lteam/opay/pay/R$string;->osdk_electricity_payment_pay_amount:I

    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-array v4, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v3, v4, v0

    .line 135
    .line 136
    invoke-static {v2, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v3, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 141
    .line 142
    iget-object v3, v3, Lvoe;->b:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    :goto_5
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 148
    .line 149
    iget-object v2, v2, Lvoe;->c:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 159
    .line 160
    iget-object v2, v2, Lvoe;->c:Landroid/widget/TextView;

    .line 161
    .line 162
    const-string v3, "cashBack"

    .line 163
    .line 164
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-lez p1, :cond_9

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_9
    const/4 v1, 0x0

    .line 179
    :goto_6
    invoke-static {v2, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 183
    .line 184
    iget-object p1, p1, Lvoe;->c:Landroid/widget/TextView;

    .line 185
    .line 186
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    const-string v1, "label"

    .line 194
    .line 195
    if-nez p1, :cond_b

    .line 196
    .line 197
    iget-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 198
    .line 199
    iget-object p1, p1, Lvoe;->b:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_a
    iget-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 212
    .line 213
    iget-object p1, p1, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->e()F

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    float-to-int v0, v0

    .line 223
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->c(Landroid/view/View;I)V

    .line 224
    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_b
    :goto_7
    iget-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 228
    .line 229
    iget-object p1, p1, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->c(Landroid/view/View;I)V

    .line 235
    .line 236
    .line 237
    :goto_8
    if-eqz p2, :cond_c

    .line 238
    .line 239
    const/high16 p1, 0x3f800000    # 1.0f

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_c
    const/high16 p1, 0x3f000000    # 0.5f

    .line 243
    .line 244
    :goto_9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 245
    .line 246
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 247
    .line 248
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    check-cast p2, Landroid/view/ViewGroup;

    .line 252
    .line 253
    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_d

    .line 266
    .line 267
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/view/View;

    .line 272
    .line 273
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_d
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d()Lvoe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->a:Lvoe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtime/AirtimeViewHolder;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
