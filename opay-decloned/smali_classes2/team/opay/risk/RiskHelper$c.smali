.class public final Lteam/opay/risk/RiskHelper$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RiskHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/risk/RiskHelper;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/risk/RiskHelper$c",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "Landroid/net/Network;",
        "network",
        "",
        "onAvailable",
        "(Landroid/net/Network;)V",
        "risk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/risk/RiskHelper$c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {}, Lteam/opay/risk/RiskHelper;->e()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x2710

    .line 19
    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-gez p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lnp2;->a:Lnp2;

    .line 25
    .line 26
    const-string v0, "networkCallback change fast2"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lnp2;->g(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Lteam/opay/risk/RiskHelper;->j(J)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lnp2;->a:Lnp2;

    .line 40
    .line 41
    const-string v0, "networkCallback onAvailable"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lnp2;->g(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lteam/opay/risk/RiskHelper;->a:Lteam/opay/risk/RiskHelper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/risk/RiskHelper;->n()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    const/16 v3, 0x64

    .line 58
    .line 59
    if-ge v1, v3, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lteam/opay/risk/RiskHelper$c;->a:Ljava/lang/Object;

    .line 62
    .line 63
    instance-of v1, v0, Landroid/net/ConnectivityManager;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 69
    .line 70
    :cond_1
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    const-string v0, "networkCallback unregisterNetworkCallback"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lnp2;->g(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v0}, Lteam/opay/risk/RiskHelper;->n()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-le v0, v3, :cond_4

    .line 90
    .line 91
    invoke-static {}, Lteam/opay/risk/RiskHelper;->d()Landroid/app/Application;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-static {}, Lteam/opay/risk/RiskHelper;->f()Lteam/opay/risk/impl/TongDunImpl;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-static {v0, v3, v4, v1, v2}, Lteam/opay/risk/impl/TongDunImpl;->h(Lteam/opay/risk/impl/TongDunImpl;JILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const-string v0, "networkCallback try init initTongDunSDK"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lnp2;->g(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method
