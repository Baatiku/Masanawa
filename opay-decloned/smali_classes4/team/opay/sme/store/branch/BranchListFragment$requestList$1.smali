.class final Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchListFragment;->I0()V
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
    c = "team.opay.sme.store.branch.BranchListFragment$requestList$1"
    f = "BranchListFragment.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;-><init>(Lteam/opay/sme/store/branch/BranchListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->label:I

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
    new-instance p1, Lteam/opay/sme/store/api/BranchsReq;

    .line 28
    .line 29
    const/16 v8, 0xf

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v3, p1

    .line 37
    invoke-direct/range {v3 .. v9}, Lteam/opay/sme/store/api/BranchsReq;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 41
    .line 42
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchListFragment;->a0(Lteam/opay/sme/store/branch/BranchListFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v3, Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 47
    .line 48
    iget-object v4, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "<get-lifecycle>(...)"

    .line 55
    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1$1;

    .line 60
    .line 61
    iget-object v6, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 62
    .line 63
    invoke-direct {v5, v6}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1$1;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, v3}, Lteam/opay/sme/store/StoreViewModel;->w(Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v1, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1$a;

    .line 74
    .line 75
    iget-object v3, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 76
    .line 77
    invoke-direct {v1, v3}, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1$a;-><init>(Lteam/opay/sme/store/branch/BranchListFragment;)V

    .line 78
    .line 79
    .line 80
    iput v2, p0, Lteam/opay/sme/store/branch/BranchListFragment$requestList$1;->label:I

    .line 81
    .line 82
    invoke-interface {p1, v1, p0}, Lv56;->collect(La66;Ljr2;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_2

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1
.end method
