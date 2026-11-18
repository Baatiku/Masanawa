.class public final Lteam/opay/core/networkstatus/task/TcpPingTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "TcpPingTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/TcpResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/TcpPingTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/TcpResult;",
        "",
        "ip",
        "",
        "port",
        "<init>",
        "(Ljava/lang/String;I)V",
        "b",
        "Ljava/lang/String;",
        "c",
        "I",
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
.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/TcpPingTask;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, p0, Lteam/opay/core/networkstatus/task/TcpPingTask;->c:I

    .line 14
    .line 15
    return-void
.end method
