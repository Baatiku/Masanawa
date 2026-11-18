.class final Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchInviteDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->Y0()V
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
    c = "team.opay.sme.store.branch.link.BranchInviteDetailFragment$branchReInvite$1"
    f = "BranchInviteDetailFragment.kt"
    l = {
        0xcf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;-><init>(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "loadingView"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

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
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 37
    .line 38
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lteam/opay/sme/store/api/InviteBranchReq;

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 47
    .line 48
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->Q0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v6, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object v6, v4

    .line 61
    :goto_0
    const/4 v9, 0x6

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v5, p1

    .line 66
    invoke-direct/range {v5 .. v10}, Lteam/opay/sme/store/api/InviteBranchReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 70
    .line 71
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->R0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput v2, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->label:I

    .line 76
    .line 77
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->z(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 85
    .line 86
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 109
    .line 110
    invoke-static {p1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p1, p1, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 115
    .line 116
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 123
    .line 124
    sget v0, Lteam/opay/sme/store/R$string;->sme_store_action_resend_success:I

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "getString(...)"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x2

    .line 136
    invoke-static {p1, v0, v4, v1, v4}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->k1(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 141
    .line 142
    invoke-static {v0}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 147
    .line 148
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchReInvite$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 155
    .line 156
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    :cond_5
    invoke-static {v0, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p1
.end method
