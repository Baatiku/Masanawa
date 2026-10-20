.class final Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionTicketFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;->S()V
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
    c = "team.opay.business.transfer.flow.transactions.transactionDetails.TransactionTicketFragment$showShareDialog$1"
    f = "TransactionTicketFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lnnd;->a:Lnnd;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment$showShareDialog$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;->H(Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionTicketFragment;)Lo76;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lo76;->j:Lteam/opay/business/transfer/flow/widget/ReceiptLayout;

    .line 20
    .line 21
    const-string v1, "ticketContent"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lteam/opay/business/share/utils/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lnnd;->c(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
