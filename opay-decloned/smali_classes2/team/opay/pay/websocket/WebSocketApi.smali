.class public final Lteam/opay/pay/websocket/WebSocketApi;
.super Lokhttp3/WebSocketListener;
.source "WebSocketApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J7\u0010\u001c\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ7\u0010\u001e\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00172\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001aH\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\'\u0010%\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010\'\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\'\u0010&J)\u0010,\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010)\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u001f\u0010.\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u001f\u0010.\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u0008.\u00102J\u001f\u00103\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u00083\u00104R\u001a\u00109\u001a\u0008\u0012\u0004\u0012\u000206058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R0\u0010>\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000c0:j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000c`;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010A\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR2\u0010N\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001a0K0J0I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010Q\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u001d\u0010W\u001a\u0004\u0018\u00010R8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010VR\u001b\u0010[\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010T\u001a\u0004\u0008Y\u0010ZR#\u0010a\u001a\n ]*\u0004\u0018\u00010\\0\\8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010T\u001a\u0004\u0008_\u0010`R\u0018\u0010e\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR#\u0010i\u001a\n ]*\u0004\u0018\u00010f0f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010T\u001a\u0004\u0008)\u0010h\u00a8\u0006j"
    }
    d2 = {
        "Lteam/opay/pay/websocket/WebSocketApi;",
        "Lokhttp3/WebSocketListener;",
        "<init>",
        "()V",
        "",
        "z",
        "",
        "resetCount",
        "q",
        "(Z)Z",
        "p",
        "A",
        "Lteam/opay/pay/websocket/SubTask;",
        "task",
        "B",
        "(Lteam/opay/pay/websocket/SubTask;)V",
        "x",
        "()Z",
        "",
        "text",
        "y",
        "(Ljava/lang/String;)V",
        "r",
        "T",
        "",
        "ext",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "listener",
        "C",
        "(Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;)V",
        "D",
        "w",
        "Lokhttp3/WebSocket;",
        "webSocket",
        "",
        "code",
        "reason",
        "onClosed",
        "(Lokhttp3/WebSocket;ILjava/lang/String;)V",
        "onClosing",
        "",
        "t",
        "Lokhttp3/Response;",
        "response",
        "onFailure",
        "(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V",
        "onMessage",
        "(Lokhttp3/WebSocket;Ljava/lang/String;)V",
        "Lokio/ByteString;",
        "bytes",
        "(Lokhttp3/WebSocket;Lokio/ByteString;)V",
        "onOpen",
        "(Lokhttp3/WebSocket;Lokhttp3/Response;)V",
        "",
        "",
        "b",
        "[Ljava/lang/Long;",
        "connectIntervalArray",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "c",
        "Ljava/util/HashMap;",
        "subscriberMap",
        "d",
        "I",
        "retryCount",
        "e",
        "Lokhttp3/WebSocket;",
        "websocket",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "f",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "wsStatus",
        "",
        "",
        "Ljava/lang/ref/WeakReference;",
        "g",
        "Ljava/util/Map;",
        "listReceivers",
        "h",
        "Ljava/lang/String;",
        "secretKey",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "i",
        "Lid8;",
        "s",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "j",
        "u",
        "()Ljava/lang/String;",
        "WS_HOST",
        "Lokhttp3/OkHttpClient;",
        "kotlin.jvm.PlatformType",
        "k",
        "v",
        "()Lokhttp3/OkHttpClient;",
        "wsHttpClient",
        "Lzr2;",
        "l",
        "Lzr2;",
        "scope",
        "Lokhttp3/Request;",
        "m",
        "()Lokhttp3/Request;",
        "request",
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


# static fields
.field public static final a:Lteam/opay/pay/websocket/WebSocketApi;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:[Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/websocket/SubTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:I

.field public static e:Lokhttp3/WebSocket;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static f:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "*>;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static l:Lzr2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/pay/websocket/WebSocketApi;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/websocket/WebSocketApi;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->a:Lteam/opay/pay/websocket/WebSocketApi;

    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-wide/16 v1, 0x7d0

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-wide/16 v2, 0xfa0

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-wide/16 v3, 0x1f40

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x4

    .line 33
    new-array v4, v4, [Ljava/lang/Long;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object v0, v4, v5

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object v1, v4, v0

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    aput-object v2, v4, v1

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    aput-object v3, v4, v1

    .line 46
    .line 47
    sput-object v4, Lteam/opay/pay/websocket/WebSocketApi;->b:[Ljava/lang/Long;

    .line 48
    .line 49
    new-instance v1, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lteam/opay/pay/websocket/WebSocketApi;->c:Ljava/util/HashMap;

    .line 55
    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 59
    .line 60
    .line 61
    sput-object v1, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->g:Ljava/util/Map;

    .line 69
    .line 70
    const-string v0, ""

    .line 71
    .line 72
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->h:Ljava/lang/String;

    .line 73
    .line 74
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi$generator$2;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$generator$2;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->i:Lid8;

    .line 81
    .line 82
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi$WS_HOST$2;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$WS_HOST$2;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->j:Lid8;

    .line 89
    .line 90
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi$wsHttpClient$2;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$wsHttpClient$2;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->k:Lid8;

    .line 97
    .line 98
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi$request$2;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$request$2;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->m:Lid8;

    .line 105
    .line 106
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 107
    .line 108
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi$1;->INSTANCE:Lteam/opay/pay/websocket/WebSocketApi$1;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lteam/opay/pay/websocket/NetworkStatusUtilKt;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lteam/opay/pay/websocket/NetWorkReceiver;

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/websocket/WebSocketApi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/pay/websocket/WebSocketApi;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/websocket/WebSocketApi;->q(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lteam/opay/pay/websocket/WebSocketApi;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->t()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lteam/opay/pay/websocket/WebSocketApi;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Lokhttp3/WebSocket;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->e:Lokhttp3/WebSocket;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Lteam/opay/pay/websocket/WebSocketApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->v()Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j(Lteam/opay/pay/websocket/WebSocketApi;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/websocket/WebSocketApi;->y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lteam/opay/pay/websocket/WebSocketApi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lteam/opay/pay/websocket/WebSocketApi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lteam/opay/pay/websocket/WebSocketApi;Lteam/opay/pay/websocket/SubTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/websocket/WebSocketApi;->B(Lteam/opay/pay/websocket/SubTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(I)V
    .locals 0

    .line 1
    sput p0, Lteam/opay/pay/websocket/WebSocketApi;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Lokhttp3/WebSocket;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/websocket/WebSocketApi;->e:Lokhttp3/WebSocket;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/g;->e(Lzr2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    sput-object v1, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 15
    .line 16
    sput-object v1, Lteam/opay/pay/websocket/WebSocketApi;->e:Lokhttp3/WebSocket;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->h:Ljava/lang/String;

    .line 21
    .line 22
    :goto_1
    return-void
.end method

.method public final B(Lteam/opay/pay/websocket/SubTask;)V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->e:Lokhttp3/WebSocket;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lteam/opay/pay/websocket/SubTask;->c(Lokhttp3/WebSocket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final C(Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/websocket/IWsMessageDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/g;->a(Lkotlin/coroutines/CoroutineContext;)Lzr2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 24
    .line 25
    :cond_0
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v4, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {v4, p2, p1, v0}, Lteam/opay/pay/websocket/WebSocketApi$subscriber$1;-><init>(Lteam/opay/pay/websocket/IWsMessageDelegate;Ljava/util/Map;Ljr2;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final D(Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/websocket/IWsMessageDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Lteam/opay/pay/websocket/WebSocketApi$unSubscriber$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p2, p1, v0}, Lteam/opay/pay/websocket/WebSocketApi$unSubscriber$1;-><init>(Lteam/opay/pay/websocket/IWsMessageDelegate;Ljava/util/Map;Ljr2;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 6
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "onClosed, code = "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ", reason = "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 43
    .line 44
    .line 45
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lteam/opay/pay/websocket/WebSocketApi$onClosed$1;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-direct {v3, p1}, Lteam/opay/pay/websocket/WebSocketApi$onClosed$1;-><init>(Ljr2;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "onClosing, code = "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ", reason = "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 9
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "webSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "t"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "onFailure, Throwable = "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, ", Response = "

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    if-nez p3, :cond_0

    .line 38
    .line 39
    move-object v0, p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p3}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->s()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    move-object p1, p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-interface {p1}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_1
    if-eqz p1, :cond_9

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    goto :goto_6

    .line 69
    :cond_2
    if-nez p3, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/16 p3, 0x191

    .line 77
    .line 78
    if-ne p1, p3, :cond_4

    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_4
    :goto_2
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 89
    .line 90
    .line 91
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    new-instance v4, Lteam/opay/pay/websocket/WebSocketApi$onFailure$1;

    .line 97
    .line 98
    invoke-direct {v4, p2}, Lteam/opay/pay/websocket/WebSocketApi$onFailure$1;-><init>(Ljr2;)V

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->x()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->c:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    sget p1, Lteam/opay/pay/websocket/WebSocketApi;->d:I

    .line 123
    .line 124
    sget-object p3, Lteam/opay/pay/websocket/WebSocketApi;->b:[Ljava/lang/Long;

    .line 125
    .line 126
    array-length v1, p3

    .line 127
    if-ge p1, v1, :cond_6

    .line 128
    .line 129
    aget-object p1, p3, p1

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    sget p1, Lteam/opay/pay/websocket/WebSocketApi;->d:I

    .line 136
    .line 137
    add-int/2addr p1, v0

    .line 138
    sput p1, Lteam/opay/pay/websocket/WebSocketApi;->d:I

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    invoke-static {p3}, Lkotlin/collections/a;->b0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    :goto_4
    sget-object v3, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 152
    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    new-instance v6, Lteam/opay/pay/websocket/WebSocketApi$onFailure$2;

    .line 161
    .line 162
    invoke-direct {v6, v1, v2, p2}, Lteam/opay/pay/websocket/WebSocketApi$onFailure$2;-><init>(JLjr2;)V

    .line 163
    .line 164
    .line 165
    const/4 v7, 0x2

    .line 166
    const/4 v8, 0x0

    .line 167
    const/4 v5, 0x0

    .line 168
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_5
    return-void

    .line 172
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lteam/opay/pay/websocket/WebSocketApi;->r()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lteam/opay/pay/websocket/WebSocketApi$onMessage$1;

    const/4 p1, 0x0

    invoke-direct {v3, p2, p1}, Lteam/opay/pay/websocket/WebSocketApi$onMessage$1;-><init>(Ljava/lang/String;Ljr2;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 6
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "onOpen, response = "

    .line 15
    .line 16
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lteam/opay/pay/websocket/WebSocketApi$onOpen$1;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-direct {v3, p1}, Lteam/opay/pay/websocket/WebSocketApi$onOpen$1;-><init>(Ljr2;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 p1, 0x0

    .line 42
    sput p1, Lteam/opay/pay/websocket/WebSocketApi;->d:I

    .line 43
    .line 44
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    const-string v0, "Lock"

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->c:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/websocket/WebSocketApi;->g:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final q(Z)Z
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connectWs status = "

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x3

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    :cond_1
    sget-object v2, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v5, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {v5, p1, p0, v0}, Lteam/opay/pay/websocket/WebSocketApi$connectWs$1;-><init>(ZLteam/opay/pay/websocket/WebSocketApi;Ljr2;)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return v1
.end method

.method public final r()V
    .locals 9

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "disconnectWs status = "

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object v3, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v6, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$1;

    .line 42
    .line 43
    invoke-direct {v6, v1}, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$1;-><init>(Ljr2;)V

    .line 44
    .line 45
    .line 46
    const/4 v7, 0x3

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    sget-object v3, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 64
    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    new-instance v6, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$2;

    .line 69
    .line 70
    invoke-direct {v6, v1}, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$2;-><init>(Ljr2;)V

    .line 71
    .line 72
    .line 73
    const/4 v7, 0x3

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    sget-object v2, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 91
    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    new-instance v5, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$3;

    .line 96
    .line 97
    invoke-direct {v5, v1}, Lteam/opay/pay/websocket/WebSocketApi$disconnectWs$3;-><init>(Ljr2;)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x3

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_0
    return-void
.end method

.method public final s()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final t()Lokhttp3/Request;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/Request;

    .line 8
    .line 9
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w()Z
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    :cond_0
    const-string v2, "msgType"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    const-string v2, "channel"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    :cond_1
    move-object v6, v2

    .line 39
    const-string v2, "ext"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    move-object v2, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    if-nez v2, :cond_3

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    :cond_3
    const-string v4, "onReceiveMessage, text = "

    .line 59
    .line 60
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const v4, -0x5ce8414f

    .line 68
    .line 69
    .line 70
    if-eq p1, v4, :cond_11

    .line 71
    .line 72
    const v4, -0x3b3812d6

    .line 73
    .line 74
    .line 75
    if-eq p1, v4, :cond_b

    .line 76
    .line 77
    const v4, 0x12b61

    .line 78
    .line 79
    .line 80
    if-eq p1, v4, :cond_4

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    const-string p1, "MSG"

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_5
    const-string p1, "msgId"

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_6

    .line 101
    .line 102
    const-string p1, ""

    .line 103
    .line 104
    :cond_6
    move-object v7, p1

    .line 105
    sget-object p1, Lw6g;->a:Lw6g;

    .line 106
    .line 107
    invoke-virtual {p1, v7}, Lw6g;->b(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_12

    .line 112
    .line 113
    sget-object p1, Lteam/opay/pay/websocket/WebSocketApi;->g:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Ljava/util/List;

    .line 120
    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 139
    .line 140
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 145
    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    new-instance v4, Lcom/google/gson/Gson;

    .line 150
    .line 151
    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 159
    .line 160
    if-nez v0, :cond_9

    .line 161
    .line 162
    move-object v0, v3

    .line 163
    goto :goto_2

    .line 164
    :cond_9
    invoke-virtual {v0}, Lteam/opay/pay/websocket/IWsMessageDelegate;->b()Ljava/lang/reflect/Type;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    :goto_2
    invoke-virtual {v4, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sget-object v4, Lteam/opay/pay/websocket/WebSocketApi;->l:Lzr2;

    .line 173
    .line 174
    invoke-virtual {v1, v0, v4}, Lteam/opay/pay/websocket/IWsMessageDelegate;->e(Ljava/lang/Object;Lzr2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "onWsMessageReceived VALUE_MSG, error = "

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_a
    :goto_3
    new-instance p1, Lteam/opay/pay/websocket/SubTask;

    .line 190
    .line 191
    const-string v5, "RECEIPT"

    .line 192
    .line 193
    const-string v0, "channel"

    .line 194
    .line 195
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const/16 v9, 0x10

    .line 199
    .line 200
    const/4 v10, 0x0

    .line 201
    const/4 v4, 0x3

    .line 202
    const/4 v8, 0x0

    .line 203
    move-object v3, p1

    .line 204
    invoke-direct/range {v3 .. v10}, Lteam/opay/pay/websocket/SubTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lteam/opay/pay/websocket/WebSocketApi;->B(Lteam/opay/pay/websocket/SubTask;)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_b
    const-string p1, "SUBSCRIBE"

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_c

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_c
    new-instance p1, Lcom/google/gson/Gson;

    .line 221
    .line 222
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lteam/opay/pay/websocket/WebSocketApi$onReceiveMessage$$inlined$fromJson$1;

    .line 226
    .line 227
    invoke-direct {v0}, Lteam/opay/pay/websocket/WebSocketApi$onReceiveMessage$$inlined$fromJson$1;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    check-cast p1, Lteam/opay/pay/websocket/SubResponse;

    .line 239
    .line 240
    if-nez p1, :cond_d

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_d
    invoke-virtual {p1}, Lteam/opay/pay/websocket/SubResponse;->a()Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-nez p1, :cond_e

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    const/16 v0, 0xc8

    .line 255
    .line 256
    if-ne p1, v0, :cond_12

    .line 257
    .line 258
    const-string p1, "Lock"

    .line 259
    .line 260
    monitor-enter p1

    .line 261
    :try_start_1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->c:Ljava/util/HashMap;

    .line 262
    .line 263
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    const-string v1, "onReceiveMessage SUBSCRIBE set task to send task = "

    .line 270
    .line 271
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lteam/opay/pay/websocket/SubTask;

    .line 283
    .line 284
    if-nez v0, :cond_f

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_f
    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Lteam/opay/pay/websocket/SubTask;->d(I)V

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    goto :goto_5

    .line 294
    :cond_10
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    .line 296
    monitor-exit p1

    .line 297
    goto :goto_6

    .line 298
    :goto_5
    monitor-exit p1

    .line 299
    throw v0

    .line 300
    :cond_11
    const-string p1, "UNSUBSCRIBE"

    .line 301
    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    :cond_12
    :goto_6
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/websocket/WebSocketApi;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lteam/opay/pay/websocket/WebSocketApi;->q(Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
