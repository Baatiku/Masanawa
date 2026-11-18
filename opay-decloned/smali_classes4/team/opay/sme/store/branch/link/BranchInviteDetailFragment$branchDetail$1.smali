.class final Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchInviteDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->W0()V
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
    c = "team.opay.sme.store.branch.link.BranchInviteDetailFragment$branchDetail$1"
    f = "BranchInviteDetailFragment.kt"
    l = {
        0x6c
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
            "Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;-><init>(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->label:I

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
    goto :goto_2

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

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
    new-instance p1, Lteam/opay/sme/store/api/BranchDetailReq;

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 46
    .line 47
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->Q0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    move-object v5, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    const/16 v11, 0x1e

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x1

    .line 69
    move-object v4, p1

    .line 70
    invoke-direct/range {v4 .. v12}, Lteam/opay/sme/store/api/BranchDetailReq;-><init>(Ljava/lang/String;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 74
    .line 75
    invoke-static {v1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->R0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput v2, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->label:I

    .line 80
    .line 81
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->u(Lteam/opay/sme/store/api/BranchDetailReq;Ljr2;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_3

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_3
    :goto_2
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 89
    .line 90
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 95
    .line 96
    invoke-static {v0}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 101
    .line 102
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 109
    .line 110
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lteam/opay/sme/store/api/BranchDetailResp;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 119
    .line 120
    invoke-static {v0, p1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->T0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;Lteam/opay/sme/store/api/BranchDetailResp;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    iget-object p1, p0, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment$branchDetail$1;->this$0:Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;

    .line 125
    .line 126
    invoke-static {p1}, Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;->P0(Lteam/opay/sme/store/branch/link/BranchInviteDetailFragment;)Lnud;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Lnud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 131
    .line 132
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p1
.end method
