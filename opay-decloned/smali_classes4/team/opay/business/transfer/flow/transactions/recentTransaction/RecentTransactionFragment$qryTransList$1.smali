.class final Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecentTransactionFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->R()V
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
    c = "team.opay.business.transfer.flow.transactions.recentTransaction.RecentTransactionFragment$qryTransList$1"
    f = "RecentTransactionFragment.kt"
    l = {
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;-><init>(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->label:I

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->M(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 34
    .line 35
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->K(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->label:I

    .line 40
    .line 41
    invoke-virtual {p1, v1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->I(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 49
    .line 50
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "<get-lifecycle>(...)"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 74
    .line 75
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->L(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->c()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p1, 0x0

    .line 95
    :goto_1
    if-nez p1, :cond_4

    .line 96
    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_4
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;->setDataList(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    .line 108
    :goto_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 109
    .line 110
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->J(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lf76;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lf76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v0, "getRoot(...)"

    .line 119
    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 124
    .line 125
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->L(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;->getItemCount()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v1, 0x0

    .line 134
    if-lez v0, :cond_6

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    const/4 v0, 0x0

    .line 139
    :goto_3
    invoke-static {p1, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 143
    .line 144
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseLazyFragment;->getFragmentDataCallback()Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment$qryTransList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;

    .line 149
    .line 150
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;->L(Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionFragment;)Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/recentTransaction/RecentTransactionsAdapter;->getItemCount()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-lez v0, :cond_7

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const/4 v2, 0x0

    .line 162
    :goto_4
    invoke-static {v2}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1
.end method
