.class public final Lteam/opay/pay/hybrid/HybridHeaderInterceptor;
.super Ljava/lang/Object;
.source "HybridHeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/hybrid/HybridHeaderInterceptor;",
        "Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "a",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "b",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "hybrid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->b:Landroid/content/Context;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 12
    .line 13
    const-class v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    const-string v3, "token"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v1, v3

    .line 44
    :goto_1
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v1, v2

    .line 48
    :goto_2
    const-string v4, "device_id"

    .line 49
    .line 50
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move-object v1, v3

    .line 63
    :goto_3
    if-eqz v1, :cond_4

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    move-object v1, v2

    .line 67
    :goto_4
    const-string v4, "app"

    .line 68
    .line 69
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move-object v1, v3

    .line 82
    :goto_5
    if-eqz v1, :cond_6

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_6
    move-object v1, v2

    .line 86
    :goto_6
    const-string v4, "platform"

    .line 87
    .line 88
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 92
    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_7

    .line 104
    :cond_7
    move-object v1, v3

    .line 105
    :goto_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v4, "version_code"

    .line 110
    .line 111
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_8

    .line 123
    :cond_8
    move-object v1, v3

    .line 124
    :goto_8
    if-eqz v1, :cond_9

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_9
    move-object v1, v2

    .line 128
    :goto_9
    const-string v4, "version_name"

    .line 129
    .line 130
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lteam/opay/pay/hybrid/HybridHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 134
    .line 135
    if-eqz v1, :cond_a

    .line 136
    .line 137
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :cond_a
    if-eqz v3, :cond_b

    .line 142
    .line 143
    move-object v2, v3

    .line 144
    :cond_b
    const-string v1, "trace_id"

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v0, "chain.proceed(builder.build())"

    .line 158
    .line 159
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object p1
.end method
