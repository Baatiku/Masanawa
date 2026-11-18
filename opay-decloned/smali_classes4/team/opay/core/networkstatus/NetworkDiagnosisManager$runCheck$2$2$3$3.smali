.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$runCheck$2$2$3$3"
    f = "NetworkDiagnosisManager.kt"
    l = {
        0xfa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

.field label:I

.field final synthetic this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

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

    .line 1
    new-instance p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v3, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 42
    .line 43
    const-string v4, "https"

    .line 44
    .line 45
    const-string v5, "http"

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string p1, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 54
    .line 55
    :goto_0
    new-instance v1, Lteam/opay/core/networkstatus/task/CellularPingTask;

    .line 56
    .line 57
    iget-object v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 58
    .line 59
    invoke-static {v3}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->c(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Landroid/net/Network;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v1, p1, v3}, Lteam/opay/core/networkstatus/task/CellularPingTask;-><init>(Ljava/lang/String;Landroid/net/Network;)V

    .line 64
    .line 65
    .line 66
    iput v2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->label:I

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Lteam/opay/core/networkstatus/task/CellularPingTask;->a(Ljr2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 76
    .line 77
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lteam/opay/core/networkstatus/result/CellularPingResult;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;->setCellularPingResult(Lteam/opay/core/networkstatus/result/CellularPingResult;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
