.class public final Lteam/opay/risk/RiskHeaderInterceptor;
.super Ljava/lang/Object;
.source "RiskHeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/risk/RiskHeaderInterceptor;",
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
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "b",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "risk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->a:Landroid/content/Context;

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
    iput-object p1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    const-string v3, ""

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    move-object v1, v3

    .line 30
    :cond_1
    const-string v4, "token"

    .line 31
    .line 32
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, v2

    .line 45
    :goto_1
    if-nez v1, :cond_3

    .line 46
    .line 47
    move-object v1, v3

    .line 48
    :cond_3
    const-string v4, "device_id"

    .line 49
    .line 50
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move-object v1, v2

    .line 63
    :goto_2
    if-nez v1, :cond_5

    .line 64
    .line 65
    move-object v1, v3

    .line 66
    :cond_5
    const-string v4, "app"

    .line 67
    .line 68
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move-object v1, v2

    .line 81
    :goto_3
    if-nez v1, :cond_7

    .line 82
    .line 83
    move-object v1, v3

    .line 84
    :cond_7
    const-string v4, "platform"

    .line 85
    .line 86
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 90
    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    move-object v1, v2

    .line 103
    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v4, "version_code"

    .line 108
    .line 109
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 113
    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_5

    .line 121
    :cond_9
    move-object v1, v2

    .line 122
    :goto_5
    if-nez v1, :cond_a

    .line 123
    .line 124
    move-object v1, v3

    .line 125
    :cond_a
    const-string v4, "version_name"

    .line 126
    .line 127
    invoke-virtual {v0, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 131
    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :cond_b
    if-nez v2, :cond_c

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_c
    move-object v3, v2

    .line 142
    :goto_6
    const-string v1, "trace_id"

    .line 143
    .line 144
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lteam/opay/risk/RiskHeaderInterceptor;->a:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "getPackageName(...)"

    .line 154
    .line 155
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v2, "pn"

    .line 159
    .line 160
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1
.end method
