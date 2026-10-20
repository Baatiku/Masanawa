.class final Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;
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
        "Lsi3;",
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
        "Lsi3;",
        "<anonymous>",
        "(Lzr2;)Lsi3;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.core.networkstatus.NetworkDiagnosisManager$runCheck$2$2"
    f = "NetworkDiagnosisManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

.field final synthetic $wifiInfo:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public constructor <init>(Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/networkstatus/result/NetworkConnectionResult;",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/WifiInfo;",
            ">;",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$wifiInfo:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->invokeSuspend$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-string v1, "https://www.google.com"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    :cond_0
    new-instance v5, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$1;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-direct {v5, v1, v0, v8}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$1;-><init>(Ljava/lang/String;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object/from16 v2, p1

    .line 33
    .line 34
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 35
    .line 36
    .line 37
    new-instance v12, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$2;

    .line 38
    .line 39
    invoke-direct {v12, v1, v0, v8}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$2;-><init>(Ljava/lang/String;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 40
    .line 41
    .line 42
    const/4 v13, 0x3

    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    move-object/from16 v9, p1

    .line 47
    .line 48
    invoke-static/range {v9 .. v14}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;->a()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lteam/opay/core/networkstatus/result/WifiInfo;

    .line 56
    .line 57
    invoke-virtual {v1}, Lteam/opay/core/networkstatus/result/WifiInfo;->isEnable()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;

    .line 64
    .line 65
    move-object/from16 v2, p4

    .line 66
    .line 67
    invoke-direct {v1, v2, v0, v8}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$3$3;-><init>(Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    move-object/from16 p0, p1

    .line 75
    .line 76
    move-object/from16 p1, v3

    .line 77
    .line 78
    move-object/from16 p2, v4

    .line 79
    .line 80
    move-object/from16 p3, v1

    .line 81
    .line 82
    move/from16 p4, v0

    .line 83
    .line 84
    move-object/from16 p5, v2

    .line 85
    .line 86
    invoke-static/range {p0 .. p5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 87
    .line 88
    .line 89
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 4
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
    new-instance v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$wifiInfo:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;-><init>(Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljr2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Lsi3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lzr2;

    .line 14
    .line 15
    const-string v0, "https://nf-api-posp.opayweb.com/api/pos/check"

    .line 16
    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    :cond_0
    move-object v6, v0

    .line 30
    new-instance v3, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$1;

    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-direct {v3, v6, v0, v7}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$1;-><init>(Ljava/lang/String;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    move-object v0, p1

    .line 43
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 44
    .line 45
    .line 46
    new-instance v3, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$2;

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 49
    .line 50
    invoke-direct {v3, v6, v0, v7}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$2;-><init>(Ljava/lang/String;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 51
    .line 52
    .line 53
    move-object v0, p1

    .line 54
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 55
    .line 56
    .line 57
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 58
    .line 59
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$googleJob$1;

    .line 63
    .line 64
    iget-object v0, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 65
    .line 66
    invoke-direct {v3, v6, v0, v7}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2$googleJob$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Ljr2;)V

    .line 67
    .line 68
    .line 69
    move-object v0, p1

    .line 70
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v3, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$wifiInfo:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 75
    .line 76
    iget-object v4, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->$connectionResult:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 77
    .line 78
    iget-object v5, p0, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->this$0:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 79
    .line 80
    new-instance v8, Lteam/opay/core/networkstatus/a;

    .line 81
    .line 82
    move-object v0, v8

    .line 83
    move-object v1, v6

    .line 84
    move-object v2, p1

    .line 85
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/networkstatus/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v7, v8}, Lkotlinx/coroutines/l;->B(Lkotlin/jvm/functions/Function1;)Lsi3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
