.class public final synthetic Lteam/opay/business/transfer/flow/transactions/transactionList/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/c;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/c;->a:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment$onPagingResult$1;->c(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionListFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
