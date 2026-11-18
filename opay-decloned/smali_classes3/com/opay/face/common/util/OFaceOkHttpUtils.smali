.class public Lcom/opay/face/common/util/OFaceOkHttpUtils;
.super Ljava/lang/Object;
.source "OFaceOkHttpUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static synthetic a(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/face/common/util/OFaceOkHttpUtils;->c(Lokhttp3/Call;)Lokhttp3/EventListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Lokhttp3/OkHttpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/utils/OkHttpUtil;->a:Lteam/opay/swarmfoundation/utils/OkHttpUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "opay_capp"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/swarmfoundation/utils/OkHttpUtil;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    .line 17
    .line 18
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lokhttp3/Interceptor;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    const-wide/16 v0, 0x3c

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance p1, La6a;

    .line 65
    .line 66
    invoke-direct {p1}, La6a;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static synthetic c(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 1
    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/opay/face/common/net/model/NetworkMetrics;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/opay/face/common/net/PerformanceEventListener;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/opay/face/common/net/PerformanceEventListener;-><init>(Lcom/opay/face/common/net/model/NetworkMetrics;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
