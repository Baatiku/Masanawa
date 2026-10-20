.class final Lteam/opay/pay/websocket/WebSocketApi$request$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WebSocketApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/websocket/WebSocketApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/Request;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/Request;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$request$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/websocket/WebSocketApi$request$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/websocket/WebSocketApi$request$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi$request$2;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$request$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi$request$2;->invoke()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/Request;
    .locals 2

    .line 2
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    invoke-static {v1}, Lteam/opay/pay/websocket/WebSocketApi;->f(Lteam/opay/pay/websocket/WebSocketApi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
