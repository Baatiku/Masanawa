.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkDiagnosisManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Triple<",
        "+",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
        "Lteam/opay/core/networkstatus/result/WifiInfo;",
        ">;+",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        ">;+",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
        "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a&\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lzr2;",
        "Lkotlin/Triple;",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "Lteam/opay/core/networkstatus/result/WifiInfo;",
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
        "<anonymous>",
        "(Lzr2;)Lkotlin/Triple;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$runCheck$2$1"
    f = "NetworkDiagnosisManager.kt"
    l = {
        0xb6,
        0xb6,
        0xb6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 3
    .line 4
    .line 5
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
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;-><init>(Ljr2;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lkotlin/Triple<",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            ">;",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/CellularInfo;",
            ">;",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/ProxyInfoResult;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lb63;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lb63;

    .line 48
    .line 49
    iget-object v4, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Lb63;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lzr2;

    .line 63
    .line 64
    new-instance v8, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$w$1;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v8, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$w$1;-><init>(Ljr2;)V

    .line 68
    .line 69
    .line 70
    const/4 v9, 0x3

    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v5, p1

    .line 75
    invoke-static/range {v5 .. v10}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    new-instance v8, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$c$1;

    .line 80
    .line 81
    invoke-direct {v8, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$c$1;-><init>(Ljr2;)V

    .line 82
    .line 83
    .line 84
    invoke-static/range {v5 .. v10}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    new-instance v8, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$p$1;

    .line 89
    .line 90
    invoke-direct {v8, v1}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1$p$1;-><init>(Ljr2;)V

    .line 91
    .line 92
    .line 93
    invoke-static/range {v5 .. v10}, Lxk1;->b(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lb63;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object v12, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    iput v4, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->label:I

    .line 102
    .line 103
    invoke-interface {v11, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-ne v1, v0, :cond_4

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    move-object v4, v12

    .line 111
    move-object v13, v1

    .line 112
    move-object v1, p1

    .line 113
    move-object p1, v13

    .line 114
    :goto_0
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    iput v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->label:I

    .line 119
    .line 120
    invoke-interface {v4, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-ne v3, v0, :cond_5

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_5
    move-object v13, v1

    .line 128
    move-object v1, p1

    .line 129
    move-object p1, v3

    .line 130
    move-object v3, v13

    .line 131
    :goto_1
    iput-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->L$1:Ljava/lang/Object;

    .line 134
    .line 135
    iput v2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$1;->label:I

    .line 136
    .line 137
    invoke-interface {v3, p0}, Lb63;->V0(Ljr2;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-ne v2, v0, :cond_6

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_6
    move-object v0, p1

    .line 145
    move-object p1, v2

    .line 146
    :goto_2
    new-instance v2, Lkotlin/Triple;

    .line 147
    .line 148
    invoke-direct {v2, v1, v0, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object v2
.end method
