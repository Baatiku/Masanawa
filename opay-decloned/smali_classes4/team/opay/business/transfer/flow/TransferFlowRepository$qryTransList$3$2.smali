.class final Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FlowViewModel.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/TransferFlowRepository;->p(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lhm6<",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
        "Ljr2<",
        "-",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        "before",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
        "after"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.transfer.flow.TransferFlowRepository$qryTransList$3$2"
    f = "FlowViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $period:Lteam/opay/business/transfer/flow/internal/Period;

.field final synthetic $request:Lteam/opay/business/transfer/flow/api/TransactionsReq;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
            "Lteam/opay/business/transfer/flow/internal/Period;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$request:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    check-cast p2, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    check-cast p3, Ljr2;

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->invoke(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;

    iget-object v1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$request:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    iget-object v2, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$period:Lteam/opay/business/transfer/flow/internal/Period;

    invoke-direct {v0, v1, v2, p3}, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;-><init>(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Ljr2;)V

    iput-object p1, v0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->L$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$request:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$3$2;->$period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 26
    .line 27
    sget-object v3, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    if-nez p1, :cond_7

    .line 35
    .line 36
    if-eqz v0, :cond_7

    .line 37
    .line 38
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v4, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;-><init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string v2, "MMM. yyyy"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "MMM dd, yyyy"

    .line 55
    .line 56
    :goto_0
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getFinishDate()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    sget-object v5, Lxa6;->a:Lxa6;

    .line 71
    .line 72
    invoke-virtual {v5, v3, v2}, Lxa6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object v3, v4

    .line 78
    :goto_1
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->getFinishDate()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    sget-object v6, Lxa6;->a:Lxa6;

    .line 93
    .line 94
    invoke-virtual {v6, v5, v2}, Lxa6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-object v2, v4

    .line 100
    :goto_2
    const/4 v5, 0x1

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p1, v5}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->setGroupBottom(Z)V

    .line 118
    .line 119
    .line 120
    :cond_4
    if-eqz v1, :cond_5

    .line 121
    .line 122
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;

    .line 123
    .line 124
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v4, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$BalanceSeparatorModel;-><init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;

    .line 133
    .line 134
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {v4, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$SeparatorModel;-><init>(Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    if-eqz p1, :cond_7

    .line 143
    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel$ItemModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v5}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->setGroupBottom(Z)V

    .line 151
    .line 152
    .line 153
    :cond_7
    :goto_3
    return-object v4

    .line 154
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 157
    .line 158
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1
.end method
