.class public final Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BundlesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashio/BundlesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J1\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lu22;",
        "binding",
        "<init>",
        "(Lu22;)V",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "bundle",
        "",
        "selected",
        "",
        "voucher",
        "",
        "currencyName",
        "",
        "a",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;ZILjava/lang/String;)V",
        "Lu22;",
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
.field public final a:Lu22;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu22;)V
    .locals 1
    .param p1    # Lu22;
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
    iget-object v0, p1, Lu22;->c:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/core/api/GraphQL$CurrencyAmount;ZILjava/lang/String;)V
    .locals 18
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "bundle"

    .line 8
    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "currencyName"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    iget-object v6, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 22
    .line 23
    iget-object v6, v6, Lu22;->b:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v7, "amount"

    .line 26
    .line 27
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-lez p3, :cond_0

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x0

    .line 35
    :goto_0
    invoke-static {v6, v7}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const/4 v11, 0x4

    .line 57
    const/4 v12, 0x0

    .line 58
    const-string v8, ".00"

    .line 59
    .line 60
    const-string v9, ""

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget-object v6, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 72
    .line 73
    iget-object v6, v6, Lu22;->b:Landroid/widget/TextView;

    .line 74
    .line 75
    sget-object v7, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 76
    .line 77
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    sget v8, Lteam/opay/pay/R$string;->osdk_electricity_payment_pay_amount:I

    .line 86
    .line 87
    sget-object v9, Lbd9;->a:Lbd9;

    .line 88
    .line 89
    invoke-virtual {v9}, Lbd9;->h()Ljava/text/DecimalFormat;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    const-string v10, "format(...)"

    .line 102
    .line 103
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/16 v16, 0x4

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const-string v13, ".00"

    .line 111
    .line 112
    const-string v14, ""

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    new-instance v12, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    new-array v3, v3, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v11, v3, v2

    .line 137
    .line 138
    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 146
    .line 147
    iget-object v2, v2, Lu22;->d:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v9}, Lbd9;->h()Ljava/text/DecimalFormat;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    add-int v5, v5, p3

    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 v15, 0x4

    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    const-string v12, ".00"

    .line 170
    .line 171
    const-string v13, ""

    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    move/from16 v1, p2

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_2
    :goto_2
    iget-object v1, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 200
    .line 201
    iget-object v1, v1, Lu22;->b:Landroid/widget/TextView;

    .line 202
    .line 203
    const-string v2, "0"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 209
    .line 210
    iget-object v1, v1, Lu22;->d:Landroid/widget/TextView;

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lteam/opay/pay/cashio/BundlesAdapter$ViewHolder;->a:Lu22;

    .line 220
    .line 221
    iget-object v1, v1, Lu22;->d:Landroid/widget/TextView;

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_3

    .line 232
    .line 233
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_3
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 237
    .line 238
    :goto_4
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    return-void
.end method
