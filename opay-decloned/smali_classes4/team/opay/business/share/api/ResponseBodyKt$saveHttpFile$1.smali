.class final Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ResponseBody.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "La66<",
        "-",
        "Lteam/opay/business/share/api/DownloadState;",
        ">;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "La66;",
        "Lteam/opay/business/share/api/DownloadState;",
        "",
        "<anonymous>",
        "(La66;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.share.api.ResponseBodyKt$saveHttpFile$1"
    f = "ResponseBody.kt"
    l = {
        0x15,
        0x21,
        0x25,
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $targetFile:Ljava/io/File;

.field final synthetic $this_saveHttpFile:Lokhttp3/ResponseBody;

.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Ljava/io/File;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            "Ljava/io/File;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$this_saveHttpFile:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$targetFile:Ljava/io/File;

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
    new-instance v0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$this_saveHttpFile:Lokhttp3/ResponseBody;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$targetFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;-><init>(Lokhttp3/ResponseBody;Ljava/io/File;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(La66;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La66<",
            "-",
            "Lteam/opay/business/share/api/DownloadState;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, La66;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->invoke(La66;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    if-eq v0, v6, :cond_3

    .line 16
    .line 17
    if-eq v0, v5, :cond_2

    .line 18
    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    iget-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v4, v0

    .line 39
    check-cast v4, La66;

    .line 40
    .line 41
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_2
    iget v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->I$0:I

    .line 50
    .line 51
    iget-wide v8, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->J$1:J

    .line 52
    .line 53
    iget-wide v10, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->J$0:J

    .line 54
    .line 55
    iget-object v6, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$5:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v6, [B

    .line 58
    .line 59
    iget-object v12, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$4:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v12, Ljava/io/FileOutputStream;

    .line 62
    .line 63
    iget-object v13, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$3:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v13, Ljava/io/Closeable;

    .line 66
    .line 67
    iget-object v14, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$2:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v14, Ljava/io/InputStream;

    .line 70
    .line 71
    iget-object v15, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v15, Ljava/io/Closeable;

    .line 74
    .line 75
    iget-object v3, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, La66;

    .line 78
    .line 79
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    move-object/from16 v17, v6

    .line 84
    .line 85
    move v6, v0

    .line 86
    move-object/from16 v0, v17

    .line 87
    .line 88
    move-wide/from16 v18, v8

    .line 89
    .line 90
    move-wide v8, v10

    .line 91
    move-wide/from16 v10, v18

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object v4, v0

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_3
    iget-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, La66;

    .line 102
    .line 103
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    move-object v3, v0

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, La66;

    .line 114
    .line 115
    new-instance v3, Lteam/opay/business/share/api/DownloadState$Downloading;

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    invoke-direct {v3, v8}, Lteam/opay/business/share/api/DownloadState$Downloading;-><init>(F)V

    .line 119
    .line 120
    .line 121
    iput-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput v6, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->label:I

    .line 124
    .line 125
    invoke-interface {v0, v3, v1}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-ne v3, v2, :cond_4

    .line 130
    .line 131
    return-object v2

    .line 132
    :goto_0
    :try_start_2
    iget-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$this_saveHttpFile:Lokhttp3/ResponseBody;

    .line 133
    .line 134
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    iget-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$targetFile:Ljava/io/File;

    .line 139
    .line 140
    iget-object v6, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$this_saveHttpFile:Lokhttp3/ResponseBody;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .line 142
    :try_start_3
    new-instance v13, Ljava/io/FileOutputStream;

    .line 143
    .line 144
    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .line 146
    .line 147
    :try_start_4
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    .line 148
    .line 149
    .line 150
    move-result-wide v8

    .line 151
    const/16 v0, 0x2000

    .line 152
    .line 153
    new-array v0, v0, [B

    .line 154
    .line 155
    invoke-virtual {v15, v0}, Ljava/io/InputStream;->read([B)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const-wide/16 v10, 0x0

    .line 160
    .line 161
    move-object v12, v13

    .line 162
    move-object v14, v15

    .line 163
    :goto_1
    if-ltz v6, :cond_7

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-virtual {v12, v0, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 167
    .line 168
    .line 169
    int-to-long v5, v6

    .line 170
    add-long/2addr v5, v10

    .line 171
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    new-instance v11, Lteam/opay/business/share/api/DownloadState$Downloading;

    .line 176
    .line 177
    long-to-float v4, v5

    .line 178
    const/high16 v16, 0x3f800000    # 1.0f

    .line 179
    .line 180
    mul-float v4, v4, v16

    .line 181
    .line 182
    long-to-float v7, v8

    .line 183
    div-float/2addr v4, v7

    .line 184
    invoke-direct {v11, v4}, Lteam/opay/business/share/api/DownloadState$Downloading;-><init>(F)V

    .line 185
    .line 186
    .line 187
    iput-object v3, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v15, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$1:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v14, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$2:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v13, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$3:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v12, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$4:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v0, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$5:Ljava/lang/Object;

    .line 198
    .line 199
    iput-wide v8, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->J$0:J

    .line 200
    .line 201
    iput-wide v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->J$1:J

    .line 202
    .line 203
    iput v10, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->I$0:I

    .line 204
    .line 205
    const/4 v4, 0x2

    .line 206
    iput v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->label:I

    .line 207
    .line 208
    invoke-interface {v3, v11, v1}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    if-ne v7, v2, :cond_6

    .line 213
    .line 214
    return-object v2

    .line 215
    :cond_6
    move-wide/from16 v17, v5

    .line 216
    .line 217
    move v6, v10

    .line 218
    move-wide/from16 v10, v17

    .line 219
    .line 220
    :goto_2
    const/4 v4, 0x3

    .line 221
    const/4 v5, 0x2

    .line 222
    goto :goto_1

    .line 223
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    :try_start_5
    invoke-static {v13, v4}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    .line 228
    .line 229
    :try_start_6
    invoke-static {v15, v4}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lteam/opay/business/share/api/DownloadState$Finished;

    .line 233
    .line 234
    iget-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->$targetFile:Ljava/io/File;

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    const-string v5, "getAbsolutePath(...)"

    .line 241
    .line 242
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v4}, Lteam/opay/business/share/api/DownloadState$Finished;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iput-object v3, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    iput-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$1:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$2:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$3:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$4:Ljava/lang/Object;

    .line 258
    .line 259
    iput-object v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$5:Ljava/lang/Object;

    .line 260
    .line 261
    const/4 v4, 0x3

    .line 262
    iput v4, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->label:I

    .line 263
    .line 264
    invoke-interface {v3, v0, v1}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 268
    if-ne v0, v2, :cond_8

    .line 269
    .line 270
    return-object v2

    .line 271
    :catch_1
    move-exception v0

    .line 272
    move-object v4, v3

    .line 273
    goto :goto_5

    .line 274
    :catchall_1
    move-exception v0

    .line 275
    move-object v4, v3

    .line 276
    move-object v3, v0

    .line 277
    goto :goto_4

    .line 278
    :goto_3
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 279
    :catchall_2
    move-exception v0

    .line 280
    move-object v5, v0

    .line 281
    :try_start_8
    invoke-static {v13, v4}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 285
    :goto_4
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 286
    :catchall_3
    move-exception v0

    .line 287
    move-object v5, v0

    .line 288
    :try_start_a
    invoke-static {v15, v3}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 292
    :goto_5
    new-instance v3, Lteam/opay/business/share/api/DownloadState$Failed;

    .line 293
    .line 294
    invoke-direct {v3, v0}, Lteam/opay/business/share/api/DownloadState$Failed;-><init>(Ljava/lang/Throwable;)V

    .line 295
    .line 296
    .line 297
    const/4 v5, 0x0

    .line 298
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$0:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$1:Ljava/lang/Object;

    .line 301
    .line 302
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$2:Ljava/lang/Object;

    .line 303
    .line 304
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$3:Ljava/lang/Object;

    .line 305
    .line 306
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$4:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->L$5:Ljava/lang/Object;

    .line 309
    .line 310
    const/4 v5, 0x4

    .line 311
    iput v5, v1, Lteam/opay/business/share/api/ResponseBodyKt$saveHttpFile$1;->label:I

    .line 312
    .line 313
    invoke-interface {v4, v3, v1}, La66;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-ne v0, v2, :cond_8

    .line 318
    .line 319
    return-object v2

    .line 320
    :cond_8
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 321
    .line 322
    return-object v0
.end method
