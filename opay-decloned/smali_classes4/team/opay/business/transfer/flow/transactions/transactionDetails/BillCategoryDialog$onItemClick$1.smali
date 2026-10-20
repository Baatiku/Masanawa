.class final Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillCategoryDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->i0(Lteam/opay/business/transfer/flow/api/BillCategoryInfo;)V
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
    c = "team.opay.business.transfer.flow.transactions.transactionDetails.BillCategoryDialog$onItemClick$1"
    f = "BillCategoryDialog.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $info:Lteam/opay/business/transfer/flow/api/BillCategoryInfo;

.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;Lteam/opay/business/transfer/flow/api/BillCategoryInfo;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;",
            "Lteam/opay/business/transfer/flow/api/BillCategoryInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->$info:Lteam/opay/business/transfer/flow/api/BillCategoryInfo;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->$info:Lteam/opay/business/transfer/flow/api/BillCategoryInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;Lteam/opay/business/transfer/flow/api/BillCategoryInfo;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->label:I

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
    goto :goto_1

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
    new-instance p1, Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 30
    .line 31
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->X(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, ""

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    :cond_2
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->$info:Lteam/opay/business/transfer/flow/api/BillCategoryInfo;

    .line 41
    .line 42
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/BillCategoryInfo;->getCode()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move-object v3, v4

    .line 50
    :goto_0
    invoke-direct {p1, v1, v3}, Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->Y(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->label:I

    .line 60
    .line 61
    invoke-virtual {v1, p1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->U(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :goto_1
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 69
    .line 70
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "<get-lifecycle>(...)"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 82
    .line 83
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->f0()Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->$info:Lteam/opay/business/transfer/flow/api/BillCategoryInfo;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 107
    .line 108
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 113
    .line 114
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    const/4 p1, 0x0

    .line 130
    :goto_2
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$onItemClick$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 134
    .line 135
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->S()V

    .line 136
    .line 137
    .line 138
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p1
.end method
