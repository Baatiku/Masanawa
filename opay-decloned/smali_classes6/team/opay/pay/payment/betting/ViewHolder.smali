.class public final Lteam/opay/pay/payment/betting/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BettingBundlesAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lvoe;",
        "binding",
        "<init>",
        "(Lvoe;)V",
        "Landroid/view/View;",
        "v",
        "",
        "dp",
        "",
        "c",
        "(Landroid/view/View;I)V",
        "Lteam/opay/pay/payment/betting/BettingBundle;",
        "bundle",
        "",
        "selected",
        "b",
        "(Lteam/opay/pay/payment/betting/BettingBundle;Z)V",
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
    iput-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 14
    .line 15
    new-instance p1, Lszf;

    .line 16
    .line 17
    invoke-direct {p1}, Lszf;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a()F
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/betting/ViewHolder;->f()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final c(Landroid/view/View;I)V
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

.method private final e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/ViewHolder;->b:Lid8;

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

.method private static final f()F
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
.method public final b(Lteam/opay/pay/payment/betting/BettingBundle;Z)V
    .locals 8
    .param p1    # Lteam/opay/pay/payment/betting/BettingBundle;
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
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 11
    .line 12
    iget-object v3, v3, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, ""

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    move-object v4, v5

    .line 27
    :cond_0
    invoke-static {v4}, Ljmf;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget v4, Lteam/opay/pay/R$color;->primary:I

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget v3, Lteam/opay/pay/R$string;->osdk_electricity_payment_pay_amount:I

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->f()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-array v6, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v5, v6, v0

    .line 62
    .line 63
    invoke-static {v3, v6}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->e()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    sget v4, Lteam/opay/pay/R$color;->osdk_0091FF:I

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->e()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    :cond_4
    :goto_1
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 88
    .line 89
    iget-object v3, v3, Lvoe;->b:Landroid/widget/TextView;

    .line 90
    .line 91
    const-string v6, "amount"

    .line 92
    .line 93
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-lez v7, :cond_5

    .line 101
    .line 102
    const/4 v7, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/4 v7, 0x0

    .line 105
    :goto_2
    if-eqz v7, :cond_6

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    const/16 v7, 0x8

    .line 110
    .line 111
    :goto_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_7

    .line 119
    .line 120
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 121
    .line 122
    iget-object v3, v3, Lvoe;->b:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 128
    .line 129
    iget-object v3, v3, Lvoe;->b:Landroid/widget/TextView;

    .line 130
    .line 131
    sget-object v5, Lhh2;->a:Lhh2;

    .line 132
    .line 133
    invoke-virtual {v5, v4}, Lhh2;->a(I)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    :cond_7
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 141
    .line 142
    iget-object v3, v3, Lvoe;->c:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->d()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 152
    .line 153
    iget-object v3, v3, Lvoe;->c:Landroid/widget/TextView;

    .line 154
    .line 155
    const-string v4, "cashBack"

    .line 156
    .line 157
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingBundle;->d()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-lez p1, :cond_8

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    const/4 v1, 0x0

    .line 172
    :goto_4
    invoke-static {v3, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 176
    .line 177
    iget-object p1, p1, Lvoe;->c:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    const-string v1, "label"

    .line 187
    .line 188
    if-nez p1, :cond_a

    .line 189
    .line 190
    iget-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 191
    .line 192
    iget-object p1, p1, Lvoe;->b:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_9

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_9
    iget-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 205
    .line 206
    iget-object p1, p1, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/ViewHolder;->e()F

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    float-to-int v0, v0

    .line 216
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/payment/betting/ViewHolder;->c(Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_a
    :goto_5
    iget-object p1, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 221
    .line 222
    iget-object p1, p1, Lvoe;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/payment/betting/ViewHolder;->c(Landroid/view/View;I)V

    .line 228
    .line 229
    .line 230
    :goto_6
    invoke-virtual {v2, p2}, Landroid/view/View;->setSelected(Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    const/high16 p1, 0x3f800000    # 1.0f

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_b
    const/high16 p1, 0x3f000000    # 0.5f

    .line 243
    .line 244
    :goto_7
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
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_c

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
    goto :goto_8

    .line 277
    :cond_c
    return-void
.end method

.method public final d()Lvoe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/ViewHolder;->a:Lvoe;

    .line 2
    .line 3
    return-object v0
.end method
