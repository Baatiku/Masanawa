.class public Lcom/opay/face/common/net/FaceConfigApi;
.super Ljava/lang/Object;
.source "FaceConfigApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/common/net/FaceConfigApi$a;,
        Lcom/opay/face/common/net/FaceConfigApi$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "FaceConfigApi"

.field public static final b:Landroid/os/Handler;

.field public static c:Lokhttp3/logging/HttpLoggingInterceptor;

.field public static d:Lcom/google/gson/GsonBuilder;

.field public static e:Lcom/google/gson/Gson;

.field public static f:Lokhttp3/OkHttpClient;

.field public static g:Lretrofit2/Retrofit;

.field public static h:Lcom/opay/face/common/net/FaceConfigApi$b;

.field public static volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->b:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 13
    .line 14
    new-instance v1, Lvs5;

    .line 15
    .line 16
    invoke-direct {v1}, Lvs5;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->c:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 23
    .line 24
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lws5;

    .line 30
    .line 31
    invoke-direct {v1}, Lws5;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class v2, Ljava/util/Date;

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->d:Lcom/google/gson/GsonBuilder;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->e:Lcom/google/gson/Gson;

    .line 47
    .line 48
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 49
    .line 50
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/opay/face/common/net/FaceConfigApi;->c:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    const-wide/16 v2, 0x3c

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->f:Lokhttp3/OkHttpClient;

    .line 80
    .line 81
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 82
    .line 83
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/opay/face/common/net/FaceConfigApi;->j()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lcom/opay/face/common/net/FaceConfigApi;->e:Lcom/google/gson/Gson;

    .line 95
    .line 96
    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v1, Lcom/opay/face/common/net/FaceConfigApi;->f:Lokhttp3/OkHttpClient;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->g:Lretrofit2/Retrofit;

    .line 115
    .line 116
    const-class v1, Lcom/opay/face/common/net/FaceConfigApi$b;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/opay/face/common/net/FaceConfigApi$b;

    .line 123
    .line 124
    sput-object v0, Lcom/opay/face/common/net/FaceConfigApi;->h:Lcom/opay/face/common/net/FaceConfigApi$b;

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    sput-boolean v0, Lcom/opay/face/common/net/FaceConfigApi;->i:Z

    .line 128
    .line 129
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

