.class final Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2;->lookupLatestTransactions(Z)V
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
    c = "com.opay.team.newhome.home.NewPayFragmentV2$lookupLatestTransactions$1"
    f = "NewPayFragmentV2.kt"
    l = {
        0x392
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/NewPayFragmentV2;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

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

.method public static synthetic c(Lcom/opay/team/newhome/home/NewPayFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->invokeSuspend$lambda$0(Lcom/opay/team/newhome/home/NewPayFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lcom/opay/team/newhome/home/NewPayFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lteam/opay/pay/transaction/LastTransactionList;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->e1(Lteam/opay/pay/transaction/LastTransactionList;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_2
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    invoke-static {p0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$showShowBills(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$setLoadBillsErrorMessage$p(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    new-array v1, v1, [Lkotlin/Pair;

    .line 55
    .line 56
    const-string v2, "lookup_latest_transactions_error"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->c(Lteam/opay/core/android/arch/Resource;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-static {p0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$showShowBills(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-static {p0}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$onBillsLoadAndShow(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;-><init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->label:I

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
    goto :goto_0

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
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput v2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->label:I

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->R0(Ljr2;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getViewLifecycleOwner(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$lookupLatestTransactions$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 56
    .line 57
    new-instance v2, Lcom/opay/team/newhome/home/b;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/b;-><init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p1
.end method
