.class public final Lteam/opay/core/http/HttpFactory;
.super Ljava/lang/Object;
.source "HttpFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0011\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\r2\u0006\u0010\u000e\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\n \u0014*\u0004\u0018\u00010\u00130\u00132\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\"\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001d\u0010\'\u001a\u0004\u0018\u00010#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/core/http/HttpFactory;",
        "",
        "<init>",
        "()V",
        "",
        "projectName",
        "Lteam/opay/core/http/Builder;",
        "builder",
        "Lokhttp3/OkHttpClient;",
        "i",
        "(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;",
        "c",
        "(Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;",
        "T",
        "client",
        "Ljava/lang/Class;",
        "cls",
        "e",
        "(Lokhttp3/OkHttpClient;Ljava/lang/Class;)Ljava/lang/Object;",
        "Lretrofit2/Retrofit;",
        "kotlin.jvm.PlatformType",
        "k",
        "(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;",
        "tag",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "f",
        "(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor;",
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "d",
        "(Lokhttp3/OkHttpClient$Builder;)V",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "b",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "mClientMap",
        "Lteam/opay/core/spi/IBuilderDelegate;",
        "Lid8;",
        "h",
        "()Lteam/opay/core/spi/IBuilderDelegate;",
        "iBuilder",
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


# static fields
.field public static final a:Lteam/opay/core/http/HttpFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/http/HttpFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/http/HttpFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/core/http/HttpFactory;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Lp47;

    .line 16
    .line 17
    invoke-direct {v0}, Lp47;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lteam/opay/core/http/HttpFactory;->c:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/http/HttpFactory;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/http/HttpFactory;->j()Lteam/opay/core/spi/IBuilderDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c(Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/HttpFactory;->h()Lteam/opay/core/spi/IBuilderDelegate;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/core/spi/IBuilderDelegate;->getHttpDns()Lokhttp3/Dns;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->g()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lokhttp3/Interceptor;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lteam/opay/core/http/interceptor/BaseUrlInterceptor;

    .line 48
    .line 49
    invoke-direct {v1}, Lteam/opay/core/http/interceptor/BaseUrlInterceptor;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lteam/opay/core/http/interceptor/HeaderInterceptor;

    .line 56
    .line 57
    invoke-direct {v1}, Lteam/opay/core/http/interceptor/HeaderInterceptor;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lteam/opay/core/http/position/PositionInterceptor;

    .line 64
    .line 65
    invoke-direct {v1}, Lteam/opay/core/http/position/PositionInterceptor;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lteam/opay/core/http/interceptor/NetworkInterceptor;

    .line 72
    .line 73
    invoke-direct {v1}, Lteam/opay/core/http/interceptor/NetworkInterceptor;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->k()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "opay"

    .line 84
    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    new-instance v1, Lteam/opay/pay/security/intercept/EncryptInterceptor;

    .line 92
    .line 93
    invoke-direct {v1}, Lteam/opay/pay/security/intercept/EncryptInterceptor;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance v1, Lteam/opay/core/http/interceptor/HttpInterceptor;

    .line 101
    .line 102
    invoke-direct {v1}, Lteam/opay/core/http/interceptor/HttpInterceptor;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->i()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_3

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lokhttp3/Interceptor;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->j()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->j()J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->j()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->j()J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->e()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    sget-object v1, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lteam/opay/core/http/HttpFactory;->d(Lokhttp3/OkHttpClient$Builder;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->d()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    sget-object v1, Lok8;->c:Lok8;

    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->j()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v5, "timeout = "

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const/4 v3, 0x2

    .line 203
    const/4 v4, 0x0

    .line 204
    invoke-static {v1, v2, v4, v3, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object v1, Lteam/opay/core/http/HttpFactory;->a:Lteam/opay/core/http/HttpFactory;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Lteam/opay/core/http/HttpFactory;->d(Lokhttp3/OkHttpClient$Builder;)V

    .line 210
    .line 211
    .line 212
    const-string v2, "OkHttp"

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lteam/opay/core/http/HttpFactory;->f(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_5
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 225
    .line 226
    .line 227
    :goto_3
    new-instance v1, Lteam/opay/core/http/HttpEventFactory;

    .line 228
    .line 229
    invoke-direct {v1}, Lteam/opay/core/http/HttpEventFactory;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lteam/opay/core/http/Builder;->f()Lokhttp3/ConnectionPool;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    if-eqz v1, :cond_6

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 242
    .line 243
    .line 244
    :cond_6
    new-instance v1, Lteam/opay/core/http/HttpFactory$createNewOkHttpClient$$inlined$-addInterceptor$1;

    .line 245
    .line 246
    invoke-direct {v1, p0}, Lteam/opay/core/http/HttpFactory$createNewOkHttpClient$$inlined$-addInterceptor$1;-><init>(Lteam/opay/core/http/Builder;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 250
    .line 251
    .line 252
    sget-object p0, Lteam/opay/core/spi/INetTransport;->Companion:Lteam/opay/core/spi/INetTransport$a;

    .line 253
    .line 254
    invoke-virtual {p0}, Lteam/opay/core/spi/INetTransport$a;->c()Lteam/opay/core/spi/INetTransport;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    if-eqz p0, :cond_7

    .line 259
    .line 260
    invoke-interface {p0}, Lteam/opay/core/spi/INetTransport;->getInterceptor()Lokhttp3/Interceptor;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    if-eqz p0, :cond_7

    .line 265
    .line 266
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 267
    .line 268
    .line 269
    :cond_7
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xfa0

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v0, 0x17

    .line 34
    .line 35
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->E1(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lteam/opay/core/http/Builder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "projectName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/http/HttpFactory;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/http/HttpFactory$a;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/core/http/HttpFactory$a;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    :goto_0
    invoke-static {v0}, Lteam/opay/core/http/HttpFactory;->c(Lteam/opay/core/http/Builder;)Lokhttp3/OkHttpClient;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/http/Builder;->h()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lteam/opay/core/http/Builder;->h()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v1, p1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-object p1, Lteam/opay/core/http/HttpFactory;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_3
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 56
    .line 57
    return-object v0
.end method

.method public static final j()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/spi/IBuilderDelegate;->Companion:Lteam/opay/core/spi/IBuilderDelegate$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/spi/IBuilderDelegate$Companion;->a()Lteam/opay/core/spi/IBuilderDelegate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final d(Lokhttp3/OkHttpClient$Builder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/HttpFactory;->h()Lteam/opay/core/spi/IBuilderDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/spi/IBuilderDelegate;->getSSLSocketFactory()Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/http/HttpFactory;->h()Lteam/opay/core/spi/IBuilderDelegate;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/core/spi/IBuilderDelegate;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final e(Lokhttp3/OkHttpClient;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cls"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/core/http/HttpFactory;->k(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 2
    .line 3
    new-instance v1, Lq47;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lq47;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h()Lteam/opay/core/spi/IBuilderDelegate;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/HttpFactory;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/spi/IBuilderDelegate;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lteam/opay/core/http/arch/LiveDataCallAdapterFactory;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/core/http/arch/LiveDataCallAdapterFactory;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lteam/opay/core/http/arch/SuspendCallAdapterFactory;

    .line 24
    .line 25
    invoke-direct {v1}, Lteam/opay/core/http/arch/SuspendCallAdapterFactory;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lteam/opay/core/http/arch/SuspendHttpCallAdapterFactory;

    .line 33
    .line 34
    invoke-direct {v1}, Lteam/opay/core/http/arch/SuspendHttpCallAdapterFactory;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lteam/opay/core/http/arch/FlowCallAdapterFactory;

    .line 42
    .line 43
    invoke-direct {v1}, Lteam/opay/core/http/arch/FlowCallAdapterFactory;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "https://offline-api-user.opayweb.com"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