.method public static synthetic a(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/face/common/net/FaceConfigApi;->l(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lretrofit2/Call;Lcom/opay/face/common/net/FaceConfigApi$a;ZLjava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/opay/face/common/net/FaceConfigApi;->n(Lretrofit2/Call;Lcom/opay/face/common/net/FaceConfigApi$a;ZLjava/lang/String;ILandroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/face/common/net/FaceConfigApi;->p(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/face/common/net/FaceConfigApi;->q(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/face/common/net/FaceConfigApi;->o(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/face/common/net/FaceConfigApi;->r(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/opay/face/common/net/model/Config;Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/face/common/net/FaceConfigApi;->m(Landroid/content/Context;Lcom/opay/face/common/net/model/Config;Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h()Z
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "false"

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "disableSecurity"

    .line 10
    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return v0

    .line 26
    :catch_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public static i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/net/FaceConfigApi;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lzs5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lzs5;-><init>(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "https://api.opayweb.com"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "opayHost"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    return-object v0
.end method

.method public static k(Landroid/content/Context;ILjava/lang/String;Lcom/opay/face/common/net/FaceConfigApi$a;)Lretrofit2/Call;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/opay/face/common/net/FaceConfigApi$a;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "{\"business\":\""

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "\"}"

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Lcom/opay/face/util/AESUtils;->c()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Lcom/opay/face/util/SignUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :try_start_0
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/opay/face/OFaceAlg;->getInitCode()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_0

    .line 85
    .line 86
    sget-object v4, Lcom/opay/face/common/net/FaceConfigApi;->a:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-class v6, Lcom/opay/face/OFaceAlg;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " init:"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6}, Lcom/opay/face/OFaceAlg;->getInitCode()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v4, v5}, Lcom/opay/face/OFaceAlg;->initialize(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v4

    .line 138
    goto :goto_1

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Lcom/opay/face/OFaceAlg;->getPK()[B

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v4, v5}, Lcom/opay/face/util/RSA256Utils;->a([B[B)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_2

    .line 156
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    move-object v4, v2

    .line 160
    :goto_2
    invoke-static {}, Lcom/opay/face/common/net/FaceConfigApi;->h()Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_1

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {v5, p2}, Lcom/opay/face/util/AESUtils;->b([B[B)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    .line 179
    .line 180
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .line 182
    .line 183
    :try_start_1
    const-string v8, "body"

    .line 184
    .line 185
    invoke-virtual {v5, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_1
    move-exception p2

    .line 190
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    new-instance v0, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v5, "pkv"

    .line 207
    .line 208
    const-string v8, "1"

    .line 209
    .line 210
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const-string v8, "encrypted"

    .line 229
    .line 230
    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    const-string v5, "sign"

    .line 234
    .line 235
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const-string v3, "key"

    .line 239
    .line 240
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    const-string v3, "timestamp"

    .line 244
    .line 245
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string v1, "platform"

    .line 249
    .line 250
    const-string v3, "Android"

    .line 251
    .line 252
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const-string v1, "country"

    .line 256
    .line 257
    const-string v3, "NG"

    .line 258
    .line 259
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lf5a;->a()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const-string v3, "app"

    .line 271
    .line 272
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    const-string v1, "sdkVersion"

    .line 276
    .line 277
    const-string v3, "2.0.57"

    .line 278
    .line 279
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lcom/opay/face/common/util/TraceUtils;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    if-eqz v1, :cond_2

    .line 287
    .line 288
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    goto :goto_4

    .line 293
    :cond_2
    const/4 v1, 0x0

    .line 294
    :goto_4
    if-eqz v1, :cond_3

    .line 295
    .line 296
    move-object v2, v1

    .line 297
    :cond_3
    const-string v1, "device_id"

    .line 298
    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    sget-object v1, Lcom/opay/face/common/net/FaceConfigApi;->h:Lcom/opay/face/common/net/FaceConfigApi$b;

    .line 303
    .line 304
    invoke-interface {v1, v0, p2}, Lcom/opay/face/common/net/FaceConfigApi$b;->a(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    new-instance v0, Lus5;

    .line 309
    .line 310
    move-object v3, v0

    .line 311
    move-object v4, p2

    .line 312
    move-object v5, p3

    .line 313
    move v8, p1

    .line 314
    move-object v9, p0

    .line 315
    invoke-direct/range {v3 .. v9}, Lus5;-><init>(Lretrofit2/Call;Lcom/opay/face/common/net/FaceConfigApi$a;ZLjava/lang/String;ILandroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lcom/opay/face/util/ExecutorServiceUtils;->b(Ljava/lang/Runnable;)V

    .line 319
    .line 320
    .line 321
    return-object p2
.end method

.method public static synthetic l(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/opay/face/common/net/FaceConfigApi$a;->a(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Landroid/content/Context;Lcom/opay/face/common/net/model/Config;Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const/16 v3, 0x100

    .line 7
    .line 8
    new-array v3, v3, [B

    .line 9
    .line 10
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Lcom/opay/face/common/net/model/Config;->getSecuritySetting()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v4, p0, p1, v3}, Lcom/opay/face/OFaceAlg;->getSec(Landroid/content/Context;Ljava/lang/String;[B)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sub-long/2addr v4, v1

    .line 31
    sget-object p1, Lcom/opay/face/common/net/FaceConfigApi;->a:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "ACRequest:"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "ms"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-lez p0, :cond_0

    .line 59
    .line 60
    new-instance v1, Ljava/lang/String;

    .line 61
    .line 62
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    invoke-direct {v1, v3, v0, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "ACRequest:Log:"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {p1, v2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2, p0, v1}, Lcom/opay/face/common/net/FaceConfigApi;->s(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    :cond_0
    :goto_0
    sput-boolean v0, Lcom/opay/face/common/net/FaceConfigApi;->i:Z

    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    sput-boolean v0, Lcom/opay/face/common/net/FaceConfigApi;->i:Z

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :goto_2
    return-void
.end method

.method public static synthetic n(Lretrofit2/Call;Lcom/opay/face/common/net/FaceConfigApi$a;ZLjava/lang/String;ILandroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "Response is null!"

    .line 8
    .line 9
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "Response error:"

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lokhttp3/ResponseBody;

    .line 52
    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    const-string p0, "ResponseBody is null!"

    .line 56
    .line 57
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 65
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const-string p0, "ResponseBody string is null!"

    .line 72
    .line 73
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p0, "code"

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v1, "message"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "00000"

    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_4

    .line 101
    .line 102
    invoke-static {p1, v1}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_1
    move-exception p0

    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_4
    const-string p0, "data"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p2, p0}, Lcom/opay/face/util/AESUtils;->a([BLjava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    const-string p0, "decryptToString is null!"

    .line 132
    .line 133
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_6
    sget-object p2, Lcom/opay/face/common/net/FaceConfigApi;->e:Lcom/google/gson/Gson;

    .line 138
    .line 139
    const-class p3, Lcom/opay/face/common/net/model/FaceConfigRes;

    .line 140
    .line 141
    invoke-virtual {p2, p0, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lcom/opay/face/common/net/model/FaceConfigRes;

    .line 146
    .line 147
    if-eqz p0, :cond_b

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/opay/face/common/net/model/FaceConfigRes;->getConfig()Lcom/opay/face/common/net/model/Config;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-nez p2, :cond_7

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/opay/face/common/net/model/FaceConfigRes;->getConfig()Lcom/opay/face/common/net/model/Config;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    new-instance p3, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 161
    .line 162
    invoke-direct {p3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/Config;->getFaceSetting()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0, p3}, Lcom/opay/face/common/util/LiveConfigParser;->a(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_8

    .line 174
    .line 175
    invoke-static {}, Lcom/opay/face/common/util/LiveConfigParser;->b()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    invoke-virtual {p0}, Lcom/opay/face/common/net/model/FaceConfigRes;->getPublicKey()Lcom/opay/face/phoneface/model/PublicKey;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p3, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d1(Lcom/opay/face/phoneface/model/PublicKey;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/Config;->getExtraSetting()Lcom/opay/face/common/net/model/ExtraSetting;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const/4 v0, 0x1

    .line 195
    if-eqz p0, :cond_9

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/opay/face/common/net/model/Config;->getExtraSetting()Lcom/opay/face/common/net/model/ExtraSetting;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Lcom/opay/face/common/net/model/ExtraSetting;->isOpenLightCheck()Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_9

    .line 206
    .line 207
    const/4 p0, 0x1

    .line 208
    goto :goto_0

    .line 209
    :cond_9
    const/4 p0, 0x0

    .line 210
    :goto_0
    invoke-virtual {p3, p0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->V0(Z)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m0()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_a

    .line 218
    .line 219
    if-gez p4, :cond_a

    .line 220
    .line 221
    sget-boolean p0, Lcom/opay/face/common/net/FaceConfigApi;->i:Z

    .line 222
    .line 223
    if-nez p0, :cond_a

    .line 224
    .line 225
    sput-boolean v0, Lcom/opay/face/common/net/FaceConfigApi;->i:Z

    .line 226
    .line 227
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    .line 228
    .line 229
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 230
    .line 231
    .line 232
    new-instance p4, Ljava/lang/Thread;

    .line 233
    .line 234
    new-instance v0, Lxs5;

    .line 235
    .line 236
    invoke-direct {v0, p5, p2, p1, p0}, Lxs5;-><init>(Landroid/content/Context;Lcom/opay/face/common/net/model/Config;Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/util/concurrent/CountDownLatch;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    .line 244
    .line 245
    :try_start_4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 246
    .line 247
    const-wide/16 p4, 0x1

    .line 248
    .line 249
    invoke-virtual {p0, p4, p5, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 250
    .line 251
    .line 252
    :catch_2
    :cond_a
    :try_start_5
    invoke-static {p1, p3}, Lcom/opay/face/common/net/FaceConfigApi;->t(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_b
    :goto_1
    const-string p0, "FaceConfigRes to json error!"

    .line 257
    .line 258
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :catch_3
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-static {p1, p0}, Lcom/opay/face/common/net/FaceConfigApi;->i(Lcom/opay/face/common/net/FaceConfigApi$a;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_4
    return-void
.end method

.method public static synthetic o(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/opay/face/common/net/FaceConfigApi$a;->c(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic q(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string p2, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static synthetic r(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/opay/face/common/net/FaceConfigApi$a;->b(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static s(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/net/FaceConfigApi;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lys5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lys5;-><init>(Lcom/opay/face/common/net/FaceConfigApi$a;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static t(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/net/FaceConfigApi;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lat5;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lat5;-><init>(Lcom/opay/face/common/net/FaceConfigApi$a;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
