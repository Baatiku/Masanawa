.class final Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EODFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->Z()V
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
    c = "team.opay.business.transfer.flow.transactions.eod.EODFragment$getBalanceData$1"
    f = "EODFragment.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 42
    .line 43
    iget-object p1, p1, Lb96;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const-string v1, "balanceAmount"

    .line 46
    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v2}, Lg0g;->f(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->O(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Ly66;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Ly66;->e:Lb96;

    .line 60
    .line 61
    iget-object p1, p1, Lb96;->k:Lteam/opay/business/widget/shimmer/CorpShimmerView;

    .line 62
    .line 63
    const-string v1, "shimmerBalance"

    .line 64
    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 72
    .line 73
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->R(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v1, Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;

    .line 78
    .line 79
    sget-object v3, Lf96;->b:Lf96;

    .line 80
    .line 81
    invoke-virtual {v3}, Lf96;->j()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v1, v3}, Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->label:I

    .line 89
    .line 90
    invoke-virtual {p1, v1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->E(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 98
    .line 99
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 105
    .line 106
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a()Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/AccountTypeInfo;->getBalance()Lteam/opay/core/common/amount/MoneyAmount;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_4
    invoke-static {v0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->W(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 130
    .line 131
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;)Lteam/opay/core/common/amount/MoneyAmount;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->X(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 140
    .line 141
    invoke-static {v0, v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;->X(Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODFragment$getBalanceData$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODFragment;

    .line 145
    .line 146
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_6
    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method
