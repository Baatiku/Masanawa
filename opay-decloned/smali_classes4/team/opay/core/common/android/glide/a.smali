.class public final Lteam/opay/core/common/android/glide/a;
.super Ljava/lang/Object;
.source "ImageView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aK\u0010\u000b\u001a\u00020\n*\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001aK\u0010\r\u001a\u00020\n*\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000c\u001aK\u0010\u000e\u001a\u00020\n*\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000c\u001aQ\u0010\u0011\u001a\u00020\n*\u00020\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a+\u0010\u0015\u001a\u00020\n*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroid/widget/ImageView;",
        "",
        "model",
        "",
        "holder",
        "radius",
        "quality",
        "Lnpc;",
        "Landroid/graphics/drawable/Drawable;",
        "listener",
        "",
        "b",
        "(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V",
        "f",
        "d",
        "Lteam/opay/core/common/android/glide/ModelType;",
        "modelType",
        "h",
        "(Landroid/widget/ImageView;Ljava/lang/Object;IIILteam/opay/core/common/android/glide/ModelType;Lnpc;)V",
        "Lteam/opay/core/common/android/glide/ImageModel;",
        "data",
        "a",
        "(Landroid/widget/ImageView;Lteam/opay/core/common/android/glide/ImageModel;Lnpc;)V",
        "common-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/widget/ImageView;Lteam/opay/core/common/android/glide/ImageModel;Lnpc;)V
    .locals 7
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lteam/opay/core/common/android/glide/ImageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnpc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lteam/opay/core/common/android/glide/ImageModel;",
            "Lnpc<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "<this>"

    .line 3
    .line 4
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "data"

    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->l()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "dontAnimate(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->a()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->a()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v2, v3}, Lay;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    .line 56
    sget-object v3, Lnk8;->c:Lnk8;

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "placeholder loadGlideImage e="

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static {v3, v2, v4, v0, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->a()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 88
    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->e()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-lez v2, :cond_5

    .line 94
    .line 95
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 96
    .line 97
    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->e()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .line 116
    int-to-float v4, v4

    .line 117
    mul-float v5, v5, v4

    .line 118
    .line 119
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const-class v5, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_1

    .line 140
    .line 141
    check-cast v4, Ljava/lang/Integer;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 145
    .line 146
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_2

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    goto :goto_1

    .line 165
    :cond_2
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 166
    .line 167
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_3

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Ljava/lang/Integer;

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_3
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 189
    .line 190
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_4

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    check-cast v4, Ljava/lang/Integer;

    .line 209
    .line 210
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 215
    .line 216
    .line 217
    new-array v0, v0, [Locf;

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    aput-object v2, v0, v4

    .line 221
    .line 222
    const/4 v2, 0x1

    .line 223
    aput-object v3, v0, v2

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->p0([Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object v1, v0

    .line 230
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 234
    .line 235
    const-string p1, "return number type not support"

    .line 236
    .line 237
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_5
    :goto_2
    sget-object v0, Lq50;->b:Lq50;

    .line 242
    .line 243
    invoke-virtual {v0}, Lq50;->e()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    sget-object v0, Lteam/opay/core/common/android/glide/IGlideModel;->Companion:Lteam/opay/core/common/android/glide/IGlideModel$Companion;

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Lteam/opay/core/common/android/glide/IGlideModel$Companion;->b(Lteam/opay/core/common/android/glide/ImageModel;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    goto :goto_3

    .line 256
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->b()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    :goto_3
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->t(Ljava/lang/Object;)Ljpc;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1, p2}, Ljpc;->H0(Lnpc;)Ljpc;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1, p0}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :catch_1
    move-exception p0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    :goto_4
    return-void
.end method

.method public static final b(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V
    .locals 8
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lnpc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "III",
            "Lnpc<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v6, Lteam/opay/core/common/android/glide/ModelType;->DEFAULT_IMAGE:Lteam/opay/core/common/android/glide/ModelType;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v7, p5

    .line 14
    invoke-static/range {v1 .. v7}, Lteam/opay/core/common/android/glide/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;IIILteam/opay/core/common/android/glide/ModelType;Lnpc;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v3, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/16 p4, 0x4b

    .line 22
    .line 23
    const/16 v4, 0x4b

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v4, p4

    .line 27
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    const/4 p5, 0x0

    .line 32
    :cond_3
    move-object v5, p5

    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    invoke-static/range {v0 .. v5}, Lteam/opay/core/common/android/glide/a;->b(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final d(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V
    .locals 8
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lnpc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "III",
            "Lnpc<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v6, Lteam/opay/core/common/android/glide/ModelType;->PRIVACY_IMAGE:Lteam/opay/core/common/android/glide/ModelType;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v7, p5

    .line 14
    invoke-static/range {v1 .. v7}, Lteam/opay/core/common/android/glide/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;IIILteam/opay/core/common/android/glide/ModelType;Lnpc;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic e(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v3, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/16 p4, 0x4b

    .line 22
    .line 23
    const/16 v4, 0x4b

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v4, p4

    .line 27
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    const/4 p5, 0x0

    .line 32
    :cond_3
    move-object v5, p5

    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    invoke-static/range {v0 .. v5}, Lteam/opay/core/common/android/glide/a;->d(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final f(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V
    .locals 8
    .param p0    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lnpc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "III",
            "Lnpc<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v6, Lteam/opay/core/common/android/glide/ModelType;->IMAGE_RESIZE:Lteam/opay/core/common/android/glide/ModelType;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move-object v7, p5

    .line 14
    invoke-static/range {v1 .. v7}, Lteam/opay/core/common/android/glide/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;IIILteam/opay/core/common/android/glide/ModelType;Lnpc;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic g(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v3, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/16 p4, 0x4b

    .line 22
    .line 23
    const/16 v4, 0x4b

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v4, p4

    .line 27
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    const/4 p5, 0x0

    .line 32
    :cond_3
    move-object v5, p5

    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    invoke-static/range {v0 .. v5}, Lteam/opay/core/common/android/glide/a;->f(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final h(Landroid/widget/ImageView;Ljava/lang/Object;IIILteam/opay/core/common/android/glide/ModelType;Lnpc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            "III",
            "Lteam/opay/core/common/android/glide/ModelType;",
            "Lnpc<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->h(Ljava/lang/Object;)Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->g(I)Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p3}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->k(I)Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p4}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->j(I)Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p5}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->i(Lteam/opay/core/common/android/glide/ModelType;)Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->a()Lteam/opay/core/common/android/glide/ImageModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1, p6}, Lteam/opay/core/common/android/glide/a;->a(Landroid/widget/ImageView;Lteam/opay/core/common/android/glide/ImageModel;Lnpc;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
