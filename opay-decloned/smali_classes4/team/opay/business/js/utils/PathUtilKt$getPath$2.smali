.class final Lteam/opay/business/js/utils/PathUtilKt$getPath$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PathUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/utils/PathUtilKt;->h(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.js.utils.PathUtilKt$getPath$2"
    f = "PathUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/utils/PathUtilKt$getPath$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1a

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "substring(...)"

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz p1, :cond_10

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->c(Landroid/net/Uri;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-string v5, ":"

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    filled-new-array {v5}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v10, 0x6

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, [Ljava/lang/String;

    .line 65
    .line 66
    aget-object v0, p1, v3

    .line 67
    .line 68
    const-string v1, "primary"

    .line 69
    .line 70
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_19

    .line 75
    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    aget-object p1, p1, v2

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "/"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_0
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 104
    .line 105
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->b(Landroid/net/Uri;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 112
    .line 113
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    const-string v0, "content://downloads/my_downloads"

    .line 127
    .line 128
    const-string v1, "content://downloads/all_downloads"

    .line 129
    .line 130
    const-string v2, "content://downloads/public_downloads"

    .line 131
    .line 132
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_0
    const/4 v1, 0x3

    .line 137
    if-ge v3, v1, :cond_2

    .line 138
    .line 139
    aget-object v1, v0, v3

    .line 140
    .line 141
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string v5, "valueOf(...)"

    .line 150
    .line 151
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, "withAppendedId(...)"

    .line 163
    .line 164
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v2, v1, v4, v4}, Lteam/opay/business/js/utils/PathUtilKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    if-eqz v1, :cond_1

    .line 174
    .line 175
    return-object v1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 184
    .line 185
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 186
    .line 187
    invoke-static {p1, v0}, Lfz5;->g(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v0, "getFileName(...)"

    .line 192
    .line 193
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 197
    .line 198
    invoke-static {v0}, Lfz5;->f(Landroid/content/Context;)Ljava/io/File;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "getDocumentCacheDir(...)"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v0}, Lfz5;->d(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_3

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 218
    .line 219
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 220
    .line 221
    invoke-static {p1, v0, v4}, Lfz5;->v(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_3
    return-object v4

    .line 225
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-nez v2, :cond_5

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    const-string v2, "raw:"

    .line 233
    .line 234
    invoke-static {p1, v2, v3, v1, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_6

    .line 239
    .line 240
    const/4 v1, 0x4

    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object p1

    .line 249
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_7

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_7
    const-string v0, "msf:"

    .line 257
    .line 258
    invoke-static {p1, v0, v3, v1, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_8

    .line 263
    .line 264
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "mimeType="

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string p1, "  extension="

    .line 298
    .line 299
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 310
    .line 311
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v1, "."

    .line 320
    .line 321
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "temp"

    .line 338
    .line 339
    invoke-static {v1, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    iget-object v1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    sget-object v1, Lteam/opay/business/js/utils/FileChoose;->a:Lteam/opay/business/js/utils/FileChoose;

    .line 356
    .line 357
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0, p1}, Lteam/opay/business/js/utils/FileChoose;->b(Ljava/io/InputStream;Ljava/io/File;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    return-object p1

    .line 371
    :cond_8
    :goto_2
    return-object v4

    .line 372
    :cond_9
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 373
    .line 374
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->e(Landroid/net/Uri;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-eqz p1, :cond_19

    .line 379
    .line 380
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 381
    .line 382
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    filled-new-array {v5}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    const/4 v10, 0x6

    .line 394
    const/4 v11, 0x0

    .line 395
    const/4 v8, 0x0

    .line 396
    const/4 v9, 0x0

    .line 397
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    new-array v0, v3, [Ljava/lang/String;

    .line 402
    .line 403
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, [Ljava/lang/String;

    .line 408
    .line 409
    aget-object v0, p1, v3

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    const v3, 0x58d9bd6

    .line 416
    .line 417
    .line 418
    if-eq v1, v3, :cond_e

    .line 419
    .line 420
    const v3, 0x5faa95b

    .line 421
    .line 422
    .line 423
    if-eq v1, v3, :cond_c

    .line 424
    .line 425
    const v3, 0x6b0147b

    .line 426
    .line 427
    .line 428
    if-eq v1, v3, :cond_a

    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_a
    const-string v1, "video"

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_b

    .line 438
    .line 439
    goto :goto_3

    .line 440
    :cond_b
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 441
    .line 442
    goto :goto_3

    .line 443
    :cond_c
    const-string v1, "image"

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_d

    .line 450
    .line 451
    goto :goto_3

    .line 452
    :cond_d
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_e
    const-string v1, "audio"

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_f

    .line 462
    .line 463
    goto :goto_3

    .line 464
    :cond_f
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 465
    .line 466
    :goto_3
    aget-object p1, p1, v2

    .line 467
    .line 468
    filled-new-array {p1}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 473
    .line 474
    const-string v1, "_id=?"

    .line 475
    .line 476
    invoke-static {v0, v4, v1, p1}, Lteam/opay/business/js/utils/PathUtilKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    return-object p1

    .line 481
    :cond_10
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 482
    .line 483
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    const-string v5, "content"

    .line 488
    .line 489
    invoke-static {v5, p1, v2}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-eqz p1, :cond_18

    .line 494
    .line 495
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 496
    .line 497
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->d(Landroid/net/Uri;)Z

    .line 498
    .line 499
    .line 500
    move-result p1

    .line 501
    if-eqz p1, :cond_11

    .line 502
    .line 503
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 504
    .line 505
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    return-object p1

    .line 510
    :cond_11
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 511
    .line 512
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->f(Landroid/net/Uri;)Z

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    const-string v2, "getExternalStorageDirectory(...)"

    .line 517
    .line 518
    if-eqz p1, :cond_14

    .line 519
    .line 520
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 521
    .line 522
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    new-instance v2, Ljava/io/File;

    .line 534
    .line 535
    if-eqz p1, :cond_12

    .line 536
    .line 537
    const/16 v3, 0xa

    .line 538
    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_4

    .line 551
    :cond_12
    move-object p1, v4

    .line 552
    :goto_4
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-eqz p1, :cond_13

    .line 560
    .line 561
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    :cond_13
    return-object v4

    .line 566
    :cond_14
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 567
    .line 568
    invoke-static {p1}, Lteam/opay/business/js/utils/PathUtilKt;->n(Landroid/net/Uri;)Z

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    if-eqz p1, :cond_17

    .line 573
    .line 574
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 575
    .line 576
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    if-eqz p1, :cond_17

    .line 581
    .line 582
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    if-nez v5, :cond_15

    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_15
    const-string v5, "/external_storage_root"

    .line 590
    .line 591
    invoke-static {p1, v5, v3, v1, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_17

    .line 596
    .line 597
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    new-instance v2, Ljava/io/File;

    .line 605
    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    const/16 v5, 0x16

    .line 611
    .line 612
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    if-eqz p1, :cond_16

    .line 627
    .line 628
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    :cond_16
    return-object v4

    .line 633
    :cond_17
    :goto_5
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$context:Landroid/content/Context;

    .line 634
    .line 635
    iget-object v0, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 636
    .line 637
    invoke-static {p1, v0, v4, v4}, Lteam/opay/business/js/utils/PathUtilKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    return-object p1

    .line 642
    :cond_18
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 643
    .line 644
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    const-string v0, "file"

    .line 649
    .line 650
    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    if-eqz p1, :cond_19

    .line 655
    .line 656
    iget-object p1, p0, Lteam/opay/business/js/utils/PathUtilKt$getPath$2;->$uri:Landroid/net/Uri;

    .line 657
    .line 658
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    return-object p1

    .line 663
    :cond_19
    return-object v4

    .line 664
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 665
    .line 666
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 667
    .line 668
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw p1
.end method
