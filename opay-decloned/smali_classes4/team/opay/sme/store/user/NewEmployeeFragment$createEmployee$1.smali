.class final Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewEmployeeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/NewEmployeeFragment;->k0(Ljava/lang/String;)V
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
    c = "team.opay.sme.store.user.NewEmployeeFragment$createEmployee$1"
    f = "NewEmployeeFragment.kt"
    l = {
        0x1d0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $pin:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/NewEmployeeFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->$pin:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->$pin:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;-><init>(Lteam/opay/sme/store/user/NewEmployeeFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->label:I

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
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 33
    .line 34
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v2, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

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
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 48
    .line 49
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->Z(Lteam/opay/sme/store/user/NewEmployeeFragment;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 54
    .line 55
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->a0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Lteam/opay/sme/store/api/EmployeeInfo;->getUserId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    move-object v9, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v9, v3

    .line 68
    :goto_0
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 69
    .line 70
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->Y(Lteam/opay/sme/store/user/NewEmployeeFragment;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 75
    .line 76
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->X(Lteam/opay/sme/store/user/NewEmployeeFragment;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 81
    .line 82
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->b0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    iget-object v2, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 87
    .line 88
    invoke-static {v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->W(Lteam/opay/sme/store/user/NewEmployeeFragment;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-instance v2, Lteam/opay/sme/store/api/CreateEmployeesReq;

    .line 93
    .line 94
    iget-object v12, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->$pin:Ljava/lang/String;

    .line 95
    .line 96
    const/16 v19, 0x1334

    .line 97
    .line 98
    const/16 v20, 0x0

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v14, 0x0

    .line 104
    const/4 v15, 0x0

    .line 105
    const/16 v18, 0x0

    .line 106
    .line 107
    move-object v5, v2

    .line 108
    invoke-direct/range {v5 .. v20}, Lteam/opay/sme/store/api/CreateEmployeesReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/PayrollBankInfo;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    iget-object v5, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 112
    .line 113
    invoke-static {v5}, Lteam/opay/sme/store/user/NewEmployeeFragment;->c0(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iput v4, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->label:I

    .line 118
    .line 119
    invoke-virtual {v5, v2, v0}, Lteam/opay/sme/store/StoreViewModel;->U(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-ne v2, v1, :cond_4

    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_4
    :goto_1
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 127
    .line 128
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 139
    .line 140
    invoke-static {v1, v4}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 151
    .line 152
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    iget-object v1, v1, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 166
    .line 167
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 168
    .line 169
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 174
    .line 175
    invoke-static {v1, v2}, Lteam/opay/sme/store/user/NewEmployeeFragment;->h0(Lteam/opay/sme/store/user/NewEmployeeFragment;Lteam/opay/sme/store/api/EmployeeInfo;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 180
    .line 181
    invoke-static {v1}, Lteam/opay/sme/store/user/NewEmployeeFragment;->V(Lteam/opay/sme/store/user/NewEmployeeFragment;)Lxud;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    iget-object v1, v1, Lxud;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 188
    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    iget-object v1, v0, Lteam/opay/sme/store/user/NewEmployeeFragment$createEmployee$1;->this$0:Lteam/opay/sme/store/user/NewEmployeeFragment;

    .line 195
    .line 196
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :cond_8
    invoke-static {v1, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_9
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 214
    .line 215
    return-object v1
.end method
