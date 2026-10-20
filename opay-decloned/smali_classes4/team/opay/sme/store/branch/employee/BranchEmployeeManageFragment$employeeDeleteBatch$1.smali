.class final Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchEmployeeManageFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->Y()V
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
    c = "team.opay.sme.store.branch.employee.BranchEmployeeManageFragment$employeeDeleteBatch$1"
    f = "BranchEmployeeManageFragment.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;-><init>(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "loadingView"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Loud;->m:Lteam/opay/core/widget/PulseLoaderView;

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 45
    .line 46
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->Q(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/api/BranchInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object p1, v2

    .line 58
    :goto_0
    if-nez p1, :cond_3

    .line 59
    .line 60
    const-string p1, ""

    .line 61
    .line 62
    :cond_3
    move-object v6, p1

    .line 63
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->R(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v8, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getEmployeeId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    new-instance p1, Lteam/opay/sme/store/api/EmployeeManageReq;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v9, 0x2

    .line 104
    const/4 v10, 0x0

    .line 105
    move-object v5, p1

    .line 106
    invoke-direct/range {v5 .. v10}, Lteam/opay/sme/store/api/EmployeeManageReq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 110
    .line 111
    invoke-static {v1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->U(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput v4, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->label:I

    .line 116
    .line 117
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->H(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v0, :cond_6

    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_6
    :goto_2
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 125
    .line 126
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 137
    .line 138
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 145
    .line 146
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->P(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Loud;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Loud;->m:Lteam/opay/core/widget/PulseLoaderView;

    .line 151
    .line 152
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 163
    .line 164
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->U(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lteam/opay/sme/store/StoreViewModel;->a0()V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 172
    .line 173
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;->V(Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment$employeeDeleteBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeManageFragment;

    .line 178
    .line 179
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    :cond_8
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    return-object p1
.end method
