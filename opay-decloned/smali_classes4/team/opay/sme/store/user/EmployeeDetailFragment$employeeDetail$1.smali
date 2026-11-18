.class final Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmployeeDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/user/EmployeeDetailFragment;->k0()V
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
    c = "team.opay.sme.store.user.EmployeeDetailFragment$employeeDetail$1"
    f = "EmployeeDetailFragment.kt"
    l = {
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

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
    new-instance p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;-><init>(Lteam/opay/sme/store/user/EmployeeDetailFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->label:I

    .line 6
    .line 7
    const-string v2, "getRoot(...)"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
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
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Ltud;->s:Landroidx/core/widget/NestedScrollView;

    .line 37
    .line 38
    const-string v1, "scrollView"

    .line 39
    .line 40
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 50
    .line 51
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 62
    .line 63
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Ltud;->f:Livd;

    .line 68
    .line 69
    invoke-virtual {p1}, Livd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    new-instance p1, Lteam/opay/sme/store/api/EmployeeInfoReq;

    .line 80
    .line 81
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 82
    .line 83
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->b0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v4, 0x0

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getMemberId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v5, v1

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object v5, v4

    .line 97
    :goto_1
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 98
    .line 99
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->b0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-virtual {v1}, Lteam/opay/sme/store/api/EmployeeInfo;->getBranchId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move-object v6, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move-object v6, v4

    .line 112
    :goto_2
    const/16 v9, 0xc

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v4, p1

    .line 118
    invoke-direct/range {v4 .. v10}, Lteam/opay/sme/store/api/EmployeeInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 122
    .line 123
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->c0(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput v3, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->label:I

    .line 128
    .line 129
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/store/StoreViewModel;->I(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v0, :cond_5

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_5
    :goto_3
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 137
    .line 138
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 149
    .line 150
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 161
    .line 162
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 169
    .line 170
    invoke-static {v0, p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->e0(Lteam/opay/sme/store/user/EmployeeDetailFragment;Lteam/opay/sme/store/api/EmployeeInfo;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 174
    .line 175
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object p1, p1, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 180
    .line 181
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 186
    .line 187
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v0, v0, Ltud;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    iget-object v1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 194
    .line 195
    invoke-static {v1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Z(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Lteam/opay/sme/store/user/UserBranchAdapter;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 203
    .line 204
    invoke-static {v0}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v0, v0, Ltud;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 209
    .line 210
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lteam/opay/sme/store/user/EmployeeDetailFragment$employeeDetail$1;->this$0:Lteam/opay/sme/store/user/EmployeeDetailFragment;

    .line 218
    .line 219
    invoke-static {p1}, Lteam/opay/sme/store/user/EmployeeDetailFragment;->Y(Lteam/opay/sme/store/user/EmployeeDetailFragment;)Ltud;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iget-object p1, p1, Ltud;->f:Livd;

    .line 224
    .line 225
    invoke-virtual {p1}, Livd;->a()Lteam/opay/business/widget/shimmer/CorpShimmerConstraintLayout;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p1
.end method
