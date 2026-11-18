.class public final Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;
.super Landroidx/paging/PagingSource;
.source "CashbackPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001%BE\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ*\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00122\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010H\u0096@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J%\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\"\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR$\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00030\u000bj\u0008\u0012\u0004\u0012\u00020\u0003`\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "Lyu;",
        "apiService",
        "Lteam/opay/business/transfer/flow/api/CashBackReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
        "wrapper",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "lastPagingItems",
        "<init>",
        "(Lyu;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)V",
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
        "Lteam/opay/business/transfer/flow/api/CashBackReq;",
        "d",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "e",
        "Ljava/util/ArrayList;",
        "",
        "f",
        "J",
        "lastItemId",
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
.field public static final g:Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lyu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/business/transfer/flow/api/CashBackReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/internal/PagingResultWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->g:Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lyu;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Lyu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/api/CashBackReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyu;",
            "Lteam/opay/business/transfer/flow/api/CashBackReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
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
    const-string v0, "lastPagingItems"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->b:Lyu;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->c:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->e:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackReq;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->f:J

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->j(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroidx/paging/PagingSource$LoadParams;Ljr2;)Ljava/lang/Object;
    .locals 21
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
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
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
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;

    .line 11
    .line 12
    iget v3, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;-><init>(Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;Ljr2;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v6, :cond_1

    .line 43
    .line 44
    iget v3, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->I$0:I

    .line 45
    .line 46
    iget-object v4, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    .line 49
    .line 50
    iget-object v2, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    move v7, v3

    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v4, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v4, 0x1

    .line 89
    :goto_1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 90
    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v9, "zhj CashbackPagingSource position "

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-static {v0, v8, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object v15, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 112
    .line 113
    new-instance v14, Lteam/opay/core/http/internal/PagingResult;

    .line 114
    .line 115
    sget-object v9, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 116
    .line 117
    const/4 v13, 0x6

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/4 v10, 0x0

    .line 121
    const/4 v11, 0x0

    .line 122
    move-object v8, v14

    .line 123
    move v12, v4

    .line 124
    move-object v6, v14

    .line 125
    move-object/from16 v14, v16

    .line 126
    .line 127
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v7, v6}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 131
    .line 132
    .line 133
    :try_start_1
    iget-object v6, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->c:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 134
    .line 135
    iget-wide v8, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->f:J

    .line 136
    .line 137
    invoke-virtual {v6, v8, v9}, Lteam/opay/business/transfer/flow/api/CashBackReq;->d(J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    invoke-static {v8}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v6, v8}, Lteam/opay/business/transfer/flow/api/CashBackReq;->e(Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    iget-object v6, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->c:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 152
    .line 153
    invoke-virtual {v6}, Lteam/opay/business/transfer/flow/api/CashBackReq;->a()J

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v10, "zhj CashbackPagingSource request.lastId "

    .line 163
    .line 164
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-static {v0, v6, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->b:Lyu;

    .line 178
    .line 179
    iget-object v6, v1, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->c:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 180
    .line 181
    iput-object v1, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 182
    .line 183
    move-object/from16 v8, p1

    .line 184
    .line 185
    iput-object v8, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 186
    .line 187
    iput v4, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->I$0:I

    .line 188
    .line 189
    const/4 v9, 0x1

    .line 190
    iput v9, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource$load$1;->label:I

    .line 191
    .line 192
    invoke-interface {v0, v6, v2}, Lyu;->r(Lteam/opay/business/transfer/flow/api/CashBackReq;Ljr2;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    if-ne v0, v3, :cond_4

    .line 197
    .line 198
    return-object v3

    .line 199
    :cond_4
    move-object v2, v1

    .line 200
    move v3, v4

    .line 201
    move-object v4, v8

    .line 202
    :goto_2
    :try_start_2
    check-cast v0, Lteam/opay/core/http/SuspendResponse;

    .line 203
    .line 204
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    const-string v8, "00000"

    .line 209
    .line 210
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_c

    .line 215
    .line 216
    new-instance v6, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v8, Lteam/opay/business/transfer/flow/api/CashBackRsp;

    .line 226
    .line 227
    if-eqz v8, :cond_8

    .line 228
    .line 229
    invoke-virtual {v8}, Lteam/opay/business/transfer/flow/api/CashBackRsp;->c()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    if-eqz v8, :cond_8

    .line 234
    .line 235
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-eqz v10, :cond_8

    .line 244
    .line 245
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    check-cast v10, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;

    .line 250
    .line 251
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    if-eqz v11, :cond_7

    .line 256
    .line 257
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    const/4 v12, 0x0

    .line 262
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-eqz v13, :cond_7

    .line 267
    .line 268
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    add-int/lit8 v14, v12, 0x1

    .line 273
    .line 274
    if-gez v12, :cond_5

    .line 275
    .line 276
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 277
    .line 278
    .line 279
    :cond_5
    check-cast v13, Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 280
    .line 281
    move-object/from16 p1, v8

    .line 282
    .line 283
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b()J

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    invoke-virtual {v13, v7, v8}, Lteam/opay/business/transfer/flow/api/CashBackItem;->o(J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v13, v7}, Lteam/opay/business/transfer/flow/api/CashBackItem;->n(Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c()Lteam/opay/core/common/amount/MoneyAmount;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v13, v7}, Lteam/opay/business/transfer/flow/api/CashBackItem;->p(Lteam/opay/core/common/amount/MoneyAmount;)V

    .line 302
    .line 303
    .line 304
    new-instance v7, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 305
    .line 306
    const/16 v19, 0x4

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const/16 v16, 0x2

    .line 311
    .line 312
    const/16 v18, 0x0

    .line 313
    .line 314
    move-object v15, v7

    .line 315
    move-object/from16 v17, v13

    .line 316
    .line 317
    invoke-direct/range {v15 .. v20}, Lteam/opay/business/transfer/flow/api/CashBackBean;-><init>(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    const/4 v8, 0x1

    .line 332
    sub-int/2addr v7, v8

    .line 333
    if-ne v12, v7, :cond_6

    .line 334
    .line 335
    invoke-virtual {v13}, Lteam/opay/business/transfer/flow/api/CashBackItem;->a()J

    .line 336
    .line 337
    .line 338
    move-result-wide v7

    .line 339
    iput-wide v7, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->f:J

    .line 340
    .line 341
    sget-object v12, Lkk8;->c:Lkk8;

    .line 342
    .line 343
    invoke-virtual {v10}, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d()Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object v13

    .line 347
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    new-instance v15, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v9, "zhj CashbackPagingSource lastId:"

    .line 357
    .line 358
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v7, " size:"

    .line 365
    .line 366
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    const/4 v8, 0x0

    .line 377
    invoke-static {v12, v7, v8, v5, v8}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :cond_6
    move-object/from16 v8, p1

    .line 381
    .line 382
    move v12, v14

    .line 383
    const/4 v7, 0x0

    .line 384
    goto :goto_4

    .line 385
    :cond_7
    move-object/from16 p1, v8

    .line 386
    .line 387
    move-object/from16 v8, p1

    .line 388
    .line 389
    const/4 v7, 0x0

    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_8
    sget-object v7, Lkk8;->c:Lkk8;

    .line 393
    .line 394
    new-instance v8, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    const-string v9, "zhj  CashbackPagingSource request success, page = "

    .line 400
    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    const/4 v9, 0x0

    .line 412
    invoke-static {v7, v8, v9, v5, v9}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 416
    .line 417
    .line 418
    move-result v15

    .line 419
    iget-object v8, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->c:Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 420
    .line 421
    invoke-virtual {v8}, Lteam/opay/business/transfer/flow/api/CashBackReq;->c()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    const-string v9, "Year"

    .line 426
    .line 427
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    if-eqz v8, :cond_9

    .line 432
    .line 433
    const/4 v8, 0x1

    .line 434
    if-ne v3, v8, :cond_9

    .line 435
    .line 436
    iget-object v8, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->e:Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-nez v8, :cond_9

    .line 443
    .line 444
    iget-object v8, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->e:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    const-string v10, "zhj CashbackPagingSource addAll "

    .line 456
    .line 457
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    const/4 v9, 0x0

    .line 468
    invoke-static {v7, v8, v9, v5, v9}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    iget-object v7, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->e:Ljava/util/ArrayList;

    .line 472
    .line 473
    const/4 v8, 0x0

    .line 474
    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 475
    .line 476
    .line 477
    :cond_9
    iget-object v7, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 478
    .line 479
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    new-instance v14, Lteam/opay/core/http/internal/PagingResult;

    .line 484
    .line 485
    sget-object v9, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 486
    .line 487
    const/4 v13, 0x4

    .line 488
    const/16 v16, 0x0

    .line 489
    .line 490
    const/4 v11, 0x0

    .line 491
    move-object v8, v14

    .line 492
    move-object v10, v6

    .line 493
    move v12, v3

    .line 494
    move-object v5, v14

    .line 495
    move-object/from16 v14, v16

    .line 496
    .line 497
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7, v0, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 501
    .line 502
    .line 503
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 504
    .line 505
    const/4 v5, 0x1

    .line 506
    if-ne v3, v5, :cond_a

    .line 507
    .line 508
    const/4 v5, 0x0

    .line 509
    goto :goto_5

    .line 510
    :cond_a
    add-int/lit8 v5, v3, -0x1

    .line 511
    .line 512
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    :goto_5
    invoke-virtual {v4}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-ge v15, v4, :cond_b

    .line 521
    .line 522
    const/4 v4, 0x0

    .line 523
    goto :goto_6

    .line 524
    :cond_b
    add-int/lit8 v4, v3, 0x1

    .line 525
    .line 526
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    :goto_6
    invoke-direct {v0, v6, v5, v4}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_9

    .line 534
    .line 535
    :cond_c
    new-instance v4, Lteam/opay/core/http/internal/PagingException;

    .line 536
    .line 537
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    const-string v6, ""

    .line 542
    .line 543
    if-nez v5, :cond_d

    .line 544
    .line 545
    move-object v5, v6

    .line 546
    :cond_d
    :try_start_3
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-nez v0, :cond_e

    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_e
    move-object v6, v0

    .line 554
    :goto_7
    invoke-direct {v4, v5, v6}, Lteam/opay/core/http/internal/PagingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v0, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 558
    .line 559
    new-instance v5, Lteam/opay/core/http/internal/PagingResult;

    .line 560
    .line 561
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 562
    .line 563
    const/4 v14, 0x6

    .line 564
    const/4 v15, 0x0

    .line 565
    const/4 v10, 0x0

    .line 566
    const/4 v11, 0x0

    .line 567
    move-object v8, v5

    .line 568
    move v12, v3

    .line 569
    move-object v13, v4

    .line 570
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 571
    .line 572
    .line 573
    const/4 v6, 0x0

    .line 574
    invoke-virtual {v0, v6, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 575
    .line 576
    .line 577
    sget-object v0, Lkk8;->c:Lkk8;

    .line 578
    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    const-string v6, "zhj CashbackPagingSource request failed, page = "

    .line 585
    .line 586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    const/4 v6, 0x2

    .line 597
    const/4 v7, 0x0

    .line 598
    invoke-static {v0, v5, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 602
    .line 603
    invoke-direct {v0, v4}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 604
    .line 605
    .line 606
    goto :goto_9

    .line 607
    :catch_1
    move-exception v0

    .line 608
    move-object v2, v1

    .line 609
    move v7, v4

    .line 610
    :goto_8
    sget-object v3, Lkk8;->c:Lkk8;

    .line 611
    .line 612
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 613
    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string v6, "zhj  CashbackPagingSource request exception, page = "

    .line 620
    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v6, " e="

    .line 628
    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v6, "  "

    .line 636
    .line 637
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    const/4 v6, 0x2

    .line 648
    const/4 v8, 0x0

    .line 649
    invoke-static {v3, v5, v8, v6, v8}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    if-eqz v4, :cond_f

    .line 653
    .line 654
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Invalid;

    .line 655
    .line 656
    invoke-direct {v0}, Landroidx/paging/PagingSource$LoadResult$Invalid;-><init>()V

    .line 657
    .line 658
    .line 659
    goto :goto_9

    .line 660
    :cond_f
    iget-object v2, v2, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 661
    .line 662
    new-instance v11, Lteam/opay/core/http/internal/PagingResult;

    .line 663
    .line 664
    sget-object v4, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 665
    .line 666
    const/4 v9, 0x6

    .line 667
    const/4 v10, 0x0

    .line 668
    const/4 v5, 0x0

    .line 669
    const/4 v6, 0x0

    .line 670
    move-object v3, v11

    .line 671
    move-object v8, v0

    .line 672
    invoke-direct/range {v3 .. v10}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 673
    .line 674
    .line 675
    const/4 v3, 0x0

    .line 676
    invoke-virtual {v2, v3, v11}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 677
    .line 678
    .line 679
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 680
    .line 681
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    .line 682
    .line 683
    .line 684
    move-object v0, v2

    .line 685
    :goto_9
    return-object v0
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
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
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
