.class final Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchListFragment;->m0(Lteam/opay/sme/store/api/BranchInfo;)V
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
    c = "team.opay.sme.store.branch.BranchListFragment$branchReInvite$1"
    f = "BranchListFragment.kt"
    l = {
        0x12c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $branchInfo:Lteam/opay/sme/store/api/BranchInfo;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchInfo;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchListFragment;",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->$branchInfo:Lteam/opay/sme/store/api/BranchInfo;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->$branchInfo:Lteam/opay/sme/store/api/BranchInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;-><init>(Lteam/opay/sme/store/branch/BranchListFragment;Lteam/opay/sme/store/api/BranchInfo;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lrud;->h:Lteam/opay/core/widget/PulseLoaderView;

    .line 36
    .line 37
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lteam/opay/sme/store/api/InviteBranchReq;

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->$branchInfo:Lteam/opay/sme/store/api/BranchInfo;

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v8, 0x6

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v4, p1

    .line 56
    invoke-direct/range {v4 .. v9}, Lteam/opay/sme/store/api/InviteBranchReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 60
    .line 61
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchListFragment;->a0(Lteam/opay/sme/store/branch/BranchListFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput v2, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->label:I

    .line 66
    .line 67
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->z(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 99
    .line 100
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lrud;->h:Lteam/opay/core/widget/PulseLoaderView;

    .line 105
    .line 106
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 113
    .line 114
    sget v0, Lteam/opay/sme/store/R$string;->sme_store_action_resend_success:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "getString(...)"

    .line 121
    .line 122
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v0}, Lteam/opay/sme/store/branch/BranchListFragment;->h0(Lteam/opay/sme/store/branch/BranchListFragment;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 130
    .line 131
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchListFragment;->U(Lteam/opay/sme/store/branch/BranchListFragment;)Lrud;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Lrud;->h:Lteam/opay/core/widget/PulseLoaderView;

    .line 136
    .line 137
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchListFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/BranchListFragment;

    .line 144
    .line 145
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    const/4 p1, 0x0

    .line 161
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1
.end method
