.class final Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchAddAdminFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->U()V
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
    c = "team.opay.sme.store.branch.employee.BranchAddAdminFragmentV2$branchCreate$1$1"
    f = "BranchAddAdminFragmentV2.kt"
    l = {
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/sme/store/api/CreateBranchReq;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;",
            "Lteam/opay/sme/store/api/CreateBranchReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->$it:Lteam/opay/sme/store/api/CreateBranchReq;

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
    new-instance p1, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->$it:Lteam/opay/sme/store/api/CreateBranchReq;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;-><init>(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "loadingView"

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->N(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 41
    .line 42
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 49
    .line 50
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->M(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Lteam/opay/sme/store/StoreViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v1, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->$it:Lteam/opay/sme/store/api/CreateBranchReq;

    .line 55
    .line 56
    iput v2, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->label:I

    .line 57
    .line 58
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/store/StoreViewModel;->s(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 66
    .line 67
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 90
    .line 91
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v0, v0, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 96
    .line 97
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 104
    .line 105
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lteam/opay/sme/store/api/CreateBranchResp;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 114
    .line 115
    invoke-static {v0, p1}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->S(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;Lteam/opay/sme/store/api/CreateBranchResp;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 120
    .line 121
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;->L(Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;)Ljud;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v0, v0, Ljud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 126
    .line 127
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2$branchCreate$1$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchAddAdminFragmentV2;

    .line 134
    .line 135
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const/4 p1, 0x0

    .line 151
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p1
.end method
