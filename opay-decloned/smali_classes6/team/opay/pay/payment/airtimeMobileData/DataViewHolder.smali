.class public final Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DataBundlesAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JC\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lxoe;",
        "binding",
        "<init>",
        "(Lxoe;)V",
        "Lteam/opay/pay/api/BundleInfo;",
        "bundle",
        "",
        "b",
        "(Lteam/opay/pay/api/BundleInfo;)V",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "title",
        "g",
        "(Landroid/widget/TextView;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "v1",
        "v2",
        "v3",
        "",
        "showCount",
        "",
        "bottomColor",
        "oldMoney",
        "f",
        "(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZZ)V",
        "v",
        "dp",
        "h",
        "(Landroid/view/View;I)V",
        "a",
        "Lxoe;",
        "d",
        "()Lxoe;",
        "",
        "Lid8;",
        "e",
        "()F",
        "fourDp",
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
.field public final a:Lxoe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxoe;)V
    .locals 1
    .param p1    # Lxoe;
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
    invoke-virtual {p1}, Lxoe;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 14
    .line 15
    new-instance p1, Lw23;

    .line 16
    .line 17
    invoke-direct {p1}, Lw23;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a()F
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final c()F
    .locals 1

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

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
.method public final b(Lteam/opay/pay/api/BundleInfo;)V
    .locals 19
    .param p1    # Lteam/opay/pay/api/BundleInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "bundle"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 13
    .line 14
    iget-object v0, v0, Lxoe;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    const-string v1, "dataItemTitle"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getShortTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v10, ""

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    move-object v2, v10

    .line 30
    :cond_0
    invoke-virtual {v7, v0, v2}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 34
    .line 35
    iget-object v0, v0, Lxoe;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const-string v2, "dataItemSubTitle"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getSubTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    move-object v3, v10

    .line 49
    :cond_1
    invoke-virtual {v7, v0, v3}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getActivitePrice()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v3, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 57
    .line 58
    iget-object v3, v3, Lxoe;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    const-string v4, "amountLab"

    .line 61
    .line 62
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v11, 0x0

    .line 68
    invoke-static {v8, v4, v5, v11}, Lteam/opay/pay/api/BundleInfo;->getPayAmount$default(Lteam/opay/pay/api/BundleInfo;ZILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    if-eqz v12, :cond_2

    .line 73
    .line 74
    const/16 v16, 0x4

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const-string v13, ".00"

    .line 79
    .line 80
    const-string v14, ""

    .line 81
    .line 82
    const/4 v15, 0x0

    .line 83
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move-object v6, v11

    .line 89
    :goto_0
    if-nez v6, :cond_3

    .line 90
    .line 91
    move-object v6, v10

    .line 92
    :cond_3
    invoke-virtual {v7, v3, v6}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v0, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 107
    :goto_2
    iget-object v3, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 108
    .line 109
    iget-object v3, v3, Lxoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    const-string v6, "amountOld"

    .line 112
    .line 113
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/16 v12, 0x8

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    const/16 v13, 0x8

    .line 123
    .line 124
    :goto_3
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    iget-object v3, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 130
    .line 131
    iget-object v3, v3, Lxoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    or-int/lit8 v13, v13, 0x10

    .line 138
    .line 139
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 143
    .line 144
    iget-object v3, v3, Lxoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    sget-object v13, Lbd9;->a:Lbd9;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    if-eqz v14, :cond_7

    .line 153
    .line 154
    invoke-virtual {v14}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    if-nez v14, :cond_8

    .line 159
    .line 160
    :cond_7
    const-string v14, "0"

    .line 161
    .line 162
    :cond_8
    sget-object v15, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 163
    .line 164
    const/16 v17, 0x4

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    invoke-static/range {v13 .. v18}, Lbd9;->q(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const/4 v3, 0x4

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    const/4 v3, 0x3

    .line 180
    :goto_4
    iget-object v13, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 181
    .line 182
    iget-object v13, v13, Lxoe;->m:Landroid/view/View;

    .line 183
    .line 184
    const-string v14, "vVoucher"

    .line 185
    .line 186
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-nez v0, :cond_a

    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    const/16 v0, 0x8

    .line 194
    .line 195
    :goto_5
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getBottomText()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_b

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_b
    const/4 v0, 0x0

    .line 212
    goto :goto_7

    .line 213
    :cond_c
    :goto_6
    const/4 v0, 0x1

    .line 214
    :goto_7
    iget-object v13, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 215
    .line 216
    iget-object v13, v13, Lxoe;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    const-string v14, "specialLab"

    .line 219
    .line 220
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v13, v0}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 224
    .line 225
    .line 226
    iget-object v13, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 227
    .line 228
    iget-object v13, v13, Lxoe;->i:Landroid/widget/ImageView;

    .line 229
    .line 230
    const-string v15, "ivNotice"

    .line 231
    .line 232
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    if-nez v0, :cond_d

    .line 236
    .line 237
    const/4 v15, 0x0

    .line 238
    goto :goto_8

    .line 239
    :cond_d
    const/16 v15, 0x8

    .line 240
    .line 241
    :goto_8
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    iget-object v13, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 245
    .line 246
    iget-object v13, v13, Lxoe;->l:Landroid/view/View;

    .line 247
    .line 248
    const-string v15, "vBottomTextBg"

    .line 249
    .line 250
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    if-nez v0, :cond_e

    .line 254
    .line 255
    const/4 v12, 0x0

    .line 256
    :cond_e
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 260
    .line 261
    iget-object v0, v0, Lxoe;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getBottomText()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 271
    .line 272
    iget-object v0, v0, Lxoe;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 273
    .line 274
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_f

    .line 282
    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 284
    .line 285
    :cond_f
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 286
    .line 287
    iget-object v0, v0, Lxoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    const-string v12, "cashBack"

    .line 290
    .line 291
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-virtual {v7, v0, v13}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->g(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 302
    .line 303
    iget-object v0, v0, Lxoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 304
    .line 305
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    if-nez v13, :cond_10

    .line 317
    .line 318
    const/4 v13, 0x1

    .line 319
    goto :goto_9

    .line 320
    :cond_10
    const/4 v13, 0x0

    .line 321
    :goto_9
    invoke-static {v0, v13}, Lteam/opay/core/android/ViewKt;->f(Landroid/view/View;Z)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 325
    .line 326
    iget-object v0, v0, Lxoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    .line 328
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-nez v0, :cond_11

    .line 336
    .line 337
    add-int/lit8 v3, v3, 0x1

    .line 338
    .line 339
    :cond_11
    move v13, v3

    .line 340
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 341
    .line 342
    iget-object v0, v0, Lxoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 343
    .line 344
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_12

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_12
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 355
    .line 356
    iget-object v0, v0, Lxoe;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 357
    .line 358
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_13

    .line 366
    .line 367
    :goto_a
    const/4 v12, 0x1

    .line 368
    goto :goto_b

    .line 369
    :cond_13
    const/4 v12, 0x0

    .line 370
    :goto_b
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 371
    .line 372
    iget-object v3, v0, Lxoe;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 373
    .line 374
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 378
    .line 379
    iget-object v15, v0, Lxoe;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 380
    .line 381
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 385
    .line 386
    iget-object v2, v0, Lxoe;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 387
    .line 388
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 392
    .line 393
    iget-object v0, v0, Lxoe;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
    .line 395
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-nez v0, :cond_14

    .line 403
    .line 404
    const/4 v6, 0x1

    .line 405
    goto :goto_c

    .line 406
    :cond_14
    const/4 v6, 0x0

    .line 407
    :goto_c
    move-object/from16 v0, p0

    .line 408
    .line 409
    move-object v1, v3

    .line 410
    move-object v3, v2

    .line 411
    move-object v2, v15

    .line 412
    move v4, v13

    .line 413
    move v5, v12

    .line 414
    invoke-virtual/range {v0 .. v6}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->f(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZZ)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getEffectsIcon()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v1, "effectsIc"

    .line 422
    .line 423
    if-eqz v0, :cond_17

    .line 424
    .line 425
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-nez v0, :cond_15

    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_15
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 433
    .line 434
    iget-object v0, v0, Lxoe;->h:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 435
    .line 436
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 443
    .line 444
    iget-object v0, v0, Lxoe;->h:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 445
    .line 446
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getEffectsIcon()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    if-nez v1, :cond_16

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_16
    move-object v10, v1

    .line 454
    :goto_d
    const/4 v1, 0x2

    .line 455
    invoke-static {v0, v10, v11, v1, v11}, Lcom/opay/team/newhome/home/ImageLottieView;->v(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;ILjava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    goto :goto_f

    .line 459
    :cond_17
    :goto_e
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 460
    .line 461
    iget-object v0, v0, Lxoe;->h:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 462
    .line 463
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 467
    .line 468
    .line 469
    :goto_f
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    sget v1, Lteam/opay/pay/R$color;->black_85:I

    .line 474
    .line 475
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    sget v3, Lteam/opay/pay/R$color;->black_65:I

    .line 484
    .line 485
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-static {v4, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    sget v5, Lteam/opay/pay/R$color;->color_00B876:I

    .line 502
    .line 503
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BundleInfo;->getBackgroundColor()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    const-string v6, "animtorBox"

    .line 512
    .line 513
    if-eqz v5, :cond_19

    .line 514
    .line 515
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    if-nez v5, :cond_18

    .line 520
    .line 521
    goto :goto_10

    .line 522
    :cond_18
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 523
    .line 524
    iget-object v0, v0, Lxoe;->d:Landroid/widget/ImageView;

    .line 525
    .line 526
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    sget v2, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 537
    .line 538
    invoke-static {v0, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-static {v2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v3, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    sget v4, Lteam/opay/pay/R$color;->osdk_ea597b:I

    .line 563
    .line 564
    invoke-static {v1, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    goto :goto_11

    .line 569
    :cond_19
    :goto_10
    iget-object v1, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 570
    .line 571
    iget-object v1, v1, Lxoe;->d:Landroid/widget/ImageView;

    .line 572
    .line 573
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 577
    .line 578
    .line 579
    :goto_11
    iget-object v1, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 580
    .line 581
    iget-object v1, v1, Lxoe;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 582
    .line 583
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 584
    .line 585
    .line 586
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 587
    .line 588
    iget-object v0, v0, Lxoe;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 589
    .line 590
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    .line 592
    .line 593
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 594
    .line 595
    iget-object v0, v0, Lxoe;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 596
    .line 597
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    .line 599
    .line 600
    iget-object v0, v7, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 601
    .line 602
    iget-object v0, v0, Lxoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 603
    .line 604
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    .line 606
    .line 607
    return-void
.end method

.method public final d()Lxoe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->a:Lxoe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->b:Lid8;

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

.method public final f(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZZ)V
    .locals 4

    .line 1
    const/high16 v0, 0x41b00000    # 22.0f

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    if-eq p4, v2, :cond_4

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq p4, v3, :cond_2

    .line 9
    .line 10
    const/4 p5, 0x5

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eq p4, p5, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    :goto_0
    int-to-float p6, v2

    .line 23
    :goto_1
    mul-float p5, p5, p6

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-eqz p6, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    :goto_2
    int-to-float p6, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-eqz p5, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    int-to-float p5, v1

    .line 67
    mul-float p4, p4, p5

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 70
    .line 71
    .line 72
    move-result p6

    .line 73
    mul-float p5, p5, p6

    .line 74
    .line 75
    invoke-static {v0}, Lkmf;->f(F)F

    .line 76
    .line 77
    .line 78
    move-result p6

    .line 79
    move v0, p5

    .line 80
    :goto_3
    move p5, p6

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    int-to-float p5, v1

    .line 87
    mul-float p4, p4, p5

    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->e()F

    .line 90
    .line 91
    .line 92
    move-result p6

    .line 93
    mul-float p5, p5, p6

    .line 94
    .line 95
    invoke-static {v0}, Lkmf;->f(F)F

    .line 96
    .line 97
    .line 98
    move-result p6

    .line 99
    move v0, p4

    .line 100
    move p4, p5

    .line 101
    goto :goto_3

    .line 102
    :goto_4
    float-to-int p5, p5

    .line 103
    invoke-virtual {p0, p1, p5}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->h(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    float-to-int p1, v0

    .line 107
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->h(Landroid/view/View;I)V

    .line 108
    .line 109
    .line 110
    float-to-int p1, p4

    .line 111
    invoke-virtual {p0, p3, p1}, Lteam/opay/pay/payment/airtimeMobileData/DataViewHolder;->h(Landroid/view/View;I)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final g(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ltx9;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Landroid/view/View;I)V
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
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
