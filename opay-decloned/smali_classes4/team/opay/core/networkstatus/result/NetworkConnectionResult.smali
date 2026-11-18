.class public final Lteam/opay/core/networkstatus/result/NetworkConnectionResult;
.super Ljava/lang/Object;
.source "ResultData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000b\u0012\u0018\u0008\u0002\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\tj\u0008\u0012\u0004\u0012\u00020\u000f`\u000b\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00170\tj\u0008\u0012\u0004\u0012\u00020\u0017`\u000b\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J2\u0010;\u001a.\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020=\u0012\u0006\u0012\u0004\u0018\u00010\u00010<0\tj\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020=\u0012\u0006\u0012\u0004\u0018\u00010\u00010<`\u000bJ\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0019\u0010A\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u00c6\u0003J\u0019\u0010B\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000bH\u00c6\u0003J\u0019\u0010C\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\tj\u0008\u0012\u0004\u0012\u00020\u000f`\u000bH\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u0019\u0010G\u001a\u0012\u0012\u0004\u0012\u00020\u00170\tj\u0008\u0012\u0004\u0012\u00020\u0017`\u000bH\u00c6\u0003J\u00b7\u0001\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000b2\u0018\u0008\u0002\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\tj\u0008\u0012\u0004\u0012\u00020\u000f`\u000b2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00170\tj\u0008\u0012\u0004\u0012\u00020\u0017`\u000bH\u00c6\u0001J\u0013\u0010I\u001a\u00020\u00032\u0008\u0010J\u001a\u0004\u0018\u00010KH\u00d6\u0003J\t\u0010L\u001a\u00020MH\u00d6\u0001J\t\u0010N\u001a\u00020=H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R*\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\u0008\u0012\u0004\u0012\u00020\r`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010&\"\u0004\u0008*\u0010(R*\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\tj\u0008\u0012\u0004\u0012\u00020\u000f`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010&\"\u0004\u0008,\u0010(R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00170\tj\u0008\u0012\u0004\u0012\u00020\u0017`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010&\"\u0004\u0008:\u0010(\u00a8\u0006O"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        "Ljava/io/Serializable;",
        "isOPayApiConnected",
        "",
        "wifiInfo",
        "Lteam/opay/core/networkstatus/result/WifiInfo;",
        "cellularInfo",
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        "httpResult",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/networkstatus/result/HttpResult;",
        "Lkotlin/collections/ArrayList;",
        "dnsResult",
        "Lteam/opay/core/networkstatus/result/DnsResult;",
        "pingResult",
        "Lteam/opay/core/networkstatus/result/PingResult;",
        "proxyResult",
        "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        "cellularPingResult",
        "Lteam/opay/core/networkstatus/result/CellularPingResult;",
        "httpSpeedResult",
        "Lteam/opay/core/networkstatus/result/HttpSpeedResult;",
        "telnetResult",
        "Lteam/opay/core/networkstatus/result/TelnetResult;",
        "<init>",
        "(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)V",
        "()Z",
        "setOPayApiConnected",
        "(Z)V",
        "getWifiInfo",
        "()Lteam/opay/core/networkstatus/result/WifiInfo;",
        "setWifiInfo",
        "(Lteam/opay/core/networkstatus/result/WifiInfo;)V",
        "getCellularInfo",
        "()Lteam/opay/core/networkstatus/result/CellularInfo;",
        "setCellularInfo",
        "(Lteam/opay/core/networkstatus/result/CellularInfo;)V",
        "getHttpResult",
        "()Ljava/util/ArrayList;",
        "setHttpResult",
        "(Ljava/util/ArrayList;)V",
        "getDnsResult",
        "setDnsResult",
        "getPingResult",
        "setPingResult",
        "getProxyResult",
        "()Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        "setProxyResult",
        "(Lteam/opay/core/networkstatus/result/ProxyInfoResult;)V",
        "getCellularPingResult",
        "()Lteam/opay/core/networkstatus/result/CellularPingResult;",
        "setCellularPingResult",
        "(Lteam/opay/core/networkstatus/result/CellularPingResult;)V",
        "getHttpSpeedResult",
        "()Lteam/opay/core/networkstatus/result/HttpSpeedResult;",
        "setHttpSpeedResult",
        "(Lteam/opay/core/networkstatus/result/HttpSpeedResult;)V",
        "getTelnetResult",
        "setTelnetResult",
        "getTrackData",
        "Lkotlin/Pair;",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "network-status-ping_release"
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
.field private cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dnsResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private httpResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isOPayApiConnected:Z

