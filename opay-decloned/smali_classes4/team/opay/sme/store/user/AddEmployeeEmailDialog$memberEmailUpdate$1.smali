.class final Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AddEmployeeEmailDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->e0()V
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
    c = "team.opay.sme.store.user.AddEmployeeEmailDialog$memberEmailUpdate$1"
    f = "AddEmployeeEmailDialog.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/AddEmployeeEmailDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

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
    new-instance p1, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;-><init>(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    goto :goto_1

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
    iget-object v2, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 33
    .line 34
    invoke-static {v2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->W(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Lztd;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v2, Lztd;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    new-instance v2, Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 48
    .line 49
    iget-object v5, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 50
    .line 51
    invoke-static {v5}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->X(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    invoke-virtual {v5}, Lteam/opay/sme/store/api/EmployeeInfo;->getMemberId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v8, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move-object v8, v3

    .line 64
    :goto_0
    iget-object v5, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 65
    .line 66
    invoke-static {v5}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->Y(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    const/16 v19, 0x1f7b

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    move-object v5, v2

    .line 89
    invoke-direct/range {v5 .. v20}, Lteam/opay/sme/store/api/CreateEmployeesReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/PayrollBankInfo;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    iget-object v5, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 93
    .line 94
    invoke-static {v5}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->Z(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Lteam/opay/sme/store/StoreViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iput v4, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->label:I

    .line 99
    .line 100
    invoke-virtual {v5, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->W(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-ne v2, v1, :cond_4

    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_4
    :goto_1
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 108
    .line 109
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 120
    .line 121
    invoke-static {v1, v4}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 132
    .line 133
    invoke-static {v1}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->W(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Lztd;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    iget-object v1, v1, Lztd;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 147
    .line 148
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    sget v2, Lteam/opay/sme/store/R$string;->sme_store_successful:I

    .line 153
    .line 154
    invoke-static {v1, v2}, Let;->u(Landroid/content/Context;I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 158
    .line 159
    invoke-virtual {v1}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->b0()Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    iget-object v2, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 166
    .line 167
    invoke-static {v2}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->Y(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 175
    .line 176
    invoke-virtual {v1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 181
    .line 182
    invoke-static {v1}, Lteam/opay/sme/store/user/AddEmployeeEmailDialog;->W(Lteam/opay/sme/store/user/AddEmployeeEmailDialog;)Lztd;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    iget-object v1, v1, Lztd;->g:Lteam/opay/core/widget/PulseLoaderView;

    .line 189
    .line 190
    if-eqz v1, :cond_8

    .line 191
    .line 192
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object v1, v0, Lteam/opay/sme/store/user/AddEmployeeEmailDialog$memberEmailUpdate$1;->this$0:Lteam/opay/sme/store/user/AddEmployeeEmailDialog;

    .line 196
    .line 197
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :cond_9
    invoke-static {v1, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v1
.end method
