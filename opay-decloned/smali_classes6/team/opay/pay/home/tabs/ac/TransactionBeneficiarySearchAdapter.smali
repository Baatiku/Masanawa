.class public final Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TransactionBeneficiarySearchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR0\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00080\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "data",
        "",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "role_tag",
        "item",
        "o",
        "(Landroidx/appcompat/widget/AppCompatImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "setItemClicked",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
        "",
        "b",
        "Ljava/lang/String;",
        "getSearchKey",
        "()Ljava/lang/String;",
        "n",
        "(Ljava/lang/String;)V",
        "searchKey",
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
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_transaction_beneficiary_search:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyre;

    .line 7
    .line 8
    invoke-direct {v0}, Lyre;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->m(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 16
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "helper"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Lteam/opay/core/android/ContextKt;->j(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget v3, Lteam/opay/pay/R$id;->icon:I

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v4, v3

    .line 40
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    .line 42
    sget v3, Lteam/opay/pay/R$id;->title:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    sget v5, Lteam/opay/pay/R$id;->role_tag:I

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v11, v5

    .line 57
    check-cast v11, Lteam/opay/core/android/views/ResizableImageView;

    .line 58
    .line 59
    sget v5, Lteam/opay/pay/R$id;->content:I

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v12, v5

    .line 66
    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    sget v5, Lteam/opay/pay/R$id;->tvTag:I

    .line 69
    .line 70
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v13, v5

    .line 75
    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    sget v5, Lteam/opay/pay/R$id;->line:I

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getShowType()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v15, 0x0

    .line 88
    const/4 v10, 0x1

    .line 89
    if-nez v5, :cond_2

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const/4 v6, 0x2

    .line 98
    if-ne v5, v6, :cond_6

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    sget v6, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 107
    .line 108
    const/4 v8, 0x4

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    invoke-static/range {v4 .. v9}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    :cond_4
    const/4 v11, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->b:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const/4 v9, 0x4

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    move-object v5, v3

    .line 144
    const/4 v11, 0x1

    .line 145
    move-object v10, v4

    .line 146
    invoke-static/range {v5 .. v10}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->b:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, "  "

    .line 178
    .line 179
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v12, v3, v2, v11}, Lxie;->f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v1, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v14}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v13}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 212
    .line 213
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    sget v6, Lteam/opay/pay/R$mipmap;->osdk_ic_transfer_contact_avatar:I

    .line 218
    .line 219
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v4, v5, v6}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_8

    .line 231
    .line 232
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-nez v4, :cond_9

    .line 237
    .line 238
    :cond_8
    const/4 v4, 0x1

    .line 239
    goto :goto_3

    .line 240
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->b:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-nez v4, :cond_a

    .line 253
    .line 254
    const-string v4, ""

    .line 255
    .line 256
    :cond_a
    move-object v7, v4

    .line 257
    const/4 v9, 0x4

    .line 258
    const/4 v4, 0x0

    .line 259
    const/4 v8, 0x0

    .line 260
    move-object v5, v3

    .line 261
    const/4 v3, 0x1

    .line 262
    move-object v10, v4

    .line 263
    invoke-static/range {v5 .. v10}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    const/4 v4, 0x1

    .line 267
    goto :goto_4

    .line 268
    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    :goto_4
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->b:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-static {v5}, Lsob;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {v12, v3, v5, v4}, Lxie;->f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    .line 289
    .line 290
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v11, v2}, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->o(Landroidx/appcompat/widget/AppCompatImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getShowType()Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    if-nez v3, :cond_b

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    const/4 v5, 0x3

    .line 308
    if-ne v3, v5, :cond_e

    .line 309
    .line 310
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v14}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 317
    .line 318
    sget v3, Lteam/opay/pay/R$drawable;->shape_corner_f8f8fb_12:I

    .line 319
    .line 320
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 321
    .line 322
    .line 323
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getOpayUserlable()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_d

    .line 331
    .line 332
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_c

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_c
    const/4 v10, 0x0

    .line 340
    goto :goto_6

    .line 341
    :cond_d
    :goto_5
    const/4 v10, 0x1

    .line 342
    :goto_6
    xor-int/lit8 v1, v10, 0x1

    .line 343
    .line 344
    invoke-static {v13, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getOpayUserlable()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_e
    :goto_7
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v14}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {v1, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v13}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    :goto_8
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/TransactionBeneficiarySearchAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroidx/appcompat/widget/AppCompatImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getGrowthLevelLogo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getGrowthLevelLogo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, p2, v2, v0, v1}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method
