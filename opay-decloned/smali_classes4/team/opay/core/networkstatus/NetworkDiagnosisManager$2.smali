.class public final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;
.super Ljava/lang/Object;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Ld00$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "team/opay/core/networkstatus/NetworkDiagnosisManager$2",
        "Ld00$a;",
        "",
        "b",
        "()V",
        "a",
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
.field public final synthetic a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;->a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;->a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->f(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2$onForeground$1;

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;->a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v4, v0, v2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2$onForeground$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;->a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->f(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lteam/opay/kotlin/coroutine/SafeCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2$onBackground$1;

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2;->a:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v4, v0, v2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$2$onBackground$1;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 19
    .line 20
    .line 21
    return-void
.end method
