.class public final Lteam/opay/core/networkstatus/task/ProxyInfoTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "ProxyInfoTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0096@\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/ProxyInfoTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "b",
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
    const-string v0, "proxy"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/ProxyInfoTask;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljr2;)Ljava/lang/Object;
    .locals 14
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
            "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
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
    const-string v0, "ProxyInfoTask -----  "

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/core/networkstatus/task/ProxyInfoTask;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lgt;->f(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v4, 0x17

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-lt v3, v4, :cond_4

    .line 22
    .line 23
    invoke-static {v0}, Lz3c;->a(Landroid/net/ConnectivityManager;)Landroid/net/ProxyInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v3, Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v4, 0x0

    .line 34
    :goto_0
    const-string v6, ""

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-nez v7, :cond_2

    .line 43
    .line 44
    :cond_1
    move-object v7, v6

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v3, v4, v7, v0}, Lteam/opay/core/networkstatus/result/ProxyInfoResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    new-instance v3, Lteam/opay/core/networkstatus/result/ProxyInfoResult;

    .line 64
    .line 65
    const/4 v12, 0x6

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    move-object v8, v3

    .line 71
    invoke-direct/range {v8 .. v13}, Lteam/opay/core/networkstatus/result/ProxyInfoResult;-><init>(ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "ProxyInfo: "

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 95
    .line 96
    invoke-direct {p1, v5, v3}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object p1
.end method
