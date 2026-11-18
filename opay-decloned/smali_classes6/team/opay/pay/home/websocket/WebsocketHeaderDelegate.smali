.class public final Lteam/opay/pay/home/websocket/WebsocketHeaderDelegate;
.super Ljava/lang/Object;
.source "WebsocketHeaderDelegate.kt"

# interfaces
.implements Lr87;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lr87;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/pay/home/websocket/WebsocketHeaderDelegate;",
        "Lr87;",
        "<init>",
        "()V",
        "Lteam/opay/core/api/net/interceptor/HeaderInterceptor;",
        "getHeaderInterceptor",
        "()Lteam/opay/core/api/net/interceptor/HeaderInterceptor;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getHeaderInterceptor()Lokhttp3/Interceptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/websocket/WebsocketHeaderDelegate;->getHeaderInterceptor()Lteam/opay/core/api/net/interceptor/HeaderInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderInterceptor()Lteam/opay/core/api/net/interceptor/HeaderInterceptor;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;

    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/core/api/net/interceptor/HeaderInterceptor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
