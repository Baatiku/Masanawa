.class final Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BranchAddAddressFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/BranchAddAddressFragment;->p0()V
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
    c = "team.opay.sme.store.branch.BranchAddAddressFragment$branchMerchantDetail$1"
    f = "BranchAddAddressFragment.kt"
    l = {
        0xe5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/BranchAddAddressFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/branch/BranchAddAddressFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

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
    new-instance p1, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;-><init>(Lteam/opay/sme/store/branch/BranchAddAddressFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

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
    iget v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string v4, "httpViewGroup"

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
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 34
    .line 35
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

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
    iget-object v2, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 48
    .line 49
    invoke-static {v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->h0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Lteam/opay/sme/store/StoreViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput v3, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->label:I

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lteam/opay/sme/store/StoreViewModel;->y(Ljr2;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-ne v2, v1, :cond_2

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    :goto_0
    check-cast v2, Lteam/opay/core/http/HttpResult;

    .line 63
    .line 64
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 75
    .line 76
    invoke-static {v1, v3}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    instance-of v1, v2, Lteam/opay/core/http/HttpResult$Success;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 88
    .line 89
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

    .line 94
    .line 95
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 102
    .line 103
    new-instance v8, Lteam/opay/sme/store/api/BranchInfo;

    .line 104
    .line 105
    check-cast v2, Lteam/opay/core/http/HttpResult$Success;

    .line 106
    .line 107
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Lteam/opay/sme/store/api/BranchSaasInfo;

    .line 112
    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    invoke-virtual {v4}, Lteam/opay/sme/store/api/BranchSaasInfo;->getShopName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_3
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object v13, v2

    .line 124
    check-cast v13, Lteam/opay/sme/store/api/BranchSaasInfo;

    .line 125
    .line 126
    const v21, 0xfef7

    .line 127
    .line 128
    .line 129
    const/16 v22, 0x0

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    const/4 v15, 0x0

    .line 140
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    const/16 v19, 0x0

    .line 147
    .line 148
    const/16 v20, 0x0

    .line 149
    .line 150
    move-object v4, v8

    .line 151
    move-object v2, v8

    .line 152
    move-object v8, v3

    .line 153
    invoke-direct/range {v4 .. v22}, Lteam/opay/sme/store/api/BranchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/BranchSaasInfo;Ljava/lang/String;Ljava/lang/String;Lteam/opay/sme/store/api/BranchBalanceInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v2}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->l0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;Lteam/opay/sme/store/api/BranchInfo;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 160
    .line 161
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->j0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 166
    .line 167
    invoke-static {v1}, Lteam/opay/sme/store/branch/BranchAddAddressFragment;->b0(Lteam/opay/sme/store/branch/BranchAddAddressFragment;)Liud;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v1, v1, Liud;->i:Lteam/opay/core/widget/PulseLoaderView;

    .line 172
    .line 173
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lteam/opay/sme/store/branch/BranchAddAddressFragment$branchMerchantDetail$1;->this$0:Lteam/opay/sme/store/branch/BranchAddAddressFragment;

    .line 180
    .line 181
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :cond_5
    invoke-static {v1, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object v1
.end method
