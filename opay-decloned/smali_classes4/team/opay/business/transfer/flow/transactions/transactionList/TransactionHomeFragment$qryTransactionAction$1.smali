.class final Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->f0()V
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
    c = "team.opay.business.transfer.flow.transactions.transactionList.TransactionHomeFragment$qryTransactionAction$1"
    f = "TransactionHomeFragment.kt"
    l = {
        0x10f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $request:Lteam/opay/business/transfer/flow/api/TransactionActionReq;

.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;",
            "Lteam/opay/business/transfer/flow/api/TransactionActionReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->$request:Lteam/opay/business/transfer/flow/api/TransactionActionReq;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->$request:Lteam/opay/business/transfer/flow/api/TransactionActionReq;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->label:I

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->O(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->$request:Lteam/opay/business/transfer/flow/api/TransactionActionReq;

    .line 34
    .line 35
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->label:I

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->K(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 45
    .line 46
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 51
    .line 52
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lteam/opay/business/transfer/flow/api/TransactionActionResp;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->Q(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;Lteam/opay/business/transfer/flow/api/TransactionActionResp;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment$qryTransactionAction$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;->P(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionHomeFragment;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    .line 72
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1
.end method
