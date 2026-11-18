.class final Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/EmployeeDetailFragment;->j0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.user.EmployeeDetailFragment$employeeDelete$1"
    f = "EmployeeDetailFragment.kt"
    l = {
        0x1ac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $payPin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->$payPin:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;-><init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p1, v1, v3, v2}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->X(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/EmployeeBranchInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/sme/store/api/EmployeeBranchInfo;->getEmployeeId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move-object v8, p1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v8, v2

    .line 55
    :goto_0
    new-instance p1, Lteam/opay/sme/store/api/EmployeeInfoReq;

    .line 56
    .line 57
    iget-object v7, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->$payPin:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v9, 0x3

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v4, p1

    .line 64
    invoke-direct/range {v4 .. v10}, Lteam/opay/sme/store/api/EmployeeInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 68
    .line 69
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->c0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput v3, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->label:I

    .line 74
    .line 75
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->G(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_3
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 83
    .line 84
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 95
    .line 96
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 107
    .line 108
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sget v0, Lteam/opay/sme/store/R$string;->sme_store_delete_user_successful:I

    .line 124
    .line 125
    invoke-static {p1, v0}, Let;->u(Landroid/content/Context;I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 129
    .line 130
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->W(Lteam/opay/sme/store/user/EmployeeDetailFragment;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 135
    .line 136
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDelete$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 146
    .line 147
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_5
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p1
.end method
