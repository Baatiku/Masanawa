.class final Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillCategoryDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->d0()V
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
    c = "team.opay.business.transfer.flow.transactions.transactionDetails.BillCategoryDialog$getCategoryList$1"
    f = "BillCategoryDialog.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->label:I

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->Y(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->label:I

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->L(Ljr2;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "<get-lifecycle>(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 64
    .line 65
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->W(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lp66;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lp66;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 72
    .line 73
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->V(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$BillCategoryAdapter;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 85
    .line 86
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->V(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$BillCategoryAdapter;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lteam/opay/business/transfer/flow/api/BillCategoryResp;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/BillCategoryResp;->a()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move-object p1, v1

    .line 107
    :goto_1
    if-nez p1, :cond_4

    .line 108
    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :cond_4
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$BillCategoryAdapter;->setDataList(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 117
    .line 118
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->V(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$BillCategoryAdapter;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$BillCategoryAdapter;->getItemCount()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 129
    .line 130
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->W(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lp66;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p1, p1, Lp66;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 135
    .line 136
    invoke-static {p1, v1, v2, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 141
    .line 142
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->W(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lp66;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p1, p1, Lp66;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 147
    .line 148
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 153
    .line 154
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;->W(Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;)Lp66;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v0, v0, Lp66;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 159
    .line 160
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog$getCategoryList$1;->this$0:Lteam/opay/business/transfer/flow/transactions/transactionDetails/BillCategoryDialog;

    .line 168
    .line 169
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseSheetFragment;->S()V

    .line 170
    .line 171
    .line 172
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1
.end method
