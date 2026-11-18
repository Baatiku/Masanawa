.class final Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchDetailFragment;->k0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.branch.BranchDetailFragment$deleteBranch$1"
    f = "BranchDetailFragment.kt"
    l = {
        0x17e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $payPin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchDetailFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchDetailFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->$payPin:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;-><init>(Lteam/opay/sme/store/branch/BranchDetailFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lteam/opay/sme/store/api/BranchIdRequest;

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 42
    .line 43
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->c0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v1, v2

    .line 55
    :goto_0
    iget-object v4, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->$payPin:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p1, v1, v4}, Lteam/opay/sme/store/api/BranchIdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 61
    .line 62
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->d0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput v3, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->label:I

    .line 67
    .line 68
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->t(Lteam/opay/sme/store/api/BranchIdRequest;Ljr2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 76
    .line 77
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 100
    .line 101
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 106
    .line 107
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 111
    .line 112
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->d0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lteam/opay/sme/store/StoreViewModel;->Y()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 120
    .line 121
    invoke-static {p1}, Lteam/opay/sme/store/branch/BranchDetailFragment;->i0(Lteam/opay/sme/store/branch/BranchDetailFragment;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 126
    .line 127
    invoke-static {v0}, Lteam/opay/sme/store/branch/BranchDetailFragment;->b0(Lteam/opay/sme/store/branch/BranchDetailFragment;)Lmud;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Lmud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 132
    .line 133
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchDetailFragment$deleteBranch$1;->this$0:Lteam/opay/sme/store/branch/BranchDetailFragment;

    .line 137
    .line 138
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :cond_5
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
