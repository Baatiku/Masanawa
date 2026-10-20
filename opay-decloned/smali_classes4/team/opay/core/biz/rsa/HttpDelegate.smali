.class public final Lteam/opay/core/biz/rsa/HttpDelegate;
.super Lteam/opay/core/spi/IHttpDelegate;
.source "HttpDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/core/spi/IHttpDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0018\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/core/biz/rsa/HttpDelegate;",
        "Lteam/opay/core/spi/IHttpDelegate;",
        "<init>",
        "()V",
        "utf8",
        "Ljava/nio/charset/Charset;",
        "mData",
        "",
        "mKey",
        "getHttpSecret",
        "supportEncrypt",
        "",
        "request",
        "Lokhttp3/Request;",
        "getRequest",
        "getResponse",
        "Lokhttp3/Response;",
        "response",
        "getHttpRequest",
        "getHttpResponse",
        "getRealResponse",
        "httpBody",
        "common-http_release"
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
.field private final mData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final utf8:Ljava/nio/charset/Charset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/spi/IHttpDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->utf8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    const-string v0, "data"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->mData:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "key"

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->mKey:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private final getHttpRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    new-instance v2, Lokio/Buffer;

    .line 11
    .line 12
    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lokhttp3/RequestBody;->writeTo(Lrk1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->utf8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    :goto_0
    iget-object v3, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->utf8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    :cond_1
    invoke-virtual {v2, v3}, Lokio/Buffer;->H0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 43
    .line 44
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x2

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-static {v2}, Lkt6;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v5, Lok8;->c:Lok8;

    .line 60
    .line 61
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v8, "rsa origin data -> path="

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, ", request=\n"

    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v5, v3, v0, v4, v0}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    sget-object v3, Lg47;->a:Lg47;

    .line 98
    .line 99
    invoke-virtual {v3}, Lg47;->c()Ljavax/crypto/SecretKey;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v3, v2, v5}, Lg47;->b(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    sget-object v6, Lz57;->a:Lz57;

    .line 108
    .line 109
    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "getEncoded(...)"

    .line 114
    .line 115
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v8, Lb67;->b:Lb67;

    .line 119
    .line 120
    invoke-virtual {v8}, Lb67;->c()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    const-string v10, "decode(...)"

    .line 130
    .line 131
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v7, v8}, Lz57;->a([B[B)[B

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    new-instance v7, Lorg/json/JSONObject;

    .line 143
    .line 144
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v8, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->mData:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v7, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->mKey:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget-object v6, Lok8;->c:Lok8;

    .line 160
    .line 161
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v11, "rsa encrypt -> path="

    .line 179
    .line 180
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v7, ", key="

    .line 187
    .line 188
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-static {v6, v7, v0, v4, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    sget-object v6, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 214
    .line 215
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    const-string v7, "toString(...)"

    .line 220
    .line 221
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v3, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-class v3, Lteam/opay/core/biz/Invocation;

    .line 233
    .line 234
    new-instance v5, Lteam/opay/core/biz/Invocation;

    .line 235
    .line 236
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v2}, Lm47;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-direct {v5, v4, v2}, Lteam/opay/core/biz/Invocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v3, v5}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    goto :goto_1

    .line 255
    :cond_3
    move-object v1, v0

    .line 256
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    goto :goto_3

    .line 261
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 262
    .line 263
    invoke-static {v1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_4

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_4
    move-object v0, v1

    .line 279
    :goto_4
    check-cast v0, Lokhttp3/Request;

    .line 280
    .line 281
    if-nez v0, :cond_5

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_5
    move-object p1, v0

    .line 285
    :goto_5
    return-object p1
.end method

.method private final getHttpResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->utf8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v2, p0, Lteam/opay/core/biz/rsa/HttpDelegate;->utf8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lsk1;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-wide v4, 0x7fffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v4, v5}, Lsk1;->j0(J)Z

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Lsk1;->K()Lokio/Buffer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lokio/Buffer;->t()Lokio/Buffer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, v2}, Lokio/Buffer;->H0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 51
    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {p0, v2, v4}, Lteam/opay/core/biz/rsa/HttpDelegate;->getRealResponse(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3, v2, v1}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 73
    .line 74
    .line 75
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-static {v0, v2}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move-object p1, v1

    .line 84
    goto :goto_2

    .line 85
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :catchall_1
    move-exception v1

    .line 87
    invoke-static {v0, p1}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_3
    :goto_2
    return-object p1
.end method

.method private final getRealResponse(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    new-instance v1, Lteam/opay/core/biz/rsa/HttpDelegate$a;

    .line 6
    .line 7
    invoke-direct {v1}, Lteam/opay/core/biz/rsa/HttpDelegate$a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getType(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lkt6;->d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lteam/opay/core/http/HttpResponse;

    .line 24
    .line 25
    sget-object v1, Lok8;->c:Lok8;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "rsa response data -> "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v1, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v5, "666999"

    .line 54
    .line 55
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    sget-object p2, Lteam/opay/core/http/hilt/HttpApi;->h:Lteam/opay/core/http/hilt/HttpApi$Companion;

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/core/http/hilt/HttpApi$Companion;->a()Lteam/opay/core/http/hilt/HttpApi;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lteam/opay/core/http/hilt/HttpApi;->B()Lkotlinx/coroutines/l;

    .line 68
    .line 69
    .line 70
    new-instance p2, Lteam/opay/core/http/HttpResponse;

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->c()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, v4, v1, p1}, Lteam/opay/core/http/HttpResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lkt6;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    :goto_0
    move-object p1, v0

    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_0
    const-class v2, Lteam/opay/core/biz/Invocation;

    .line 96
    .line 97
    invoke-virtual {p2, v2}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lteam/opay/core/biz/Invocation;

    .line 102
    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    invoke-virtual {v2}, Lteam/opay/core/biz/Invocation;->a()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move-object v2, v4

    .line 111
    :goto_1
    const/4 v5, 0x0

    .line 112
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 117
    .line 118
    const-string v6, "AES"

    .line 119
    .line 120
    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Lg47;->a:Lg47;

    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Lteam/opay/core/biz/rsa/EncryptDataResponse;

    .line 130
    .line 131
    if-eqz v6, :cond_2

    .line 132
    .line 133
    invoke-virtual {v6}, Lteam/opay/core/biz/rsa/EncryptDataResponse;->a()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-nez v6, :cond_3

    .line 138
    .line 139
    :cond_2
    move-object v6, v0

    .line 140
    :cond_3
    invoke-virtual {v2, v6, v5}, Lg47;->a(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 149
    .line 150
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_4

    .line 159
    .line 160
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lkt6;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {v5}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v8, "rsa decrypt -> path="

    .line 185
    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p2, ", key="

    .line 193
    .line 194
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p2, ", body=\n"

    .line 201
    .line 202
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-static {v1, p2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    new-instance p2, Lteam/opay/core/http/HttpResponse;

    .line 216
    .line 217
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->a()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResponse;->c()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-direct {p2, v2, v1, p1}, Lteam/opay/core/http/HttpResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {p2}, Lkt6;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-nez p1, :cond_5

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_5
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    goto :goto_4

    .line 241
    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 242
    .line 243
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    if-nez p2, :cond_6

    .line 256
    .line 257
    move-object v0, p1

    .line 258
    :cond_6
    check-cast v0, Ljava/lang/String;

    .line 259
    .line 260
    return-object v0
.end method


# virtual methods
.method public getHttpSecret()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "encrypt"

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 1
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/core/biz/rsa/HttpDelegate;->supportEncrypt(Lokhttp3/Request;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lteam/opay/core/biz/rsa/HttpDelegate;->getHttpRequest(Lokhttp3/Request;)Lokhttp3/Request;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    return-object p1
.end method

.method public getResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/core/biz/rsa/HttpDelegate;->supportEncrypt(Lokhttp3/Request;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lteam/opay/core/biz/rsa/HttpDelegate;->getHttpResponse(Lokhttp3/Response;)Lokhttp3/Response;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    return-object p1
.end method

.method public supportEncrypt(Lokhttp3/Request;)Z
    .locals 1
    .param p1    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "business"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "saas"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    sget-object p1, Ll47;->b:Ll47;

    .line 30
    .line 31
    invoke-virtual {p1}, Ll47;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    return p1
.end method
