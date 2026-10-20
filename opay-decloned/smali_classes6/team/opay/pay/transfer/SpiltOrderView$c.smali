.class public final Lteam/opay/pay/transfer/SpiltOrderView$c;
.super Ljava/lang/Object;
.source "SpiltOrderView.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/SpiltOrderView;->k(Lag8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/SpiltOrderView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/SpiltOrderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/SpiltOrderView$c;->i(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/RadioGroup;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/SpiltOrderView$c;->h(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lteam/opay/pay/transfer/SpiltOrderView;->setSpiltStatus(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final i(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/SpiltOrderView;->c(Lteam/opay/pay/transfer/SpiltOrderView;)Landroid/widget/RadioButton;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    const-string p1, "1"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "0"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/SpiltOrderView;->getOnActionListener()Lteam/opay/pay/transfer/SpiltOrderView$a;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p2, p1}, Lteam/opay/pay/transfer/SpiltOrderView$a;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Lh1g;->e:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string p1, "tvOrderTips"

    .line 34
    .line 35
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/graphql/SplitOrderResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/SpiltOrderView$c;->g(Lteam/opay/core/api/graphql/SplitOrderResponse;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g(Lteam/opay/core/api/graphql/SplitOrderResponse;Ljr2;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/SplitOrderResponse;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lteam/opay/pay/transfer/SpiltOrderView;->e(Lteam/opay/pay/transfer/SpiltOrderView;Lteam/opay/core/api/graphql/SplitOrderResponse;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 9
    .line 10
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getSplitOrderTexts()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lteam/opay/core/api/graphql/SplitOrderItemConfig;

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/SplitOrderItemConfig;->getDesc()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "1"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v2, -0x1

    .line 58
    :goto_1
    invoke-static {v2}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object p2, v0

    .line 64
    :goto_2
    const/4 v2, 0x1

    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 75
    .line 76
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v3, v3, Lh1g;->c:Landroid/widget/RadioButton;

    .line 81
    .line 82
    invoke-static {p2, v3}, Lteam/opay/pay/transfer/SpiltOrderView;->f(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/RadioButton;)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-ne p2, v2, :cond_7

    .line 94
    .line 95
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 96
    .line 97
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v3, v3, Lh1g;->d:Landroid/widget/RadioButton;

    .line 102
    .line 103
    invoke-static {p2, v3}, Lteam/opay/pay/transfer/SpiltOrderView;->f(Lteam/opay/pay/transfer/SpiltOrderView;Landroid/widget/RadioButton;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_4
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 107
    .line 108
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->c(Lteam/opay/pay/transfer/SpiltOrderView;)Landroid/widget/RadioButton;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-eqz p2, :cond_8

    .line 113
    .line 114
    iget-object v3, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 115
    .line 116
    new-instance v4, Lf2e;

    .line 117
    .line 118
    invoke-direct {v4, v3}, Lf2e;-><init>(Lteam/opay/pay/transfer/SpiltOrderView;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 125
    .line 126
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget-object p2, p2, Lh1g;->e:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getTips()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 140
    .line 141
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iget-object p2, p2, Lh1g;->c:Landroid/widget/RadioButton;

    .line 146
    .line 147
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getSplitOrderTexts()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lteam/opay/core/api/graphql/SplitOrderItemConfig;

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/SplitOrderItemConfig;->getText()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    goto :goto_5

    .line 166
    :cond_9
    move-object v3, v0

    .line 167
    :goto_5
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 171
    .line 172
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    iget-object p2, p2, Lh1g;->d:Landroid/widget/RadioButton;

    .line 177
    .line 178
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getSplitOrderTexts()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    if-eqz v3, :cond_a

    .line 183
    .line 184
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Lteam/opay/core/api/graphql/SplitOrderItemConfig;

    .line 189
    .line 190
    if-eqz v3, :cond_a

    .line 191
    .line 192
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/SplitOrderItemConfig;->getText()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move-object v3, v0

    .line 198
    :goto_6
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 202
    .line 203
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p2, p2, Lh1g;->c:Landroid/widget/RadioButton;

    .line 208
    .line 209
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getSplitOrderTexts()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-eqz v3, :cond_b

    .line 214
    .line 215
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lteam/opay/core/api/graphql/SplitOrderItemConfig;

    .line 220
    .line 221
    if-eqz v3, :cond_b

    .line 222
    .line 223
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/SplitOrderItemConfig;->getSelectState()Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v3, :cond_b

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    goto :goto_7

    .line 234
    :cond_b
    const/4 v3, 0x0

    .line 235
    :goto_7
    invoke-virtual {p2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 239
    .line 240
    invoke-static {p2}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    iget-object p2, p2, Lh1g;->d:Landroid/widget/RadioButton;

    .line 245
    .line 246
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderResponse;->getSplitOrderTexts()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-eqz p1, :cond_c

    .line 251
    .line 252
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Lteam/opay/core/api/graphql/SplitOrderItemConfig;

    .line 257
    .line 258
    if-eqz p1, :cond_c

    .line 259
    .line 260
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SplitOrderItemConfig;->getSelectState()Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-eqz p1, :cond_c

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    :cond_c
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 274
    .line 275
    sget-object p2, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 276
    .line 277
    invoke-static {p1}, Lteam/opay/pay/transfer/SpiltOrderView;->a(Lteam/opay/pay/transfer/SpiltOrderView;)Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-eqz v1, :cond_d

    .line 282
    .line 283
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-eqz v1, :cond_d

    .line 288
    .line 289
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getFormatText()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    :cond_d
    if-nez v0, :cond_e

    .line 294
    .line 295
    const-string v0, ""

    .line 296
    .line 297
    :cond_e
    invoke-virtual {p2, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-nez v0, :cond_f

    .line 302
    .line 303
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :cond_f
    invoke-static {p1, v0}, Lteam/opay/pay/transfer/SpiltOrderView;->d(Lteam/opay/pay/transfer/SpiltOrderView;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 311
    .line 312
    invoke-static {p1}, Lteam/opay/pay/transfer/SpiltOrderView;->b(Lteam/opay/pay/transfer/SpiltOrderView;)Lh1g;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iget-object p1, p1, Lh1g;->b:Landroid/widget/RadioGroup;

    .line 317
    .line 318
    iget-object p2, p0, Lteam/opay/pay/transfer/SpiltOrderView$c;->a:Lteam/opay/pay/transfer/SpiltOrderView;

    .line 319
    .line 320
    new-instance v0, Lg2e;

    .line 321
    .line 322
    invoke-direct {v0, p2}, Lg2e;-><init>(Lteam/opay/pay/transfer/SpiltOrderView;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 326
    .line 327
    .line 328
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 329
    .line 330
    return-object p1
.end method
