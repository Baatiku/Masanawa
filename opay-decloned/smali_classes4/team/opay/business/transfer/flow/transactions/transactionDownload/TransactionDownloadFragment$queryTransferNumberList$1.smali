.class final Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionDownloadFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->R0()V
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
    c = "team.opay.business.transfer.flow.transactions.transactionDownload.TransactionDownloadFragment$queryTransferNumberList$1"
    f = "TransactionDownloadFragment.kt"
    l = {
        0x130
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->label:I

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->f0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lk76;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lk76;->o:Lteam/opay/core/widget/HttpViewGroup;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->g0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->label:I

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->O(Ljr2;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "<get-lifecycle>(...)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 75
    .line 76
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->f0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lk76;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lk76;->o:Lteam/opay/core/widget/HttpViewGroup;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 84
    .line 85
    .line 86
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 92
    .line 93
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lteam/opay/business/transfer/flow/api/BillDownloadTnResponse;

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/BillDownloadTnResponse;->a()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_3
    invoke-static {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

    .line 112
    .line 113
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_5
    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1
.end method
