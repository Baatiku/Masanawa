.class public final Lteam/opay/pay/home/security/SecuritySettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SecuritySettingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/SecuritySettingViewHolder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\u0004\u0018\u00010\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SecuritySettingViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkbd;",
        "binding",
        "<init>",
        "(Lkbd;)V",
        "Lteam/opay/pay/home/security/SecuritySetting;",
        "setting",
        "",
        "isBottom",
        "",
        "b",
        "(Lteam/opay/pay/home/security/SecuritySetting;Z)V",
        "e",
        "()V",
        "a",
        "Lkbd;",
        "d",
        "()Lkbd;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "Lid8;",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
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

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkbd;)V
    .locals 1
    .param p1    # Lkbd;
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
    invoke-virtual {p1}, Lkbd;->a()Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 14
    .line 15
    new-instance p1, Lpcd;

    .line 16
    .line 17
    invoke-direct {p1}, Lpcd;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->c()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/home/security/SecuritySetting;Z)V
    .locals 5
    .param p1    # Lteam/opay/pay/home/security/SecuritySetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setting"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getDrawableRes()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getTint()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 21
    .line 22
    iget-object v1, v1, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getTint()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v2, v3}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 41
    .line 42
    iget-object v1, v1, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 49
    .line 50
    iget-object v1, v1, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getDrawableRes()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 65
    .line 66
    iget-object v1, v1, Lkbd;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 67
    .line 68
    const-string v2, "icon"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 77
    .line 78
    iget-object v1, v1, Lkbd;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 79
    .line 80
    const-string v2, "chevron"

    .line 81
    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getShowChevron()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 93
    .line 94
    iget-object v1, v1, Lkbd;->d:Landroid/view/View;

    .line 95
    .line 96
    const-string v2, "dot"

    .line 97
    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getShowDot()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 109
    .line 110
    iget-object v1, v1, Lkbd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getTextRes()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 120
    .line 121
    iget-object v1, v1, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    const-string v2, "descTv"

    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getRightText()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v3, 0x1

    .line 137
    if-lez v2, :cond_2

    .line 138
    .line 139
    const/4 v2, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    const/4 v2, 0x0

    .line 142
    :goto_2
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 146
    .line 147
    iget-object v1, v1, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getRightText()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getRightTextColor()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const/4 v2, -0x1

    .line 161
    if-eq v1, v2, :cond_3

    .line 162
    .line 163
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 164
    .line 165
    iget-object v1, v1, Lkbd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getRightTextColor()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-static {v2, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    .line 181
    .line 182
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 183
    .line 184
    iget-object v1, v1, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 185
    .line 186
    const-string v2, "tagNew"

    .line 187
    .line 188
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getShowNewTag()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 199
    .line 200
    iget-object v1, v1, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 207
    .line 208
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    .line 213
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getRightText()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_4

    .line 222
    .line 223
    const/16 v2, 0x12

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    const/4 v2, 0x7

    .line 227
    :goto_3
    invoke-static {v2}, Ljmf;->d(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 232
    .line 233
    iget-object v2, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 234
    .line 235
    iget-object v2, v2, Lkbd;->k:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 236
    .line 237
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lteam/opay/pay/home/security/SecuritySetting;->getLocation()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    const-string v2, "marginView"

    .line 245
    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    if-eq v1, v3, :cond_7

    .line 249
    .line 250
    const/4 v4, 0x3

    .line 251
    if-eq v1, v4, :cond_6

    .line 252
    .line 253
    const/4 v4, 0x4

    .line 254
    if-eq v1, v4, :cond_5

    .line 255
    .line 256
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 257
    .line 258
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 259
    .line 260
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 267
    .line 268
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripple_white_8:I

    .line 275
    .line 276
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 285
    .line 286
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 287
    .line 288
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 295
    .line 296
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripple_white_8:I

    .line 303
    .line 304
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 313
    .line 314
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 315
    .line 316
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 323
    .line 324
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripper_white_bottom_8:I

    .line 331
    .line 332
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 341
    .line 342
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 343
    .line 344
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 351
    .line 352
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripple_white:I

    .line 359
    .line 360
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 369
    .line 370
    iget-object v1, v1, Lkbd;->h:Landroid/view/View;

    .line 371
    .line 372
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 379
    .line 380
    iget-object v1, v1, Lkbd;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 381
    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    sget v2, Lteam/opay/pay/R$drawable;->osdk_ripper_white_top_8:I

    .line 387
    .line 388
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    .line 394
    .line 395
    :goto_4
    iget-object v0, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 396
    .line 397
    iget-object v0, v0, Lkbd;->i:Landroid/view/View;

    .line 398
    .line 399
    const-string v1, "marginViewBottom"

    .line 400
    .line 401
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v0, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 405
    .line 406
    .line 407
    sget-object p2, Lteam/opay/pay/home/security/SecuritySettingViewHolder$a;->a:[I

    .line 408
    .line 409
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    aget p1, p2, p1

    .line 414
    .line 415
    if-ne p1, v3, :cond_9

    .line 416
    .line 417
    iget-object p1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 418
    .line 419
    iget-object p1, p1, Lkbd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    const/16 p2, 0x11

    .line 422
    .line 423
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 424
    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_9
    iget-object p1, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 428
    .line 429
    iget-object p1, p1, Lkbd;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    const p2, 0x800003

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    .line 436
    .line 437
    :goto_5
    return-void
.end method

.method public final d()Lkbd;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecuritySettingViewHolder;->a:Lkbd;

    .line 2
    .line 3
    iget-object v0, v0, Lkbd;->d:Landroid/view/View;

    .line 4
    .line 5
    const-string v1, "dot"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
