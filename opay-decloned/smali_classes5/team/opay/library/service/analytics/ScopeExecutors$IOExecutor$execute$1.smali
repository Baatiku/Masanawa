.class final Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScopeExecutors.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor;->execute(Ljava/lang/Runnable;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.library.service.analytics.ScopeExecutors$IOExecutor$execute$1"
    f = "ScopeExecutors.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $command:Ljava/lang/Runnable;

.field final synthetic $scope:Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;

.field label:I

.field private p$:Lzr2;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;Ljr2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$command:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$scope:Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;

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
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$command:Ljava/lang/Runnable;

    .line 9
    .line 10
    iget-object v2, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$scope:Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;-><init>(Ljava/lang/Runnable;Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;Ljr2;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lzr2;

    .line 16
    .line 17
    iput-object p1, v0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->p$:Lzr2;

    .line 18
    .line 19
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;

    .line 8
    .line 9
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Lkotlin/Result$Failure;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$command:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/library/service/analytics/ScopeExecutors$IOExecutor$execute$1;->$scope:Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/library/service/analytics/ScopeExecutors$IOScope;->a()V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    .line 26
    .line 27
    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
