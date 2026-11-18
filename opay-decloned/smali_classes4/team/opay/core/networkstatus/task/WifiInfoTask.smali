.class public final Lteam/opay/core/networkstatus/task/WifiInfoTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "WifiInfoTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/WifiInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0096@\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/WifiInfoTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/WifiInfo;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "",
        "rssi",
        "",
        "b",
        "(I)Ljava/lang/String;",
        "Landroid/content/Context;",
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
.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    const-string v0, "wifi"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/WifiInfoTask;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljr2;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p1, Lqk8;->c:Lqk8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const-string v2, "WifiInfoTask -----  "

    .line 6
    .line 7
    invoke-static {p1, v2, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/core/networkstatus/task/WifiInfoTask;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p1}, Lgt;->k(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    new-instance v2, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 36
    .line 37
    new-instance v3, Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lteam/opay/core/networkstatus/task/WifiInfoTask;->b(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-direct {v3, v1, v0, p1, v4}, Lteam/opay/core/networkstatus/result/WifiInfo;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v1, v3}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v2, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 51
    .line 52
    new-instance p1, Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 53
    .line 54
    const/16 v8, 0xe

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v3, p1

    .line 62
    invoke-direct/range {v3 .. v9}, Lteam/opay/core/networkstatus/result/WifiInfo;-><init>(ZLjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v1, p1}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-object v2
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, -0x1e

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "EXCELLENT"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, -0x32

    .line 9
    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    const-string p1, "STRONG"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/16 v0, -0x46

    .line 16
    .line 17
    if-lt p1, v0, :cond_2

    .line 18
    .line 19
    const-string p1, "GOOD"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/16 v0, -0x50

    .line 23
    .line 24
    if-lt p1, v0, :cond_3

    .line 25
    .line 26
    const-string p1, "POOR"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/16 v0, -0x64

    .line 30
    .line 31
    if-lt p1, v0, :cond_4

    .line 32
    .line 33
    const-string p1, "VERY POOR"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const-string p1, "UNKNOWN"

    .line 37
    .line 38
    :goto_0
    return-object p1
.end method
