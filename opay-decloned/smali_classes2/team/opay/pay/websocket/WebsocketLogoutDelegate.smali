.class public final Lteam/opay/pay/websocket/WebsocketLogoutDelegate;
.super Ljava/lang/Object;
.source "WebsocketDelegate.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/login/ILoginListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/pay/websocket/WebsocketLogoutDelegate;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "()V",
        "onCancel",
        "",
        "onSuccess",
        "websocket_profile"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
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
.method public onCancel()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/websocket/WebSocketApi;->r()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
