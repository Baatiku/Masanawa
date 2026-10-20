.class final Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/EmployeeDetailFragment;->i0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.user.EmployeeDetailFragment$changeRole$1"
    f = "EmployeeDetailFragment.kt"
    l = {
        0x110
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
            "Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->$payPin:Ljava/lang/String;

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

.method public static synthetic c(Lteam/opay/sme/store/user/EmployeeDetailFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->invokeSuspend$lambda$0(Lteam/opay/sme/store/user/EmployeeDetailFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/sme/store/user/EmployeeDetailFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->W(Lteam/opay/sme/store/user/EmployeeDetailFragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
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
    new-instance p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->$payPin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;-><init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

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
    iget v2, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 33
    .line 34
    invoke-static {v2}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v2, v5, v3, v4}, Lteam/opay/core/widget/HttpViewGroup;->y(Lteam/opay/core/widget/HttpViewGroup;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 45
    .line 46
    invoke-static {v2}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->X(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/EmployeeBranchInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Lteam/opay/sme/store/api/EmployeeBranchInfo;->getEmployeeId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    move-object v15, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v15, v4

    .line 59
    :goto_0
    iget-object v2, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 60
    .line 61
    invoke-static {v2}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->a0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/Business;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Lteam/opay/sme/store/api/Business;->getCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v10, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v10, v4

    .line 74
    :goto_1
    new-instance v2, Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 75
    .line 76
    iget-object v12, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->$payPin:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v19, 0x1daf

    .line 79
    .line 80
    const/16 v20, 0x0

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    move-object v5, v2

    .line 96
    invoke-direct/range {v5 .. v20}, Lteam/opay/sme/store/api/CreateEmployeesReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/PayrollBankInfo;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 100
    .line 101
    invoke-static {v5}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->c0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iput v3, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->label:I

    .line 106
    .line 107
    invoke-virtual {v5, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->D(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-ne v2, v1, :cond_4

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_4
    :goto_2
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 115
    .line 116
    iget-object v1, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 127
    .line 128
    invoke-static {v1, v3}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 135
    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    iget-object v1, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 139
    .line 140
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v1, v1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 145
    .line 146
    invoke-virtual {v1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 150
    .line 151
    sget v2, Lteam/opay/sme/store/R$string;->sme_store_action_change_success:I

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "getString(...)"

    .line 158
    .line 159
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v3, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 163
    .line 164
    new-instance v4, Lteam/opay/sme/store/user/a;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Lteam/opay/sme/store/user/a;-><init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v2, v4}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->f0(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    iget-object v1, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 174
    .line 175
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v1, v1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 180
    .line 181
    invoke-virtual {v1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lteam/opay/sme/store/user/EmployeeDetailFragment$changeRole$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 185
    .line 186
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    :cond_6
    invoke-static {v1, v4}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 204
    .line 205
    return-object v1
.end method
