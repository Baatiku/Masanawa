.class final Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EODDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->X(Lteam/opay/business/transfer/flow/api/TransactionsResp;Lteam/opay/core/http/internal/PagingResult;)V
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
    c = "team.opay.business.transfer.flow.transactions.eod.EODDetailsFragment$onPagingResult$1"
    f = "EODDetailsFragment.kt"
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

.field final synthetic this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;


# direct methods
.method public constructor <init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/http/internal/PagingResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

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

.method public static synthetic c(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->invokeSuspend$lambda$0(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lz66;->g:Landroidx/recyclerview/widget/RecyclerView;

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
    new-instance p1, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;-><init>(Lteam/opay/core/http/internal/PagingResult;Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lz66;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lz66;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 50
    .line 51
    invoke-static {v1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODTransactionAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->h()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODTransactionAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p1, p1, Lz66;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 85
    .line 86
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 90
    .line 91
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lz66;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 98
    .line 99
    invoke-static {v0}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->L(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lteam/opay/business/transfer/flow/transactions/transactionList/HolderTransactionAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->f()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 116
    .line 117
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODTransactionAdapter;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 128
    .line 129
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p1, p1, Lz66;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-static {p1, v1, v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->s(Lteam/opay/core/widget/HttpViewGroup;Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 141
    .line 142
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->g()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 149
    .line 150
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->N(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lteam/opay/business/transfer/flow/transactions/eod/EODTransactionAdapter;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_4

    .line 159
    .line 160
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 161
    .line 162
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->K(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Lz66;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Lz66;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 167
    .line 168
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 169
    .line 170
    invoke-virtual {v0}, Lteam/opay/core/http/internal/PagingResult;->a()Lteam/opay/core/http/arch/ApiError;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/HttpViewGroup;->u(Lteam/opay/core/http/arch/ApiError;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->$result:Lteam/opay/core/http/internal/PagingResult;

    .line 179
    .line 180
    invoke-virtual {p1}, Lteam/opay/core/http/internal/PagingResult;->d()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-ne p1, v0, :cond_4

    .line 185
    .line 186
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 187
    .line 188
    invoke-static {p1}, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;->M(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)Landroid/os/Handler;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment$onPagingResult$1;->this$0:Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;

    .line 193
    .line 194
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/eod/a;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Lteam/opay/business/transfer/flow/transactions/eod/a;-><init>(Lteam/opay/business/transfer/flow/transactions/eod/EODDetailsFragment;)V

    .line 197
    .line 198
    .line 199
    const-wide/16 v2, 0x1f4

    .line 200
    .line 201
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object p1

    .line 207
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 210
    .line 211
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1
.end method
