.class final synthetic Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$getTransactionCategory$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "TransactionLabelFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lteam/opay/core/http/internal/PagingResult<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "onPagingResult(Lteam/opay/core/http/internal/PagingResult;)V"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const-class v3, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    .line 6
    .line 7
    const-string v4, "onPagingResult"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/http/internal/PagingResult;

    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment$getTransactionCategory$1;->invoke(Lteam/opay/core/http/internal/PagingResult;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lteam/opay/core/http/internal/PagingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;

    invoke-static {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;->R(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelFragment;Lteam/opay/core/http/internal/PagingResult;)V

    return-void
.end method
