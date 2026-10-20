.class public final Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;
.super Lcom/chad/library/adapter/base/BaseViewHolder;
.source "SettingsConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/security/SettingsConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsConfigViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/pay/home/security/SettingsConfigAdapter;Landroid/view/View;)V",
        "Lteam/opay/pay/home/security/SettingsItemData;",
        "item",
        "",
        "a",
        "(Lteam/opay/pay/home/security/SettingsItemData;)V",
        "Lkbd;",
        "Lkbd;",
        "binding",
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
.field public final a:Lkbd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/home/security/SettingsConfigAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/SettingsConfigAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/SettingsConfigAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->b:Lteam/opay/pay/home/security/SettingsConfigAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {p1}, Lkbd;->bind(Landroid/view/View;)Lkbd;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "bind(...)"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/home/security/SettingsItemData;)V
    .locals 21
    .param p1    # Lteam/opay/pay/home/security/SettingsItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "item"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/home/security/SettingsItemData;->b()Lteam/opay/pay/home/security/SettingsItemPositon;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const-string v4, "marginView"

    .line 24
    .line 25
    if-eq v1, v3, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v1, v5, :cond_2

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    if-eq v1, v5, :cond_1

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v1, v5, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 37
    .line 38
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 47
    .line 48
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget v5, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 57
    .line 58
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 67
    .line 68
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_1
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 73
    .line 74
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 75
    .line 76
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 83
    .line 84
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    .line 86
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sget v5, Lteam/opay/pay/R$drawable;->shape_white_bottom_12:I

    .line 93
    .line 94
    invoke-static {v4, v5}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 103
    .line 104
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 105
    .line 106
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 113
    .line 114
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 115
    .line 116
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    sget v5, Lteam/opay/pay/R$drawable;->shape_white_top_12:I

    .line 123
    .line 124
    invoke-static {v4, v5}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 133
    .line 134
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 135
    .line 136
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 143
    .line 144
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 145
    .line 146
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget v5, Lteam/opay/pay/R$drawable;->shape_corner_white_12:I

    .line 153
    .line 154
    invoke-static {v4, v5}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iget-object v4, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->b:Lteam/opay/pay/home/security/SettingsConfigAdapter;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    sub-int/2addr v4, v3

    .line 172
    if-ne v1, v4, :cond_4

    .line 173
    .line 174
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 175
    .line 176
    iget-object v1, v1, Lkbd;->i:Landroid/view/View;

    .line 177
    .line 178
    const-string v3, "marginViewBottom"

    .line 179
    .line 180
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/home/security/SettingsItemData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v4, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->b:Lteam/opay/pay/home/security/SettingsConfigAdapter;

    .line 195
    .line 196
    invoke-static {v3}, Ljzf;->b(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_5

    .line 201
    .line 202
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 203
    .line 204
    iget-object v4, v3, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sget v6, Lcom/opay/webview/R$drawable;->opay_logo:I

    .line 211
    .line 212
    const/16 v11, 0x3c

    .line 213
    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    const/4 v8, 0x0

    .line 217
    const/4 v9, 0x0

    .line 218
    const/4 v10, 0x0

    .line 219
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 224
    .line 225
    iget-object v3, v3, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 226
    .line 227
    invoke-static {v3}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageIconUrl()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v4}, Lteam/opay/pay/home/security/SettingsConfigAdapter;->k(Lteam/opay/pay/home/security/SettingsConfigAdapter;)Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    sget v6, Lcom/opay/webview/R$drawable;->opay_logo:I

    .line 244
    .line 245
    invoke-static {v5, v6}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    check-cast v3, Ljpc;

    .line 254
    .line 255
    invoke-static {v4}, Lteam/opay/pay/home/security/SettingsConfigAdapter;->k(Lteam/opay/pay/home/security/SettingsConfigAdapter;)Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v4, v6}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->o(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    check-cast v3, Ljpc;

    .line 268
    .line 269
    iget-object v4, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 270
    .line 271
    iget-object v4, v4, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 272
    .line 273
    invoke-virtual {v3, v4}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :goto_1
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 281
    .line 282
    iget-object v3, v3, Lkbd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v4}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getDescription()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    const-string v4, "descTv"

    .line 300
    .line 301
    if-eqz v3, :cond_7

    .line 302
    .line 303
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_6

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_6
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 311
    .line 312
    iget-object v3, v3, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getDescription()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 322
    .line 323
    iget-object v3, v3, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getRich_desc()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    if-eqz v3, :cond_9

    .line 337
    .line 338
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-nez v3, :cond_8

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_8
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 346
    .line 347
    iget-object v3, v3, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getRich_desc()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-static {v5}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 361
    .line 362
    iget-object v3, v3, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_9
    :goto_3
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 372
    .line 373
    iget-object v3, v3, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 374
    .line 375
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    :goto_4
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    const-string v4, "tagNew"

    .line 390
    .line 391
    if-lez v3, :cond_b

    .line 392
    .line 393
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 394
    .line 395
    iget-object v3, v3, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 396
    .line 397
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-static {v6}, Ljzf;->b(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_a

    .line 412
    .line 413
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 414
    .line 415
    iget-object v5, v1, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 416
    .line 417
    const/16 v12, 0x3e

    .line 418
    .line 419
    const/4 v13, 0x0

    .line 420
    const/4 v7, 0x0

    .line 421
    const/4 v8, 0x0

    .line 422
    const/4 v9, 0x0

    .line 423
    const/4 v10, 0x0

    .line 424
    const/4 v11, 0x0

    .line 425
    invoke-static/range {v5 .. v13}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_8

    .line 429
    .line 430
    :cond_a
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 431
    .line 432
    iget-object v1, v1, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 433
    .line 434
    invoke-static {v1}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 443
    .line 444
    iget-object v3, v3, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 445
    .line 446
    invoke-virtual {v1, v3}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_b
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    const/4 v5, 0x0

    .line 459
    if-eqz v3, :cond_c

    .line 460
    .line 461
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    goto :goto_5

    .line 466
    :cond_c
    move-object v3, v5

    .line 467
    :goto_5
    if-eqz v3, :cond_10

    .line 468
    .line 469
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-nez v3, :cond_d

    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_d
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 477
    .line 478
    iget-object v3, v3, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 479
    .line 480
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 487
    .line 488
    iget-object v6, v3, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 489
    .line 490
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    if-eqz v3, :cond_e

    .line 495
    .line 496
    invoke-virtual {v3}, Lteam/opay/odialog/net/AdDataItem;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v5

    .line 500
    :cond_e
    if-nez v5, :cond_f

    .line 501
    .line 502
    const-string v3, ""

    .line 503
    .line 504
    move-object v7, v3

    .line 505
    goto :goto_6

    .line 506
    :cond_f
    move-object v7, v5

    .line 507
    :goto_6
    const/16 v13, 0x3e

    .line 508
    .line 509
    const/4 v14, 0x0

    .line 510
    const/4 v8, 0x0

    .line 511
    const/4 v9, 0x0

    .line 512
    const/4 v10, 0x0

    .line 513
    const/4 v11, 0x0

    .line 514
    const/4 v12, 0x0

    .line 515
    invoke-static/range {v6 .. v14}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    sget-object v15, Lx7b;->a:Lx7b;

    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 521
    .line 522
    .line 523
    move-result-object v16

    .line 524
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    const/16 v19, 0x4

    .line 528
    .line 529
    const/16 v20, 0x0

    .line 530
    .line 531
    const-string v17, "SETTING"

    .line 532
    .line 533
    const/16 v18, 0x0

    .line 534
    .line 535
    invoke-static/range {v15 .. v20}, Lx7b;->G(Lx7b;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    goto :goto_8

    .line 539
    :cond_10
    :goto_7
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 540
    .line 541
    iget-object v1, v1, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 542
    .line 543
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 547
    .line 548
    .line 549
    :goto_8
    iget-object v1, v0, Lteam/opay/pay/home/security/SettingsConfigAdapter$SettingsConfigViewHolder;->a:Lkbd;

    .line 550
    .line 551
    iget-object v1, v1, Lkbd;->d:Landroid/view/View;

    .line 552
    .line 553
    const-string v3, "dot"

    .line 554
    .line 555
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/home/security/SettingsItemData;->c()Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 563
    .line 564
    .line 565
    return-void
.end method
