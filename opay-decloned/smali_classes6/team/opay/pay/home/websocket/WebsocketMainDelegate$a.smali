.class public final Lteam/opay/pay/home/websocket/WebsocketMainDelegate$a;
.super Lteam/opay/pay/websocket/IWsMessageDelegate;
.source "WebsocketMainDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/websocket/WebsocketMainDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/websocket/IWsMessageDelegate<",
        "Lteam/opay/pay/home/websocket/WsAdData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/home/websocket/WebsocketMainDelegate$a",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lteam/opay/pay/home/websocket/WsAdData;",
        "data",
        "",
        "f",
        "(Lteam/opay/pay/home/websocket/WsAdData;)V",
        "",
        "a",
        "()Ljava/lang/String;",
        "",
        "c",
        "()Z",
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


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/websocket/WebsocketMainDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/websocket/WebsocketMainDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/websocket/WebsocketMainDelegate$a;->a:Lteam/opay/pay/home/websocket/WebsocketMainDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/websocket/IWsMessageDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "opay_app_ws_ad_change_event"

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/websocket/WsAdData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/websocket/WebsocketMainDelegate$a;->f(Lteam/opay/pay/home/websocket/WsAdData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lteam/opay/pay/home/websocket/WsAdData;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/home/websocket/WebsocketMainDelegate$a;->a:Lteam/opay/pay/home/websocket/WebsocketMainDelegate;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v0}, Lteam/opay/pay/home/websocket/WebsocketMainDelegate;->access$getFlowMap$p(Lteam/opay/pay/home/websocket/WebsocketMainDelegate;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/home/websocket/WsAdData;->getAd_position_code()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Long;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    :goto_0
    sub-long v3, v1, v3

    .line 33
    .line 34
    invoke-static {v0}, Lteam/opay/pay/home/websocket/WebsocketMainDelegate;->access$getInterval$p(Lteam/opay/pay/home/websocket/WebsocketMainDelegate;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    int-to-long v5, v5

    .line 39
    sub-long/2addr v3, v5

    .line 40
    const-wide/16 v5, 0xa

    .line 41
    .line 42
    cmp-long v7, v3, v5

    .line 43
    .line 44
    if-gtz v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lteam/opay/pay/home/websocket/WebsocketMainDelegate;->access$getFlowMap$p(Lteam/opay/pay/home/websocket/WebsocketMainDelegate;)Ljava/util/HashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lteam/opay/pay/home/websocket/WsAdData;->getAd_position_code()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    const-string v2, ""

    .line 62
    .line 63
    :cond_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object v3, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 67
    .line 68
    const/4 v7, 0x4

    .line 69
    const/4 v8, 0x0

    .line 70
    const-string/jumbo v4, "ws_ad_event_key"

    .line 71
    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    move-object v5, p1

    .line 75
    invoke-static/range {v3 .. v8}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    return-void
.end method
