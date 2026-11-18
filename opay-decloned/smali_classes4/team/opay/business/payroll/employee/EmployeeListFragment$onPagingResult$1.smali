.class final Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/employee/EmployeeListFragment;->h0(Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.payroll.employee.EmployeeListFragment$onPagingResult$1"
    f = "EmployeeListFragment.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;",
            "Lteam/opay/business/payroll/employee/EmployeeListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

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

.method public static synthetic c(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lvkb;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->O(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lvkb;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->U(Lteam/opay/business/payroll/employee/EmployeeListFragment;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    :goto_0
    const/4 v0, 0x3

    .line 59
    if-le p0, v0, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v1, 0x0

    .line 63
    :goto_1
    invoke-static {p1, v1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->W(Lteam/opay/business/payroll/employee/EmployeeListFragment;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    instance-of p0, p0, Lteam/opay/business/payroll/employee/AllPayeeFragment;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "null cannot be cast to non-null type team.opay.business.payroll.employee.AllPayeeFragment"

    .line 79
    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast p0, Lteam/opay/business/payroll/employee/AllPayeeFragment;

    .line 84
    .line 85
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->R(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/api/EmployeesReq;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/EmployeesReq;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lteam/opay/business/payroll/employee/AllPayeeFragment;->W(Z)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    iget-object p0, p0, Lvkb;->b:Lteam/opay/core/widget/HttpViewGroup;

    .line 107
    .line 108
    if-eqz p0, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 111
    .line 112
    .line 113
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
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
    new-instance p1, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->label:I

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
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 37
    .line 38
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->O(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 49
    .line 50
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p1, Lvkb;->b:Lteam/opay/core/widget/HttpViewGroup;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    iget-object p1, p1, Lvkb;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    if-eqz p1, :cond_9

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 76
    .line 77
    invoke-static {v0}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->Q(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/employee/HolderPayrollPayeeAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 86
    .line 87
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    iget-object p1, p1, Lvkb;->b:Lteam/opay/core/widget/HttpViewGroup;

    .line 94
    .line 95
    if-eqz p1, :cond_9

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 110
    .line 111
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p1, Lvkb;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 122
    .line 123
    invoke-static {v0}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->O(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 131
    .line 132
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->V(Lteam/opay/business/payroll/employee/EmployeeListFragment;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 137
    .line 138
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 145
    .line 146
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->P(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lvkb;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    iget-object p1, p1, Lvkb;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    iget-object v0, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 157
    .line 158
    invoke-static {v0}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->O(Lteam/opay/business/payroll/employee/EmployeeListFragment;)Lteam/opay/business/payroll/employee/EmployeeAdapter;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 166
    .line 167
    invoke-static {p1}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->V(Lteam/opay/business/payroll/employee/EmployeeListFragment;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_8
    iget-object p1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->this$0:Lteam/opay/business/payroll/employee/EmployeeListFragment;

    .line 172
    .line 173
    iget-object v1, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 174
    .line 175
    new-instance v3, Lteam/opay/business/payroll/employee/a;

    .line 176
    .line 177
    invoke-direct {v3, v1, p1}, Lteam/opay/business/payroll/employee/a;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/payroll/employee/EmployeeListFragment;)V

    .line 178
    .line 179
    .line 180
    iput v2, p0, Lteam/opay/business/payroll/employee/EmployeeListFragment$onPagingResult$1;->label:I

    .line 181
    .line 182
    invoke-static {p1, v3, p0}, Lteam/opay/business/payroll/employee/EmployeeListFragment;->S(Lteam/opay/business/payroll/employee/EmployeeListFragment;Lkotlin/jvm/functions/Function0;Ljr2;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-ne p1, v0, :cond_9

    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_9
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1
.end method
