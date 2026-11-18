.class final Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileChoose.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/utils/FileChoose;->c(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;
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
    c = "team.opay.business.js.utils.FileChoose$getFilePathFromUri$2"
    f = "FileChoose.kt"
    l = {
        0x49,
        0x4c,
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $uri:Landroid/net/Uri;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

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
            "Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;

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
    .locals 3
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
    new-instance v0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v5, :cond_2

    .line 15
    .line 16
    if-eq v1, v4, :cond_1

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget-object v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lzr2;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->I$0:I

    .line 46
    .line 47
    iget-object v7, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Lzr2;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v7, p1

    .line 63
    check-cast v7, Lzr2;

    .line 64
    .line 65
    :try_start_1
    iget-object p1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;

    .line 68
    .line 69
    iput-object v7, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v2, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->I$0:I

    .line 72
    .line 73
    iput v5, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->label:I

    .line 74
    .line 75
    invoke-static {p1, v1, p0}, Lteam/opay/business/js/utils/PathUtilKt;->h(Landroid/content/Context;Landroid/net/Uri;Ljr2;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_4

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    :goto_0
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    move v5, v1

    .line 86
    goto :goto_3

    .line 87
    :goto_1
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 88
    .line 89
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v8, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2$1;

    .line 104
    .line 105
    iget-object v9, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 106
    .line 107
    invoke-direct {v8, v9, p1, v6}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2$1;-><init>(Landroid/content/Context;Ljava/lang/Exception;Ljr2;)V

    .line 108
    .line 109
    .line 110
    iput-object v7, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput v4, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->label:I

    .line 113
    .line 114
    invoke-static {v1, v8, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v0, :cond_5

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_5
    :goto_2
    move-object p1, v6

    .line 122
    :goto_3
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    const/16 v7, 0x1e

    .line 125
    .line 126
    if-ge v1, v7, :cond_6

    .line 127
    .line 128
    iget-object v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;

    .line 129
    .line 130
    invoke-static {v1}, Lteam/opay/business/js/utils/PathUtilKt;->n(Landroid/net/Uri;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_6

    .line 135
    .line 136
    if-eqz v5, :cond_a

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catch_1
    move-exception v1

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    :goto_4
    iget-object v1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 142
    .line 143
    iget-object v5, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .line 145
    :try_start_3
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 146
    .line 147
    invoke-static {v1, v5}, Lfz5;->g(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    goto :goto_5

    .line 156
    :catchall_0
    move-exception v1

    .line 157
    :try_start_4
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 158
    .line 159
    invoke-static {v1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :goto_5
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 171
    const-string v7, ""

    .line 172
    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    move-object v1, v7

    .line 176
    :cond_7
    :try_start_5
    check-cast v1, Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-lez v5, :cond_8

    .line 186
    .line 187
    const-string v5, "."

    .line 188
    .line 189
    invoke-static {v1, v5, v2, v4, v6}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_8

    .line 194
    .line 195
    const-string v9, "."

    .line 196
    .line 197
    const/4 v12, 0x6

    .line 198
    const/4 v13, 0x0

    .line 199
    const/4 v10, 0x0

    .line 200
    const/4 v11, 0x0

    .line 201
    move-object v8, v1

    .line 202
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    const-string v1, "substring(...)"

    .line 211
    .line 212
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    const-string v1, "file"

    .line 216
    .line 217
    iget-object v2, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v1, v7, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, "createTempFile(...)"

    .line 228
    .line 229
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 233
    .line 234
    iget-object v4, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$uri:Landroid/net/Uri;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v2, v4, v5}, Lfz5;->v(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    goto :goto_8

    .line 248
    :goto_6
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    new-instance v4, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2$2;

    .line 253
    .line 254
    iget-object v5, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->$context:Landroid/content/Context;

    .line 255
    .line 256
    invoke-direct {v4, v5, v1, v6}, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2$2;-><init>(Landroid/content/Context;Ljava/lang/Exception;Ljr2;)V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->L$0:Ljava/lang/Object;

    .line 260
    .line 261
    iput v3, p0, Lteam/opay/business/js/utils/FileChoose$getFilePathFromUri$2;->label:I

    .line 262
    .line 263
    invoke-static {v2, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-ne v1, v0, :cond_9

    .line 268
    .line 269
    return-object v0

    .line 270
    :cond_9
    move-object v0, p1

    .line 271
    :goto_7
    move-object p1, v0

    .line 272
    :cond_a
    :goto_8
    return-object p1
.end method
