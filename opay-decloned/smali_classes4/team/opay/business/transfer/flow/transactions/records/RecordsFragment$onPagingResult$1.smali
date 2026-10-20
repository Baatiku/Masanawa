.class final Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecordsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->r0(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.transfer.flow.transactions.records.RecordsFragment$onPagingResult$1"
    f = "RecordsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $res:Lteam/opay/business/transfer/flow/api/TransactionsResp;

.field final synthetic $result:Lteam/opay/core/http/internal/PagingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionsResp;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;",
            "Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->invokeSuspend$lambda$1$lambda$0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->invokeSuspend$lambda$2(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;I)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->U(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataAdapter;->o(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;->a()Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Z(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lg76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lg76;->c:Lh86;

    .line 16
    .line 17
    invoke-virtual {p0}, Lh86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionsResp;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->e()Lteam/opay/core/http/arch/Status;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v1, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 27
    .line 28
    if-eq p1, v1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lg76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 39
    .line 40
    new-instance v2, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "getContext(...)"

    .line 47
    .line 48
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v4, v4, Lg76;->c:Lh86;

    .line 56
    .line 57
    invoke-virtual {v4}, Lh86;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "getRoot(...)"

    .line 62
    .line 63
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Lteam/opay/business/transfer/flow/transactions/records/a;

    .line 67
    .line 68
    invoke-direct {v5, v1}, Lteam/opay/business/transfer/flow/transactions/records/a;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 69
    .line 70
    .line 71
    const/16 v6, 0x101

    .line 72
    .line 73
    invoke-direct {v2, v3, v6, v4, v5}, Lteam/opay/business/transfer/flow/widget/PinnedLayoutManager;-><init>(Landroid/content/Context;ILandroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->R(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 95
    .line 96
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->R(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/ConcatAdapter;->getItemCount()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_1

    .line 105
    .line 106
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 107
    .line 108
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p1, p1, Lg76;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 118
    .line 119
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Lg76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 126
    .line 127
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 128
    .line 129
    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 140
    .line 141
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lg76;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 148
    .line 149
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->T(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_1
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 159
    .line 160
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lg76;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 172
    .line 173
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 181
    .line 182
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object p1, p1, Lg76;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 187
    .line 188
    invoke-static {p1, v1, v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 192
    .line 193
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Y(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :cond_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 199
    .line 200
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_4

    .line 205
    .line 206
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 207
    .line 208
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p1, p1, Lg76;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 213
    .line 214
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 215
    .line 216
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 224
    .line 225
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Y(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 230
    .line 231
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    const/4 v2, 0x0

    .line 236
    if-ne p1, v0, :cond_7

    .line 237
    .line 238
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 239
    .line 240
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->V(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Landroid/os/Handler;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 245
    .line 246
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/records/b;

    .line 247
    .line 248
    invoke-direct {v3, v0}, Lteam/opay/business/transfer/flow/transactions/records/b;-><init>(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)V

    .line 249
    .line 250
    .line 251
    const-wide/16 v4, 0x1f4

    .line 252
    .line 253
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 257
    .line 258
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 259
    .line 260
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->b()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_5

    .line 265
    .line 266
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_5
    move-object v0, v1

    .line 274
    :goto_0
    invoke-static {p1, v0}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Z(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;Lteam/opay/business/transfer/flow/api/TransactionInfo;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 278
    .line 279
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->S(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->$res:Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 284
    .line 285
    if-eqz v0, :cond_6

    .line 286
    .line 287
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->d()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :cond_6
    invoke-virtual {p1, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionFooterAdapter;->u(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_7
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 295
    .line 296
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object p1, p1, Lg76;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 301
    .line 302
    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;

    .line 306
    .line 307
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;->Q(Lteam/opay/business/transfer/flow/transactions/records/RecordsFragment;)Lg76;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p1, p1, Lg76;->d:Lteam/opay/core/widget/HttpViewGroup;

    .line 312
    .line 313
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 314
    .line 315
    .line 316
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    return-object p1

    .line 319
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 320
    .line 321
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 322
    .line 323
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1
.end method
