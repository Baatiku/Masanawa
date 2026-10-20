.class final Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/EmployeeListFragment;->n0(Lteam/opay/sme/store/api/EmployeesResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.sme.store.user.EmployeeListFragment$onPagingResult$1"
    f = "EmployeeListFragment.kt"
    l = {
        0xaf,
        0xb8,
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $resp:Lteam/opay/sme/store/api/EmployeesResp;

.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/EmployeeListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/api/EmployeesResp;Lteam/opay/sme/store/user/EmployeeListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;",
            "Lteam/opay/sme/store/api/EmployeesResp;",
            "Lteam/opay/sme/store/user/EmployeeListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/EmployeesResp;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

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

.method public static synthetic c(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->invokeSuspend$lambda$4(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/sme/store/user/EmployeeListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->invokeSuspend$lambda$1(Lteam/opay/sme/store/user/EmployeeListFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/internal/PagingResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->invokeSuspend$lambda$2(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/internal/PagingResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/sme/store/user/EmployeeListFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Luud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2, v1, v2}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Luud;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/internal/PagingResult;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Luud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Luud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object p0, p0, Luud;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method private static final invokeSuspend$lambda$4(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Luud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/sme/store/api/EmployeesResp;->b()Lteam/opay/core/http/BusinessInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-static {p1, p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->Y(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/BusinessInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Luud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object p0, p0, Luud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p0, p0, Luud;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/EmployeesResp;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/api/EmployeesResp;Lteam/opay/sme/store/user/EmployeeListFragment;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

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
    :goto_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ne p1, v4, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v1, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 50
    .line 51
    if-eq p1, v1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/EmployeesResp;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/sme/store/api/EmployeesResp;->a()Lteam/opay/core/http/BusinessInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 64
    .line 65
    invoke-static {v1, p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->Z(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/BusinessInfo;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 77
    .line 78
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Luud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 88
    .line 89
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->U(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/EmployeeAdapter;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 100
    .line 101
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Luud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 108
    .line 109
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeListFragment;->T(Lteam/opay/sme/store/user/EmployeeListFragment;)Lteam/opay/sme/store/user/HolderEmployeeAdapter;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 118
    .line 119
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Luud;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_8

    .line 130
    .line 131
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 132
    .line 133
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeListFragment;->S(Lteam/opay/sme/store/user/EmployeeListFragment;)Luud;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p1, p1, Luud;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 138
    .line 139
    invoke-virtual {p1, v4}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 152
    .line 153
    new-instance v1, Lteam/opay/sme/store/user/b;

    .line 154
    .line 155
    invoke-direct {v1, p1}, Lteam/opay/sme/store/user/b;-><init>(Lteam/opay/sme/store/user/EmployeeListFragment;)V

    .line 156
    .line 157
    .line 158
    iput v4, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->label:I

    .line 159
    .line 160
    invoke-static {p1, v1, p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->W(Lteam/opay/sme/store/user/EmployeeListFragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-ne p1, v0, :cond_8

    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_6
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 168
    .line 169
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 176
    .line 177
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 178
    .line 179
    new-instance v2, Lteam/opay/sme/store/user/c;

    .line 180
    .line 181
    invoke-direct {v2, p1, v1}, Lteam/opay/sme/store/user/c;-><init>(Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/core/http/internal/PagingResult;)V

    .line 182
    .line 183
    .line 184
    iput v3, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->label:I

    .line 185
    .line 186
    invoke-static {p1, v2, p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->W(Lteam/opay/sme/store/user/EmployeeListFragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-ne p1, v0, :cond_8

    .line 191
    .line 192
    return-object v0

    .line 193
    :cond_7
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/sme/store/user/EmployeeListFragment;

    .line 194
    .line 195
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 196
    .line 197
    iget-object v3, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->$resp:Lteam/opay/sme/store/api/EmployeesResp;

    .line 198
    .line 199
    new-instance v4, Lteam/opay/sme/store/user/d;

    .line 200
    .line 201
    invoke-direct {v4, v1, p1, v3}, Lteam/opay/sme/store/user/d;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/sme/store/user/EmployeeListFragment;Lteam/opay/sme/store/api/EmployeesResp;)V

    .line 202
    .line 203
    .line 204
    iput v2, p0, Lteam/opay/sme/store/user/EmployeeListFragment$onPagingResult$1;->label:I

    .line 205
    .line 206
    invoke-static {p1, v4, p0}, Lteam/opay/sme/store/user/EmployeeListFragment;->W(Lteam/opay/sme/store/user/EmployeeListFragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-ne p1, v0, :cond_8

    .line 211
    .line 212
    return-object v0

    .line 213
    :cond_8
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 214
    .line 215
    return-object p1
.end method
