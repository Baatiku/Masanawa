.class public final Lteam/opay/pay/update/network/HomeHeaderInterceptor;
.super Ljava/lang/Object;
.source "HomeHeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/update/network/HomeHeaderInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/pay/update/network/HomeHeaderInterceptor;",
        "Lokhttp3/Interceptor;",
        "<init>",
        "()V",
        "Lokhttp3/Request$Builder;",
        "builder",
        "",
        "a",
        "(Lokhttp3/Request$Builder;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "b",
        "Companion",
        "update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lteam/opay/pay/update/network/HomeHeaderInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/update/network/HomeHeaderInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/update/network/HomeHeaderInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->b:Lteam/opay/pay/update/network/HomeHeaderInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 5
    .line 6
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    return-void
.end method

.method private final a(Lokhttp3/Request$Builder;)V
    .locals 9

    .line 1
    const-string v0, "Accept"

    .line 2
    .line 3
    const-string v1, "application/json"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 6
    .line 7
    .line 8
    const-string v0, "Content-Type"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    const-string v2, ""

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    :cond_1
    const-string v3, "Authorization"

    .line 30
    .line 31
    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    :goto_1
    if-nez v0, :cond_3

    .line 45
    .line 46
    move-object v3, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move-object v3, v0

    .line 49
    :goto_2
    const/4 v7, 0x4

    .line 50
    const/4 v8, 0x0

    .line 51
    const-string v4, "Bearer "

    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v3, "token"

    .line 61
    .line 62
    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move-object v0, v1

    .line 75
    :goto_3
    if-nez v0, :cond_5

    .line 76
    .line 77
    move-object v0, v2

    .line 78
    :cond_5
    const-string v3, "device_id"

    .line 79
    .line 80
    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_4

    .line 92
    :cond_6
    move-object v0, v1

    .line 93
    :goto_4
    if-nez v0, :cond_7

    .line 94
    .line 95
    move-object v0, v2

    .line 96
    :cond_7
    const-string v3, "trace_id"

    .line 97
    .line 98
    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 102
    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_5

    .line 110
    :cond_8
    move-object v0, v1

    .line 111
    :goto_5
    if-nez v0, :cond_9

    .line 112
    .line 113
    move-object v0, v2

    .line 114
    :cond_9
    const-string v3, "blackbox"

    .line 115
    .line 116
    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 120
    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->appsFlyerId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_a
    if-nez v1, :cond_b

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_b
    move-object v2, v1

    .line 131
    :goto_6
    const-string v0, "appsflyerId"

    .line 132
    .line 133
    invoke-virtual {p1, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 134
    .line 135
    .line 136
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
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
    invoke-direct {p0, v0}, Lteam/opay/pay/update/network/HomeHeaderInterceptor;->a(Lokhttp3/Request$Builder;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
