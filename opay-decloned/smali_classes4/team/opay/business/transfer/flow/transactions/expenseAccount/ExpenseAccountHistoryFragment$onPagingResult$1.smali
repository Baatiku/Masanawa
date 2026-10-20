.class final Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExpenseAccountHistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->e0(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.transfer.flow.transactions.expenseAccount.ExpenseAccountHistoryFragment$onPagingResult$1"
    f = "ExpenseAccountHistoryFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
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

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;",
            "Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

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

.method public static synthetic c(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lb76;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lb76;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 39
    .line 40
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->Q(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->Q(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 68
    .line 69
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lb76;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 74
    .line 75
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Lb76;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 87
    .line 88
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->P(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_1
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseLazyFragment;->getOnLoadingCallback()Lkotlin/jvm/functions/Function2;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 117
    .line 118
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 126
    .line 127
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseLazyFragment;->getOnLoadingCallback()Lkotlin/jvm/functions/Function2;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p1, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 143
    .line 144
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->Q(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_6

    .line 153
    .line 154
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 155
    .line 156
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lb76;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-static {p1, v1, v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 168
    .line 169
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_4

    .line 174
    .line 175
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 176
    .line 177
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseLazyFragment;->getOnLoadingCallback()Lkotlin/jvm/functions/Function2;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 193
    .line 194
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->Q(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionAdapter;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 205
    .line 206
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object p1, p1, Lb76;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 211
    .line 212
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 213
    .line 214
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_4
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 223
    .line 224
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-ne p1, v0, :cond_5

    .line 229
    .line 230
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 231
    .line 232
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->R(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Landroid/os/Handler;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 237
    .line 238
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/expenseAccount/a;

    .line 239
    .line 240
    invoke-direct {v3, v2}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/a;-><init>(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)V

    .line 241
    .line 242
    .line 243
    const-wide/16 v4, 0x1f4

    .line 244
    .line 245
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    .line 247
    .line 248
    :cond_5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 249
    .line 250
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseLazyFragment;->getOnLoadingCallback()Lkotlin/jvm/functions/Function2;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;

    .line 266
    .line 267
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;->O(Lteam/opay/business/transfer/flow/transactions/expenseAccount/ExpenseAccountHistoryFragment;)Lb76;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object p1, p1, Lb76;->c:Lteam/opay/core/widget/HttpViewGroup;

    .line 272
    .line 273
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 274
    .line 275
    .line 276
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 277
    .line 278
    return-object p1

    .line 279
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 282
    .line 283
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1
.end method
