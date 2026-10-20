.class public final Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AirtimeRewardsBundleAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lbj7;",
        "binding",
        "<init>",
        "(Lbj7;)V",
        "Lteam/opay/pay/api/BundleInfo;",
        "bundle",
        "",
        "enabled",
        "",
        "a",
        "(Lteam/opay/pay/api/BundleInfo;Z)V",
        "Lbj7;",
        "getBinding",
        "()Lbj7;",
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
.field public final a:Lbj7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbj7;)V
    .locals 1
    .param p1    # Lbj7;
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
    invoke-virtual {p1}, Lbj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/api/BundleInfo;Z)V
    .locals 12
    .param p1    # Lteam/opay/pay/api/BundleInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "bundle"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 9
    .line 10
    iget-object v2, v2, Lbj7;->d:Landroidx/appcompat/widget/AppCompatTextView;

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
    const-string v5, ""

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    move-object v3, v5

    .line 30
    :cond_1
    invoke-static {v3}, Ljmf;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v1, v0, v4}, Lteam/opay/pay/api/BundleInfo;->getPayAmount$default(Lteam/opay/pay/api/BundleInfo;ZILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    const/4 v11, 0x0

    .line 45
    const-string v7, ".00"

    .line 46
    .line 47
    const-string v8, ""

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    move-object v6, v2

    .line 51
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->A1(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ne v2, v0, :cond_2

    .line 70
    .line 71
    sget v2, Lteam/opay/pay/R$string;->label_pay_amount_no_space:I

    .line 72
    .line 73
    new-array v4, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v3, v4, v1

    .line 76
    .line 77
    invoke-static {v2, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v4, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move-object v4, v3

    .line 84
    :cond_3
    :goto_1
    sget v2, Lteam/opay/pay/R$string;->osdk_electricity_payment_pay_amount:I

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-array v4, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v3, v4, v1

    .line 93
    .line 94
    invoke-static {v2, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v3, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 99
    .line 100
    iget-object v3, v3, Lbj7;->b:Landroid/widget/TextView;

    .line 101
    .line 102
    sget-object v4, Lnyc;->a:Lnyc;

    .line 103
    .line 104
    const/16 v6, 0x8

    .line 105
    .line 106
    invoke-virtual {v4, v2, v6}, Lnyc;->i(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 114
    .line 115
    iget-object v2, v2, Lbj7;->c:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 125
    .line 126
    iget-object v2, v2, Lbj7;->c:Landroid/widget/TextView;

    .line 127
    .line 128
    const-string v3, "cashBack"

    .line 129
    .line 130
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-lez v3, :cond_4

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    const/4 v3, 0x0

    .line 146
    :goto_2
    invoke-static {v2, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_5

    .line 150
    .line 151
    const/high16 p2, 0x3f800000    # 1.0f

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const/high16 p2, 0x3f000000    # 0.5f

    .line 155
    .line 156
    :goto_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    .line 158
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 159
    .line 160
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    check-cast v2, Landroid/view/ViewGroup;

    .line 164
    .line 165
    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    iget-object p2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 190
    .line 191
    iget-object p2, p2, Lbj7;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getProductDetail()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_7

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    const/4 v2, 0x0

    .line 210
    goto :goto_6

    .line 211
    :cond_8
    :goto_5
    const/4 v2, 0x1

    .line 212
    :goto_6
    invoke-static {p2, v2}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 213
    .line 214
    .line 215
    sget-object v2, Lnyc;->a:Lnyc;

    .line 216
    .line 217
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getProductDetail()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez v3, :cond_9

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_9
    move-object v5, v3

    .line 225
    :goto_7
    invoke-virtual {v2, v5, v6}, Lnyc;->i(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lteam/opay/pay/payment/airtime/AirtimeRewardsViewHolder;->a:Lbj7;

    .line 233
    .line 234
    iget-object p2, p2, Lbj7;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getValidDetail()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-eqz v2, :cond_b

    .line 244
    .line 245
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_a

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_a
    const/4 v0, 0x0

    .line 253
    :cond_b
    :goto_8
    invoke-static {p2, v0}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getValidDetail()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    return-void
.end method
