.class final Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchEmployeeAddDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->m0()V
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
    c = "team.opay.sme.store.branch.employee.BranchEmployeeAddDialog$employeeCreateBatch$1"
    f = "BranchEmployeeAddDialog.kt"
    l = {
        0x8f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

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
    new-instance p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;-><init>(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->label:I

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
    goto :goto_2

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
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 29
    .line 30
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->e0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Lbud;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lbud;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p1, v1, v3, v2}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->f0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Lteam/opay/sme/store/api/BranchInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/sme/store/api/BranchInfo;->getBranchId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object p1, v2

    .line 54
    :goto_0
    if-nez p1, :cond_3

    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    :cond_3
    move-object v5, p1

    .line 59
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 60
    .line 61
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->g0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 85
    .line 86
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getMemberId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    new-instance p1, Lteam/opay/sme/store/api/EmployeeManageReq;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x4

    .line 100
    const/4 v9, 0x0

    .line 101
    move-object v4, p1

    .line 102
    invoke-direct/range {v4 .. v9}, Lteam/opay/sme/store/api/EmployeeManageReq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 106
    .line 107
    invoke-static {v1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->i0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput v3, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->label:I

    .line 112
    .line 113
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->E(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_6

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_6
    :goto_2
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 121
    .line 122
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 133
    .line 134
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 141
    .line 142
    invoke-static {v0}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->e0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Lbud;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lbud;->f:Lteam/opay/core/widget/HttpViewGroup;

    .line 147
    .line 148
    invoke-virtual {v0}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 149
    .line 150
    .line 151
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 156
    .line 157
    invoke-static {p1}, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;->i0(Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lteam/opay/sme/store/StoreViewModel;->a0()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 165
    .line 166
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    iget-object v0, p0, Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog$employeeCreateBatch$1;->this$0:Lteam/opay/sme/store/branch/employee/BranchEmployeeAddDialog;

    .line 171
    .line 172
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_8

    .line 181
    .line 182
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :cond_8
    invoke-static {v0, v2}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1
.end method
