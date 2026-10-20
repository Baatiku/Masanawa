.class final Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebSocketApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/websocket/WebSocketApi;->q(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.websocket.WebSocketApi$connectWs$1"
    f = "WebSocketApi.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $resetCount:Z

.field label:I

.field final synthetic this$0:Lteam/opay/pay/websocket/WebSocketApi;


# direct methods
.method public constructor <init>(ZLteam/opay/pay/websocket/WebSocketApi;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lteam/opay/pay/websocket/WebSocketApi;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->$resetCount:Z

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->this$0:Lteam/opay/pay/websocket/WebSocketApi;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->$resetCount:Z

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->this$0:Lteam/opay/pay/websocket/WebSocketApi;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;-><init>(ZLteam/opay/pay/websocket/WebSocketApi;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lzr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 12
    .line 13
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->b(Landroid/content/Context;)Lteam/opay/swarmfoundation/device/NetworkType;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lteam/opay/swarmfoundation/device/NetworkType;->NONE:Lteam/opay/swarmfoundation/device/NetworkType;

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lteam/opay/pay/websocket/WebSocketApi;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    iget-boolean p1, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->$resetCount:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Lteam/opay/pay/websocket/WebSocketApi;->n(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/pay/websocket/WebSocketApi;->h(Lteam/opay/pay/websocket/WebSocketApi;)Lokhttp3/OkHttpClient;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1}, Lteam/opay/pay/websocket/WebSocketApi;->d(Lteam/opay/pay/websocket/WebSocketApi;)Lokhttp3/Request;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v1, p0, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;->this$0:Lteam/opay/pay/websocket/WebSocketApi;

    .line 61
    .line 62
    invoke-virtual {v0, p1, v1}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lteam/opay/pay/websocket/WebSocketApi;->o(Lokhttp3/WebSocket;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method
