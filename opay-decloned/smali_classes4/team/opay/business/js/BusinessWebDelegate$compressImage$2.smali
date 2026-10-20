.class final Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->compressImage(Landroid/net/Uri;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.js.BusinessWebDelegate$compressImage$2"
    f = "BusinessWebDelegate.kt"
    l = {
        0xbe,
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileChooser:Lteam/opay/business/js/H5FileChooser;

.field final synthetic $mimeType:Ljava/lang/String;

.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/js/BusinessWebDelegate;",
            "Landroid/net/Uri;",
            "Lteam/opay/business/js/H5FileChooser;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$mimeType:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$mimeType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Landroid/net/Uri;Lteam/opay/business/js/H5FileChooser;Ljava/lang/String;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/io/InputStream;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 49
    .line 50
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getLoading$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 62
    .line 63
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    const-string v1, "context"

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object p1, v4

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$uri:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-virtual {p1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v5, Lil8;->c:Lil8;

    .line 86
    .line 87
    iget-object v6, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 88
    .line 89
    invoke-virtual {v6}, Lteam/opay/business/js/H5FileChooser;->d()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v8, "------\u5f00\u59cb\u538b\u7f29 = "

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v5, v6, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v6, Lpd1;->a:Lpd1;

    .line 114
    .line 115
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 116
    .line 117
    invoke-static {v7}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-nez v7, :cond_4

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v8, v4

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    move-object v8, v7

    .line 129
    :goto_0
    iget-object v9, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$uri:Landroid/net/Uri;

    .line 130
    .line 131
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 132
    .line 133
    invoke-static {v7}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    if-nez v7, :cond_5

    .line 138
    .line 139
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v7, v4

    .line 143
    :cond_5
    invoke-static {v7}, Let;->p(Landroid/content/Context;)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    int-to-float v10, v7

    .line 148
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 149
    .line 150
    invoke-static {v7}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    if-nez v7, :cond_6

    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v7, v4

    .line 160
    :cond_6
    invoke-static {v7}, Let;->o(Landroid/content/Context;)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    int-to-float v11, v7

    .line 165
    iget-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 166
    .line 167
    invoke-virtual {v7}, Lteam/opay/business/js/H5FileChooser;->d()Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const/4 v13, 0x0

    .line 172
    if-eqz v7, :cond_7

    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    move v12, v7

    .line 179
    goto :goto_1

    .line 180
    :cond_7
    const/4 v12, 0x0

    .line 181
    :goto_1
    move-object v7, v6

    .line 182
    invoke-virtual/range {v7 .. v12}, Lpd1;->b(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    if-eqz v7, :cond_8

    .line 187
    .line 188
    const/4 v13, 0x1

    .line 189
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v9, "-------\u538b\u7f29\u5b8c\u6210 = "

    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-static {v5, v8, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    if-eqz v7, :cond_b

    .line 210
    .line 211
    iget-object v8, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 212
    .line 213
    iget-object v9, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$mimeType:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v10, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->$fileChooser:Lteam/opay/business/js/H5FileChooser;

    .line 216
    .line 217
    invoke-static {v8}, Lteam/opay/business/js/BusinessWebDelegate;->access$getContext$p(Lteam/opay/business/js/BusinessWebDelegate;)Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    if-nez v11, :cond_9

    .line 222
    .line 223
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v11, v4

    .line 227
    :cond_9
    const-string v1, "compress_js"

    .line 228
    .line 229
    invoke-virtual {v6, v11, v1}, Lpd1;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    const-string v12, "getAbsolutePath(...)"

    .line 238
    .line 239
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6, v7, v11}, Lpd1;->e(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v12, "-------tempFile = "

    .line 255
    .line 256
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v5, v6, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const-string v5, "getPath(...)"

    .line 274
    .line 275
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$0:Ljava/lang/Object;

    .line 279
    .line 280
    iput-object v7, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$1:Ljava/lang/Object;

    .line 281
    .line 282
    iput v2, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->label:I

    .line 283
    .line 284
    invoke-static {v8, v9, v1, v10, p0}, Lteam/opay/business/js/BusinessWebDelegate;->access$handleFileResult(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/business/js/H5FileChooser;Ljr2;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-ne v1, v0, :cond_a

    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_a
    move-object v1, p1

    .line 292
    :goto_2
    move-object p1, v1

    .line 293
    :cond_b
    if-eqz p1, :cond_d

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 296
    .line 297
    .line 298
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :goto_3
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    new-instance v2, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2$2;

    .line 306
    .line 307
    iget-object v5, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->this$0:Lteam/opay/business/js/BusinessWebDelegate;

    .line 308
    .line 309
    invoke-direct {v2, v5, p1, v4}, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2$2;-><init>(Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/Exception;Ljr2;)V

    .line 310
    .line 311
    .line 312
    iput-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$0:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v4, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->L$1:Ljava/lang/Object;

    .line 315
    .line 316
    iput v3, p0, Lteam/opay/business/js/BusinessWebDelegate$compressImage$2;->label:I

    .line 317
    .line 318
    invoke-static {v1, v2, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    if-ne p1, v0, :cond_c

    .line 323
    .line 324
    return-object v0

    .line 325
    :cond_c
    :goto_4
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 326
    .line 327
    :cond_d
    :goto_5
    return-object v4
.end method
