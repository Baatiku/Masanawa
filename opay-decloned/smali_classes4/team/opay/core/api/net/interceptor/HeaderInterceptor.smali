.class public final Lteam/opay/core/api/net/interceptor/HeaderInterceptor;
.super Ljava/lang/Object;
.source "HeaderInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/net/interceptor/HeaderInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 (2\u00020\u0001:\u0001)B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010 \u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001fR\u001c\u0010$\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010#R\u0016\u0010\'\u001a\u0004\u0018\u00010%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/core/api/net/interceptor/HeaderInterceptor;",
        "Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lokhttp3/Request$Builder;",
        "builder",
        "",
        "g",
        "(Lokhttp3/Request$Builder;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "",
        "c",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "b",
        "Lid8;",
        "e",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/core/settings/NoClearStorage;",
        "d",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Ljava/util/TimeZone;",
        "kotlin.jvm.PlatformType",
        "Ljava/util/TimeZone;",
        "timeZone",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "f",
        "Companion",
        "sdk_release"
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
.field public static final f:Lteam/opay/core/api/net/interceptor/HeaderInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/TimeZone;

.field public final e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->f:Lteam/opay/core/api/net/interceptor/HeaderInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

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
    iput-object p1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lkv6;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lkv6;-><init>(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->b:Lid8;

    .line 21
    .line 22
    new-instance p1, Llv6;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Llv6;-><init>(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->c:Lid8;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->d:Ljava/util/TimeZone;

    .line 38
    .line 39
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 40
    .line 41
    const-class v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->h(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->f(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method private final e()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final f(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private final g(Lokhttp3/Request$Builder;)V
    .locals 2

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
    return-void
.end method

.method public static final h(Lteam/opay/core/api/net/interceptor/HeaderInterceptor;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lteam/opay/core/api/Country;->OTHER:Lteam/opay/core/api/Country;

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :goto_0
    sget-object p1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_1
    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaign"

    .line 2
    .line 3
    const-string v1, "dma"

    .line 4
    .line 5
    const-string v2, "model"

    .line 6
    .line 7
    const-string v3, "encode(...)"

    .line 8
    .line 9
    const-string v4, "chain"

    .line 10
    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-direct {p0, v5}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->g(Lokhttp3/Request$Builder;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e()Lteam/opay/core/settings/SettingsStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lteam/opay/core/settings/SettingsStorage;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v7, "Authorization"

    .line 34
    .line 35
    invoke-virtual {v5, v7, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e()Lteam/opay/core/settings/SettingsStorage;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lteam/opay/core/settings/SettingsStorage;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v8, "token"

    .line 47
    .line 48
    invoke-virtual {v5, v8, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 49
    .line 50
    .line 51
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    invoke-interface {v6}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v6, v9

    .line 62
    :goto_0
    const-string v10, ""

    .line 63
    .line 64
    if-nez v6, :cond_1

    .line 65
    .line 66
    move-object v6, v10

    .line 67
    :cond_1
    const-string v11, "device_id"

    .line 68
    .line 69
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v11, "getPackageName(...)"

    .line 79
    .line 80
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v11, "pn"

    .line 84
    .line 85
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 86
    .line 87
    .line 88
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    invoke-interface {v6}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move-object v6, v9

    .line 102
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v11, "version_code"

    .line 107
    .line 108
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 109
    .line 110
    .line 111
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-interface {v6}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object v6, v9

    .line 121
    :goto_2
    if-nez v6, :cond_4

    .line 122
    .line 123
    move-object v6, v10

    .line 124
    :cond_4
    const-string v11, "version_name"

    .line 125
    .line 126
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 127
    .line 128
    .line 129
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 130
    .line 131
    if-eqz v6, :cond_5

    .line 132
    .line 133
    invoke-interface {v6}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->advId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    move-object v6, v9

    .line 139
    :goto_3
    if-nez v6, :cond_6

    .line 140
    .line 141
    move-object v6, v10

    .line 142
    :cond_6
    const-string v11, "gaid"

    .line 143
    .line 144
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 145
    .line 146
    .line 147
    sget-object v6, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 148
    .line 149
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL;->l()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    const-string v11, "User-Agent"

    .line 154
    .line 155
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 156
    .line 157
    .line 158
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->a:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {p0, v6}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v11, "country"

    .line 165
    .line 166
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 167
    .line 168
    .line 169
    iget-object v6, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 170
    .line 171
    if-eqz v6, :cond_7

    .line 172
    .line 173
    invoke-interface {v6}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->traceId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    move-object v6, v9

    .line 179
    :goto_4
    if-nez v6, :cond_8

    .line 180
    .line 181
    move-object v6, v10

    .line 182
    :cond_8
    const-string v11, "trace_id"

    .line 183
    .line 184
    invoke-virtual {v5, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 185
    .line 186
    .line 187
    :try_start_0
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 188
    .line 189
    const-string v11, "MODEL"

    .line 190
    .line 191
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v2, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :catch_0
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v2, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 208
    .line 209
    .line 210
    :goto_5
    iget-object v2, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->d:Ljava/util/TimeZone;

    .line 211
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 213
    .line 214
    .line 215
    move-result-wide v11

    .line 216
    invoke-virtual {v2, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    div-int/lit16 v2, v2, 0x3e8

    .line 221
    .line 222
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const-string v6, "zone_offset"

    .line 227
    .line 228
    invoke-virtual {v5, v6, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 229
    .line 230
    .line 231
    :try_start_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 232
    .line 233
    const-string v6, "MANUFACTURER"

    .line 234
    .line 235
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :catch_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 252
    .line 253
    .line 254
    :goto_6
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 255
    .line 256
    if-eqz v1, :cond_9

    .line 257
    .line 258
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    goto :goto_7

    .line 263
    :cond_9
    move-object v1, v9

    .line 264
    :goto_7
    if-nez v1, :cond_a

    .line 265
    .line 266
    move-object v1, v10

    .line 267
    :cond_a
    const-string v2, "app"

    .line 268
    .line 269
    invoke-virtual {v5, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 273
    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    goto :goto_8

    .line 281
    :cond_b
    move-object v1, v9

    .line 282
    :goto_8
    if-nez v1, :cond_c

    .line 283
    .line 284
    move-object v1, v10

    .line 285
    :cond_c
    const-string v2, "platform"

    .line 286
    .line 287
    invoke-virtual {v5, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 291
    .line 292
    if-eqz v1, :cond_d

    .line 293
    .line 294
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IBuildDataGenerator;->mcc()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    goto :goto_9

    .line 299
    :cond_d
    move-object v1, v9

    .line 300
    :goto_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v2, "mcc"

    .line 305
    .line 306
    invoke-virtual {v5, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 310
    .line 311
    if-eqz v1, :cond_e

    .line 312
    .line 313
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-nez v1, :cond_f

    .line 318
    .line 319
    :cond_e
    const-string v1, "customer"

    .line 320
    .line 321
    :cond_f
    const-string v2, "role"

    .line 322
    .line 323
    invoke-virtual {v5, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 324
    .line 325
    .line 326
    :try_start_2
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 327
    .line 328
    if-eqz v1, :cond_10

    .line 329
    .line 330
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->campaign()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    goto :goto_a

    .line 335
    :catch_2
    nop

    .line 336
    goto :goto_b

    .line 337
    :cond_10
    move-object v1, v9

    .line 338
    :goto_a
    if-nez v1, :cond_11

    .line 339
    .line 340
    move-object v1, v10

    .line 341
    :cond_11
    invoke-virtual {v5, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 342
    .line 343
    .line 344
    goto :goto_d

    .line 345
    :goto_b
    iget-object v1, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 346
    .line 347
    if-eqz v1, :cond_12

    .line 348
    .line 349
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->campaign()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    goto :goto_c

    .line 354
    :cond_12
    move-object v1, v9

    .line 355
    :goto_c
    if-nez v1, :cond_13

    .line 356
    .line 357
    move-object v1, v10

    .line 358
    :cond_13
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 366
    .line 367
    .line 368
    :goto_d
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 369
    .line 370
    if-eqz v0, :cond_14

    .line 371
    .line 372
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->mediaSource()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    goto :goto_e

    .line 377
    :cond_14
    move-object v0, v9

    .line 378
    :goto_e
    if-nez v0, :cond_15

    .line 379
    .line 380
    move-object v0, v10

    .line 381
    :cond_15
    const-string v1, "mediaSource"

    .line 382
    .line 383
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 384
    .line 385
    .line 386
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 387
    .line 388
    invoke-virtual {v0}, Lteam/opay/olocation/OLocationManager;->g()Landroid/location/Location;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_16

    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 395
    .line 396
    .line 397
    move-result-wide v1

    .line 398
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    goto :goto_f

    .line 403
    :cond_16
    move-object v1, v9

    .line 404
    :goto_f
    if-eqz v0, :cond_17

    .line 405
    .line 406
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    goto :goto_10

    .line 415
    :cond_17
    move-object v0, v9

    .line 416
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v1, "|"

    .line 425
    .line 426
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const-string v1, "location"

    .line 437
    .line 438
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 439
    .line 440
    .line 441
    invoke-direct {p0}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->d()Lteam/opay/core/settings/NoClearStorage;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->h0()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-eqz v0, :cond_19

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_18

    .line 456
    .line 457
    goto :goto_11

    .line 458
    :cond_18
    const-string v1, "mgmPara"

    .line 459
    .line 460
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 461
    .line 462
    .line 463
    :cond_19
    :goto_11
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 464
    .line 465
    if-eqz v0, :cond_1a

    .line 466
    .line 467
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->getBlackbox()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    goto :goto_12

    .line 472
    :cond_1a
    move-object v0, v9

    .line 473
    :goto_12
    if-nez v0, :cond_1b

    .line 474
    .line 475
    move-object v0, v10

    .line 476
    :cond_1b
    const-string v1, "blackbox"

    .line 477
    .line 478
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 482
    .line 483
    if-eqz v0, :cond_1c

    .line 484
    .line 485
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->appsFlyerId()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    goto :goto_13

    .line 490
    :cond_1c
    move-object v0, v9

    .line 491
    :goto_13
    if-nez v0, :cond_1d

    .line 492
    .line 493
    move-object v0, v10

    .line 494
    :cond_1d
    const-string v1, "appsflyerId"

    .line 495
    .line 496
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 497
    .line 498
    .line 499
    iget-object v0, p0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;->e:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 500
    .line 501
    if-eqz v0, :cond_1e

    .line 502
    .line 503
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAdvertisingDataGenerator;->firebaseId()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    :cond_1e
    if-nez v9, :cond_1f

    .line 508
    .line 509
    goto :goto_14

    .line 510
    :cond_1f
    move-object v10, v9

    .line 511
    :goto_14
    const-string v0, "instanceId"

    .line 512
    .line 513
    invoke-virtual {v5, v0, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string v1, "remove-token"

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    const-string v2, "true"

    .line 527
    .line 528
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-eqz v0, :cond_20

    .line 533
    .line 534
    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v5, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 541
    .line 542
    .line 543
    :cond_20
    sget-object v0, Lc03;->a:Lc03;

    .line 544
    .line 545
    invoke-virtual {v0}, Lc03;->c()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_21

    .line 550
    .line 551
    const-string v0, "dark"

    .line 552
    .line 553
    goto :goto_15

    .line 554
    :cond_21
    const-string v0, "light"

    .line 555
    .line 556
    :goto_15
    const-string v1, "themeMode"

    .line 557
    .line 558
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    return-object p1
.end method
