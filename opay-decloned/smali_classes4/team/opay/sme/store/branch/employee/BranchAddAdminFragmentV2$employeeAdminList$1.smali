.class final Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchAddAdminFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->V()V
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
    c = "team.opay.sme.store.branch.employee.BranchAddAdminFragmentV2$employeeAdminList$1"
    f = "BranchAddAdminFragmentV2.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

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
    new-instance p1, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;-><init>(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->label:I

    .line 6
    .line 7
    const-string v2, "loadingView"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 36
    .line 37
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->M(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Lteam/opay/sme/store/StoreViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput v3, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->label:I

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lteam/opay/sme/store/StoreViewModel;->C(Ljr2;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 84
    .line 85
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 90
    .line 91
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lteam/opay/sme/store/api/EmployeeAdminResponse;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 108
    .line 109
    invoke-static {v0, p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->Q(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Lteam/opay/sme/store/api/EmployeeAdminResponse;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    invoke-static {p1, v3, v1, v0, v1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->l0(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 121
    .line 122
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 127
    .line 128
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$employeeAdminList$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 135
    .line 136
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :cond_5
    if-nez v1, :cond_6

    .line 147
    .line 148
    const-string v1, ""

    .line 149
    .line 150
    :cond_6
    const/4 p1, 0x0

    .line 151
    invoke-static {v0, p1, v1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->R(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;ZLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1
.end method
