.class final Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionLabelFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->S(Ljava/lang/String;)V
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
    c = "team.opay.business.transfer.flow.transactions.transactionDetails.TransactionLabelFragment$bindTransLabel$1"
    f = "TransactionLabelFragment.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $label:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->$label:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->$label:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->label:I

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
    new-instance p1, Lteam/opay/business/transfer/flow/api/BindTransLabelReq;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 30
    .line 31
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->O(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 36
    .line 37
    invoke-static {v3}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->L(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 42
    .line 43
    invoke-static {v4}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->P(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->$label:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p1, v1, v3, v4, v5}, Lteam/opay/business/transfer/flow/api/BindTransLabelReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 53
    .line 54
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->Q(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->label:I

    .line 59
    .line 60
    invoke-virtual {v1, p1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->s(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 68
    .line 69
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->V()Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->$label:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$bindTransLabel$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 97
    .line 98
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const/4 p1, 0x0

    .line 114
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1
.end method
