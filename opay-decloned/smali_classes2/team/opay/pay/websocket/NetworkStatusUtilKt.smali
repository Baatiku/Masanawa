.class public final Lteam/opay/pay/websocket/NetworkStatusUtilKt;
.super Ljava/lang/Object;
.source "NetworkStatusUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a%\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/content/Context;",
        "context",
        "Lkotlin/Function0;",
        "",
        "callback",
        "Lteam/opay/pay/websocket/NetWorkReceiver;",
        "a",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lteam/opay/pay/websocket/NetWorkReceiver;",
        "websocket_profile"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lteam/opay/pay/websocket/NetWorkReceiver;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lteam/opay/pay/websocket/NetWorkReceiver;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/websocket/NetWorkReceiver;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/websocket/NetWorkReceiver;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lteam/opay/pay/websocket/NetworkStatusUtilKt$registerNetworkStatus$1;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lteam/opay/pay/websocket/NetworkStatusUtilKt$registerNetworkStatus$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lteam/opay/pay/websocket/NetWorkReceiver;->a(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/content/IntentFilter;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    sget-object p0, Ld00;->a:Ld00;

    .line 48
    .line 49
    new-instance v1, Lteam/opay/pay/websocket/NetworkStatusUtilKt$a;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Lteam/opay/pay/websocket/NetworkStatusUtilKt$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ld00;->i(Ld00$a;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method