.field private pingResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private telnetResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;-><init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Lteam/opay/core/networkstatus/result/WifiInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/networkstatus/result/CellularInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/networkstatus/result/ProxyInfoResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/networkstatus/result/CellularPingResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/networkstatus/result/HttpSpeedResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            "Lteam/opay/core/networkstatus/result/CellularInfo;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;",
            "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
            "Lteam/opay/core/networkstatus/result/CellularPingResult;",
            "Lteam/opay/core/networkstatus/result/HttpSpeedResult;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "httpResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dnsResult"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pingResult"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telnetResult"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 4
    iput-object p2, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 5
    iput-object p3, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 6
    iput-object p4, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 7
    iput-object p5, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 8
    iput-object p6, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 9
    iput-object p7, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 10
    iput-object p8, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 11
    iput-object p9, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 12
    iput-object p10, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v3

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v3

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v3, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :cond_9
    move-object/from16 v0, p10

    :goto_9
    move-object p1, p0

    move p2, v1

    move-object p3, v2

    move-object p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v3

    move-object/from16 p11, v0

    .line 17
    invoke-direct/range {p1 .. p11}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;-><init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/networkstatus/result/NetworkConnectionResult;ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;ILjava/lang/Object;)Lteam/opay/core/networkstatus/result/NetworkConnectionResult;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p11

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-boolean v2, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget-object v6, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v6, p5

    .line 44
    .line 45
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 46
    .line 47
    if-eqz v7, :cond_5

    .line 48
    .line 49
    iget-object v7, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v7, p6

    .line 53
    .line 54
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 55
    .line 56
    if-eqz v8, :cond_6

    .line 57
    .line 58
    iget-object v8, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 59
    .line 60
    goto :goto_6

    .line 61
    :cond_6
    move-object/from16 v8, p7

    .line 62
    .line 63
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 64
    .line 65
    if-eqz v9, :cond_7

    .line 66
    .line 67
    iget-object v9, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 68
    .line 69
    goto :goto_7

    .line 70
    :cond_7
    move-object/from16 v9, p8

    .line 71
    .line 72
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 73
    .line 74
    if-eqz v10, :cond_8

    .line 75
    .line 76
    iget-object v10, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 77
    .line 78
    goto :goto_8

    .line 79
    :cond_8
    move-object/from16 v10, p9

    .line 80
    .line 81
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 82
    .line 83
    if-eqz v1, :cond_9

    .line 84
    .line 85
    iget-object v1, v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 86
    .line 87
    goto :goto_9

    .line 88
    :cond_9
    move-object/from16 v1, p10

    .line 89
    .line 90
    :goto_9
    move p1, v2

    .line 91
    move-object p2, v3

    .line 92
    move-object p3, v4

    .line 93
    move-object p4, v5

    .line 94
    move-object/from16 p5, v6

    .line 95
    .line 96
    move-object/from16 p6, v7

    .line 97
    .line 98
    move-object/from16 p7, v8

    .line 99
    .line 100
    move-object/from16 p8, v9

    .line 101
    .line 102
    move-object/from16 p9, v10

    .line 103
    .line 104
    move-object/from16 p10, v1

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p10}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->copy(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/networkstatus/result/WifiInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/core/networkstatus/result/CellularInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lteam/opay/core/networkstatus/result/ProxyInfoResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lteam/opay/core/networkstatus/result/CellularPingResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lteam/opay/core/networkstatus/result/HttpSpeedResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)Lteam/opay/core/networkstatus/result/NetworkConnectionResult;
    .locals 12
    .param p2    # Lteam/opay/core/networkstatus/result/WifiInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/networkstatus/result/CellularInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/networkstatus/result/ProxyInfoResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/networkstatus/result/CellularPingResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/networkstatus/result/HttpSpeedResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            "Lteam/opay/core/networkstatus/result/CellularInfo;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;",
            "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
            "Lteam/opay/core/networkstatus/result/CellularPingResult;",
            "Lteam/opay/core/networkstatus/result/HttpSpeedResult;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;)",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "httpResult"

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "dnsResult"

    .line 9
    .line 10
    move-object/from16 v6, p5

    .line 11
    .line 12
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "pingResult"

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "telnetResult"

    .line 23
    .line 24
    move-object/from16 v11, p10

    .line 25
    .line 26
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    move v2, p1

    .line 33
    move-object v3, p2

    .line 34
    move-object v4, p3

    .line 35
    move-object/from16 v8, p7

    .line 36
    .line 37
    move-object/from16 v9, p8

    .line 38
    .line 39
    move-object/from16 v10, p9

    .line 40
    .line 41
    invoke-direct/range {v1 .. v11}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;-><init>(ZLteam/opay/core/networkstatus/result/WifiInfo;Lteam/opay/core/networkstatus/result/CellularInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lteam/opay/core/networkstatus/result/ProxyInfoResult;Lteam/opay/core/networkstatus/result/CellularPingResult;Lteam/opay/core/networkstatus/result/HttpSpeedResult;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 12
    .line 13
    iget-boolean v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 76
    .line 77
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object p1, p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    return v0
.end method

.method public final getCellularInfo()Lteam/opay/core/networkstatus/result/CellularInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCellularPingResult()Lteam/opay/core/networkstatus/result/CellularPingResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDnsResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpSpeedResult()Lteam/opay/core/networkstatus/result/HttpSpeedResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPingResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxyResult()Lteam/opay/core/networkstatus/result/ProxyInfoResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTelnetResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackData()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    const-string v1, "WifiInfo"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkotlin/Pair;

    .line 11
    .line 12
    const-string v2, "CellularInfo"

    .line 13
    .line 14
    iget-object v3, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lkotlin/Pair;

    .line 20
    .line 21
    const-string v3, "HttpResult"

    .line 22
    .line 23
    iget-object v4, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lkotlin/Pair;

    .line 29
    .line 30
    const-string v4, "DnsResult"

    .line 31
    .line 32
    iget-object v5, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lkotlin/Pair;

    .line 38
    .line 39
    const-string v5, "ProxyResult"

    .line 40
    .line 41
    iget-object v6, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lkotlin/Pair;

    .line 47
    .line 48
    const-string v6, "cellularPingResult"

    .line 49
    .line 50
    iget-object v7, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 51
    .line 52
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lkotlin/Pair;

    .line 56
    .line 57
    const-string v7, "telnetResult"

    .line 58
    .line 59
    iget-object v8, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x7

    .line 65
    new-array v7, v7, [Lkotlin/Pair;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    aput-object v0, v7, v8

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    aput-object v1, v7, v0

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object v2, v7, v0

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    aput-object v3, v7, v0

    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    aput-object v4, v7, v0

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    aput-object v5, v7, v0

    .line 84
    .line 85
    const/4 v0, 0x6

    .line 86
    aput-object v6, v7, v0

    .line 87
    .line 88
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public final getWifiInfo()Lteam/opay/core/networkstatus/result/WifiInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 2
    .line 3
    invoke-static {v0}, Lii8;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/WifiInfo;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/CellularInfo;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/ProxyInfoResult;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_2
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/CellularPingResult;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_3
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/HttpSpeedResult;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_4
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    .line 101
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v0, v1

    .line 108
    return v0
.end method

.method public final isOPayApiConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCellularInfo(Lteam/opay/core/networkstatus/result/CellularInfo;)V
    .locals 0
    .param p1    # Lteam/opay/core/networkstatus/result/CellularInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setCellularPingResult(Lteam/opay/core/networkstatus/result/CellularPingResult;)V
    .locals 0
    .param p1    # Lteam/opay/core/networkstatus/result/CellularPingResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 2
    .line 3
    return-void
.end method

.method public final setDnsResult(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/DnsResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setHttpResult(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/HttpResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setHttpSpeedResult(Lteam/opay/core/networkstatus/result/HttpSpeedResult;)V
    .locals 0
    .param p1    # Lteam/opay/core/networkstatus/result/HttpSpeedResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 2
    .line 3
    return-void
.end method

.method public final setOPayApiConnected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPingResult(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/PingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setProxyResult(Lteam/opay/core/networkstatus/result/ProxyInfoResult;)V
    .locals 0
    .param p1    # Lteam/opay/core/networkstatus/result/ProxyInfoResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 2
    .line 3
    return-void
.end method

.method public final setTelnetResult(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/networkstatus/result/TelnetResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setWifiInfo(Lteam/opay/core/networkstatus/result/WifiInfo;)V
    .locals 0
    .param p1    # Lteam/opay/core/networkstatus/result/WifiInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->isOPayApiConnected:Z

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->wifiInfo:Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularInfo:Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpResult:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->dnsResult:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->pingResult:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->proxyResult:Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->cellularPingResult:Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->httpSpeedResult:Lteam/opay/core/networkstatus/result/HttpSpeedResult;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->telnetResult:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v11, "NetworkConnectionResult(isOPayApiConnected="

    .line 27
    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", wifiInfo="

    .line 35
    .line 36
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", cellularInfo="

    .line 43
    .line 44
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", httpResult="

    .line 51
    .line 52
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", dnsResult="

    .line 59
    .line 60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", pingResult="

    .line 67
    .line 68
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", proxyResult="

    .line 75
    .line 76
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", cellularPingResult="

    .line 83
    .line 84
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ", httpSpeedResult="

    .line 91
    .line 92
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", telnetResult="

    .line 99
    .line 100
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ")"

    .line 107
    .line 108
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
