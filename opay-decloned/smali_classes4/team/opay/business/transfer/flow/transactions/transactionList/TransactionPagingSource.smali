.class public final Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;
.super Landroidx/paging/PagingSource;
.source "TransactionPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001dB-\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "Lyu;",
        "apiService",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
        "wrapper",
        "<init>",
        "(Lyu;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V",
        "Landroidx/paging/PagingSource$LoadParams;",
        "params",
        "Landroidx/paging/PagingSource$LoadResult;",
        "g",
        "(Landroidx/paging/PagingSource$LoadParams;Ljr2;)Ljava/lang/Object;",
        "Landroidx/paging/PagingState;",
        "state",
        "j",
        "(Landroidx/paging/PagingState;)Ljava/lang/Integer;",
        "b",
        "Lyu;",
        "c",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "d",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "e",
        "Companion",
        "business-transfer-flow_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lyu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/business/transfer/flow/api/TransactionsReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/internal/PagingResultWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->e:Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lyu;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V
    .locals 1
    .param p1    # Lyu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/api/TransactionsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyu;",
            "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "apiService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "wrapper"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->b:Lyu;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->c:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->j(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroidx/paging/PagingSource$LoadParams;Ljr2;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroidx/paging/PagingSource$LoadParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource$LoadParams<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljr2<",
            "-",
            "Landroidx/paging/PagingSource$LoadResult<",
            "Ljava/lang/Integer;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;

    .line 13
    .line 14
    iget v4, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;Ljr2;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x1

    .line 41
    const/4 v8, 0x0

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    if-eq v5, v7, :cond_2

    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    iget v4, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->I$0:I

    .line 49
    .line 50
    iget-object v0, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/paging/PagingSource$LoadParams;

    .line 53
    .line 54
    iget-object v3, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;

    .line 57
    .line 58
    :try_start_0
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    move v13, v4

    .line 65
    goto/16 :goto_b

    .line 66
    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    iget v4, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->I$0:I

    .line 76
    .line 77
    iget-object v0, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Landroidx/paging/PagingSource$LoadParams;

    .line 80
    .line 81
    iget-object v3, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;

    .line 84
    .line 85
    :try_start_1
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-static {v2}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->a()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Integer;

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const/4 v2, 0x1

    .line 106
    :goto_1
    iget-object v5, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 107
    .line 108
    new-instance v15, Lteam/opay/core/http/internal/PagingResult;

    .line 109
    .line 110
    sget-object v10, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 111
    .line 112
    const/4 v14, 0x6

    .line 113
    const/16 v16, 0x0

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    move-object v9, v15

    .line 118
    move v13, v2

    .line 119
    move-object v6, v15

    .line 120
    move-object/from16 v15, v16

    .line 121
    .line 122
    invoke-direct/range {v9 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v8, v6}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 126
    .line 127
    .line 128
    :try_start_2
    iget-object v5, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->c:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->m(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    invoke-virtual {v5, v6}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->n(I)V

    .line 138
    .line 139
    .line 140
    iget-object v5, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->c:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 141
    .line 142
    invoke-virtual {v5}, Lteam/opay/business/transfer/flow/api/TransactionsReq;->b()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_6

    .line 147
    .line 148
    iget-object v5, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->b:Lyu;

    .line 149
    .line 150
    iget-object v6, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->c:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 151
    .line 152
    iput-object v1, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v0, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 155
    .line 156
    iput v2, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->I$0:I

    .line 157
    .line 158
    iput v7, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->label:I

    .line 159
    .line 160
    invoke-interface {v5, v6, v3}, Lyu;->d(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    if-ne v3, v4, :cond_5

    .line 165
    .line 166
    return-object v4

    .line 167
    :cond_5
    move v4, v2

    .line 168
    move-object v2, v3

    .line 169
    move-object v3, v1

    .line 170
    :goto_2
    :try_start_3
    check-cast v2, Lteam/opay/core/http/SuspendResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catch_1
    move-exception v0

    .line 174
    move-object v3, v1

    .line 175
    move v13, v2

    .line 176
    goto/16 :goto_b

    .line 177
    .line 178
    :cond_6
    :try_start_4
    iget-object v5, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->b:Lyu;

    .line 179
    .line 180
    iget-object v6, v1, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->c:Lteam/opay/business/transfer/flow/api/TransactionsReq;

    .line 181
    .line 182
    iput-object v1, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v0, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    iput v2, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->I$0:I

    .line 187
    .line 188
    const/4 v9, 0x2

    .line 189
    iput v9, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource$load$1;->label:I

    .line 190
    .line 191
    invoke-interface {v5, v6, v3}, Lyu;->a(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 195
    if-ne v3, v4, :cond_7

    .line 196
    .line 197
    return-object v4

    .line 198
    :cond_7
    move v4, v2

    .line 199
    move-object v2, v3

    .line 200
    move-object v3, v1

    .line 201
    :goto_3
    :try_start_5
    check-cast v2, Lteam/opay/core/http/SuspendResponse;

    .line 202
    .line 203
    :goto_4
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const-string v6, "00000"

    .line 208
    .line 209
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_f

    .line 214
    .line 215
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    check-cast v5, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 220
    .line 221
    if-eqz v5, :cond_a

    .line 222
    .line 223
    invoke-virtual {v5}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->c()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    new-instance v6, Ljava/util/ArrayList;

    .line 230
    .line 231
    const/16 v9, 0xa

    .line 232
    .line 233
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_b

    .line 249
    .line 250
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, Lteam/opay/business/transfer/flow/api/TransactionInfo;

    .line 255
    .line 256
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    check-cast v10, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 261
    .line 262
    if-eqz v10, :cond_8

    .line 263
    .line 264
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->a()Ljava/lang/Boolean;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    goto :goto_6

    .line 269
    :cond_8
    move-object v10, v8

    .line 270
    :goto_6
    invoke-virtual {v9, v10}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->setShowInAmount(Ljava/lang/Boolean;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    check-cast v10, Lteam/opay/business/transfer/flow/api/TransactionsResp;

    .line 278
    .line 279
    if-eqz v10, :cond_9

    .line 280
    .line 281
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/TransactionsResp;->b()Ljava/lang/Boolean;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    goto :goto_7

    .line 286
    :cond_9
    move-object v10, v8

    .line 287
    :goto_7
    invoke-virtual {v9, v10}, Lteam/opay/business/transfer/flow/api/TransactionInfo;->setShowOutAmount(Ljava/lang/Boolean;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_a
    move-object v6, v8

    .line 295
    :cond_b
    if-nez v6, :cond_c

    .line 296
    .line 297
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    :cond_c
    iget-object v5, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 302
    .line 303
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    new-instance v15, Lteam/opay/core/http/internal/PagingResult;

    .line 308
    .line 309
    sget-object v10, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 310
    .line 311
    const/4 v14, 0x4

    .line 312
    const/16 v16, 0x0

    .line 313
    .line 314
    const/4 v12, 0x0

    .line 315
    move-object v9, v15

    .line 316
    move-object v11, v6

    .line 317
    move v13, v4

    .line 318
    move-object v7, v15

    .line 319
    move-object/from16 v15, v16

    .line 320
    .line 321
    invoke-direct/range {v9 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v2, v7}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 325
    .line 326
    .line 327
    sget-object v2, Lkk8;->c:Lkk8;

    .line 328
    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v7, "request success, page = "

    .line 335
    .line 336
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    const/4 v7, 0x2

    .line 347
    invoke-static {v2, v5, v8, v7, v8}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 351
    .line 352
    const/4 v5, 0x1

    .line 353
    if-ne v4, v5, :cond_d

    .line 354
    .line 355
    move-object v5, v8

    .line 356
    goto :goto_8

    .line 357
    :cond_d
    add-int/lit8 v5, v4, -0x1

    .line 358
    .line 359
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    invoke-virtual {v0}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-ge v7, v0, :cond_e

    .line 372
    .line 373
    move-object v0, v8

    .line 374
    goto :goto_9

    .line 375
    :cond_e
    add-int/lit8 v0, v4, 0x1

    .line 376
    .line 377
    invoke-static {v0}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_9
    invoke-direct {v2, v6, v5, v0}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_c

    .line 385
    .line 386
    :cond_f
    new-instance v0, Lteam/opay/core/http/internal/PagingException;

    .line 387
    .line 388
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 392
    const-string v6, ""

    .line 393
    .line 394
    if-nez v5, :cond_10

    .line 395
    .line 396
    move-object v5, v6

    .line 397
    :cond_10
    :try_start_6
    invoke-virtual {v2}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    if-nez v2, :cond_11

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_11
    move-object v6, v2

    .line 405
    :goto_a
    invoke-direct {v0, v5, v6}, Lteam/opay/core/http/internal/PagingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v2, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 409
    .line 410
    new-instance v5, Lteam/opay/core/http/internal/PagingResult;

    .line 411
    .line 412
    sget-object v10, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 413
    .line 414
    const/4 v15, 0x6

    .line 415
    const/16 v16, 0x0

    .line 416
    .line 417
    const/4 v11, 0x0

    .line 418
    const/4 v12, 0x0

    .line 419
    move-object v9, v5

    .line 420
    move v13, v4

    .line 421
    move-object v14, v0

    .line 422
    invoke-direct/range {v9 .. v16}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v8, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 426
    .line 427
    .line 428
    sget-object v2, Lkk8;->c:Lkk8;

    .line 429
    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v6, "request failed, page = "

    .line 436
    .line 437
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    const/4 v6, 0x2

    .line 448
    invoke-static {v2, v5, v8, v6, v8}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 452
    .line 453
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 454
    .line 455
    .line 456
    goto :goto_c

    .line 457
    :goto_b
    sget-object v2, Lkk8;->c:Lkk8;

    .line 458
    .line 459
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 460
    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    const-string v6, "request exception, page = "

    .line 467
    .line 468
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v6, " e="

    .line 475
    .line 476
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v6, "  "

    .line 483
    .line 484
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    const/4 v6, 0x2

    .line 495
    invoke-static {v2, v5, v8, v6, v8}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    if-eqz v4, :cond_12

    .line 499
    .line 500
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Invalid;

    .line 501
    .line 502
    invoke-direct {v0}, Landroidx/paging/PagingSource$LoadResult$Invalid;-><init>()V

    .line 503
    .line 504
    .line 505
    move-object v2, v0

    .line 506
    goto :goto_c

    .line 507
    :cond_12
    iget-object v2, v3, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 508
    .line 509
    new-instance v3, Lteam/opay/core/http/internal/PagingResult;

    .line 510
    .line 511
    sget-object v10, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 512
    .line 513
    const/4 v15, 0x6

    .line 514
    const/16 v16, 0x0

    .line 515
    .line 516
    const/4 v11, 0x0

    .line 517
    const/4 v12, 0x0

    .line 518
    move-object v9, v3

    .line 519
    move-object v14, v0

    .line 520
    invoke-direct/range {v9 .. v16}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v8, v3}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 524
    .line 525
    .line 526
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 527
    .line 528
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    .line 529
    .line 530
    .line 531
    :goto_c
    return-object v2
.end method

.method public j(Landroidx/paging/PagingState;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Landroidx/paging/PagingState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "Ljava/lang/Integer;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/paging/PagingState;->d()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/paging/PagingState;->c(I)Landroidx/paging/PagingSource$LoadResult$Page;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->g()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    return-object v1
.end method
