.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->l(Ljr2;)Ljava/lang/Object;
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
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
        "<anonymous>",
        "(Lzr2;)Lteam/opay/core/networkstatus/result/NetworkConnectionResult;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$checkNetworkConnection$2"
    f = "NetworkDiagnosisManager.kt"
    l = {
        0x6c,
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->j(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lxe9;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lxe9;->e()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->d(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lkotlinx/coroutines/l;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-interface {p1}, Lkotlinx/coroutines/l;->isActive()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v3, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 58
    .line 59
    invoke-static {p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->i(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Ly92;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 69
    .line 70
    invoke-static {p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->j(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lxe9;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->label:I

    .line 75
    .line 76
    invoke-static {p1, p0}, Ly86;->x(Lv56;Ljr2;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->r(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 92
    .line 93
    invoke-static {p1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager;->j(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)Lxe9;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput v2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$checkNetworkConnection$2;->label:I

    .line 98
    .line 99
    invoke-static {p1, p0}, Ly86;->x(Lv56;Ljr2;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v0, :cond_5

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_5
    :goto_1
    check-cast p1, Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 107
    .line 108
    :goto_2
    return-object p1
.end method
