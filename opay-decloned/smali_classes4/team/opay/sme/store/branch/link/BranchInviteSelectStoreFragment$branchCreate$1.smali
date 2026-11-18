.class final Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchInviteSelectStoreFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->N(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.branch.link.BranchInviteSelectStoreFragment$branchCreate$1"
    f = "BranchInviteSelectStoreFragment.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $payPin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->$payPin:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;-><init>(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, "loadingView"

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v2, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 34
    .line 35
    invoke-static {v2}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->I(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;)Lpud;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Lpud;->d:Lteam/opay/core/widget/PulseLoaderView;

    .line 40
    .line 41
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lteam/opay/sme/store/api/CreateBranchReq;

    .line 48
    .line 49
    iget-object v5, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 50
    .line 51
    invoke-static {v5}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->J(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    iget-object v11, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->$payPin:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v14, 0xcf

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    move-object v5, v2

    .line 67
    invoke-direct/range {v5 .. v15}, Lteam/opay/sme/store/api/CreateBranchReq;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/BranchSaasInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 71
    .line 72
    invoke-static {v5}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->K(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iput v3, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->label:I

    .line 77
    .line 78
    invoke-virtual {v5, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->s(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-ne v2, v1, :cond_2

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_2
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 86
    .line 87
    iget-object v1, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 98
    .line 99
    invoke-static {v1, v3}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-object v1, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 110
    .line 111
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->I(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;)Lpud;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v1, v1, Lpud;->d:Lteam/opay/core/widget/PulseLoaderView;

    .line 116
    .line 117
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 124
    .line 125
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lteam/opay/sme/store/api/CreateBranchResp;

    .line 130
    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    iget-object v2, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 134
    .line 135
    invoke-static {v2, v1}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->M(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;Lteam/opay/sme/store/api/CreateBranchResp;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 140
    .line 141
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;->I(Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;)Lpud;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v1, v1, Lpud;->d:Lteam/opay/core/widget/PulseLoaderView;

    .line 146
    .line 147
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment$branchCreate$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteSelectStoreFragment;

    .line 154
    .line 155
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    goto :goto_1

    .line 170
    :cond_4
    const/4 v2, 0x0

    .line 171
    :goto_1
    invoke-static {v1, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object v1
.end method
