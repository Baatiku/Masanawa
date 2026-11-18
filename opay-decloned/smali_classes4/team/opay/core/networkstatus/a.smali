.class public final synthetic Lteam/opay/core/networkstatus/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lzr2;

.field public final synthetic c:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

.field public final synthetic d:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

.field public final synthetic e:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/core/networkstatus/a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/core/networkstatus/a;->b:Lzr2;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/core/networkstatus/a;->c:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 9
    .line 10
    iput-object p4, p0, Lteam/opay/core/networkstatus/a;->d:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 11
    .line 12
    iput-object p5, p0, Lteam/opay/core/networkstatus/a;->e:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/networkstatus/a;->b:Lzr2;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/networkstatus/a;->c:Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/networkstatus/a;->d:Lteam/opay/core/networkstatus/result/NetworkConnectionResult;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/networkstatus/a;->e:Lteam/opay/core/networkstatus/NetworkDiagnosisManager;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lteam/opay/core/networkstatus/NetworkDiagnosisManager$runCheck$2$2;->c(Lkotlin/jvm/internal/Ref$BooleanRef;Lzr2;Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;Lteam/opay/core/networkstatus/result/NetworkConnectionResult;Lteam/opay/core/networkstatus/NetworkDiagnosisManager;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
