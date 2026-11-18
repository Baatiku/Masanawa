.class public final Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SecurityCenterAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/sensesecurity/SecurityCenterItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0011\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/sensesecurity/SecurityCenterItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "source",
        "<init>",
        "(Ljava/lang/String;)V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterItem;)V",
        "a",
        "Ljava/lang/String;",
        "getSource",
        "()Ljava/lang/String;",
        "Lteam/opay/pay/util/ViewShowEventReport;",
        "b",
        "Lteam/opay/pay/util/ViewShowEventReport;",
        "report",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/util/ViewShowEventReport;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;->a:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p1, Lteam/opay/pay/util/ViewShowEventReport;

    .line 8
    .line 9
    invoke-direct {p1}, Lteam/opay/pay/util/ViewShowEventReport;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;->b:Lteam/opay/pay/util/ViewShowEventReport;

    .line 13
    .line 14
    const/16 p1, 0xb

    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_title_item:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    const/16 p1, 0xc

    .line 22
    .line 23
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_item:I

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0xd

    .line 29
    .line 30
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_item_ndic:I

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0xe

    .line 36
    .line 37
    sget v0, Lteam/opay/pay/R$layout;->osdk_security_center_item_space:I

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/sensesecurity/SecurityCenterItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/sensesecurity/SecurityCenterItem;)V
    .locals 11
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/sensesecurity/SecurityCenterItem;
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0xc

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v2, v3, :cond_7

    .line 16
    .line 17
    sget v0, Lteam/opay/pay/R$id;->btnStatus:I

    .line 18
    .line 19
    filled-new-array {v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 24
    .line 25
    .line 26
    sget v2, Lteam/opay/pay/R$id;->ivLock:I

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "getView(...)"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v5, v2

    .line 38
    check-cast v5, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->d()Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;->getCoverPic()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v6, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v6, v4

    .line 55
    :goto_0
    const/4 v9, 0x6

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-static/range {v5 .. v10}, Lme7;->f(Landroid/widget/ImageView;Ljava/lang/String;ZIILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget v2, Lteam/opay/pay/R$id;->tvTitle:I

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->d()Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object v3, v4

    .line 78
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 79
    .line 80
    .line 81
    sget v2, Lteam/opay/pay/R$id;->tvDesc:I

    .line 82
    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->d()Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-virtual {v3}, Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;->getSubhead()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    move-object v3, v4

    .line 97
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 98
    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->d()Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    invoke-virtual {v2}, Lteam/opay/pay/sensesecurity/SecurityCenterRspItem;->getStatus()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :cond_3
    const-string v2, "1"

    .line 113
    .line 114
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    sget v3, Lteam/opay/pay/R$id;->tvMore:I

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    sget v5, Lteam/opay/pay/R$string;->osdk_learned:I

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    sget v5, Lteam/opay/pay/R$string;->osdk_unlearned:I

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    sget p2, Lteam/opay/pay/R$string;->osdk_review:I

    .line 168
    .line 169
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    sget p2, Lteam/opay/pay/R$color;->primary:I

    .line 179
    .line 180
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    sget p1, Lteam/opay/pay/R$color;->osdk_color_cfeede:I

    .line 191
    .line 192
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    .line 199
    .line 200
    if-eqz p2, :cond_6

    .line 201
    .line 202
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->b()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-ne p2, v1, :cond_6

    .line 207
    .line 208
    sget p2, Lteam/opay/pay/R$string;->osdk_learn_now:I

    .line 209
    .line 210
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_6
    sget p2, Lteam/opay/pay/R$string;->osdk_take_test:I

    .line 215
    .line 216
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    .line 218
    .line 219
    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    sget p2, Lteam/opay/pay/R$color;->omain_white:I

    .line 226
    .line 227
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    sget p1, Lteam/opay/pay/R$color;->primary:I

    .line 238
    .line 239
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->n(Lcom/google/android/material/button/MaterialButton;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    const/16 v3, 0xb

    .line 248
    .line 249
    if-ne v2, v3, :cond_c

    .line 250
    .line 251
    iget-object v2, p0, Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;->b:Lteam/opay/pay/util/ViewShowEventReport;

    .line 252
    .line 253
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 254
    .line 255
    if-eqz p2, :cond_8

    .line 256
    .line 257
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->a()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    goto :goto_5

    .line 262
    :cond_8
    move-object v5, v4

    .line 263
    :goto_5
    const-string v6, "source"

    .line 264
    .line 265
    iget-object v7, p0, Lteam/opay/pay/sensesecurity/SecurityCenterAdapter;->a:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    new-array v1, v1, [Lkotlin/Pair;

    .line 272
    .line 273
    aput-object v6, v1, v0

    .line 274
    .line 275
    invoke-virtual {v2, v3, v5, v1}, Lteam/opay/pay/util/ViewShowEventReport;->c(Landroid/view/View;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 276
    .line 277
    .line 278
    sget v1, Lteam/opay/pay/R$id;->tvMore:I

    .line 279
    .line 280
    filled-new-array {v1}, [I

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 285
    .line 286
    .line 287
    sget v1, Lteam/opay/pay/R$id;->tvTitle:I

    .line 288
    .line 289
    if-eqz p2, :cond_9

    .line 290
    .line 291
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->e()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    goto :goto_6

    .line 296
    :cond_9
    move-object v2, v4

    .line 297
    :goto_6
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 298
    .line 299
    .line 300
    sget v1, Lteam/opay/pay/R$id;->tvDesc:I

    .line 301
    .line 302
    if-eqz p2, :cond_a

    .line 303
    .line 304
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->c()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    :cond_a
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 309
    .line 310
    .line 311
    sget v1, Lteam/opay/pay/R$id;->ivLogo:I

    .line 312
    .line 313
    if-eqz p2, :cond_b

    .line 314
    .line 315
    invoke-virtual {p2}, Lteam/opay/pay/sensesecurity/SecurityCenterItem;->f()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    :cond_b
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    const/16 p2, 0xe

    .line 328
    .line 329
    if-ne p1, p2, :cond_d

    .line 330
    .line 331
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 332
    .line 333
    .line 334
    :cond_d
    :goto_7
    return-void
.end method
