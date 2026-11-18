.class public final Lteam/opay/sme/store/branch/pos/PosBindPagingSource;
.super Landroidx/paging/PagingSource;
.source "PosBindPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/branch/pos/PosBindPagingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lteam/opay/sme/store/api/BindingPosInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ*\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0096@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/pos/PosBindPagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lteam/opay/sme/store/api/BindingPosInfo;",
        "Llv;",
        "apiService",
        "Lteam/opay/sme/store/api/BranchSNReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "wrapper",
        "<init>",
        "(Llv;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V",
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
        "Llv;",
        "c",
        "Lteam/opay/sme/store/api/BranchSNReq;",
        "d",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "e",
        "Companion",
        "business-sme-store_release"
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
.field public static final e:Lteam/opay/sme/store/branch/pos/PosBindPagingSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Llv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/sme/store/api/BranchSNReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/internal/PagingResultWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
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
    new-instance v0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->e:Lteam/opay/sme/store/branch/pos/PosBindPagingSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Llv;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V
    .locals 1
    .param p1    # Llv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/BranchSNReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/http/internal/PagingResultWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llv;",
            "Lteam/opay/sme/store/api/BranchSNReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
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
    iput-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->b:Llv;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->c:Lteam/opay/sme/store/api/BranchSNReq;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->j(Landroidx/paging/PagingState;)Ljava/lang/Integer;

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
            "Lteam/opay/sme/store/api/BindingPosInfo;",
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
    instance-of v2, v0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;

    .line 11
    .line 12
    iget v3, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->label:I

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
    iput v3, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;-><init>(Lteam/opay/sme/store/branch/pos/PosBindPagingSource;Ljr2;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->label:I

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
    iget v3, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->I$0:I

    .line 45
    .line 46
    iget-object v4, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    .line 49
    .line 50
    iget-object v2, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move v12, v3

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->a()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Integer;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    move v4, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v4, 0x1

    .line 88
    :goto_1
    iget-object v0, v1, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 89
    .line 90
    new-instance v15, Lteam/opay/core/http/internal/PagingResult;

    .line 91
    .line 92
    sget-object v9, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 93
    .line 94
    const/4 v13, 0x6

    .line 95
    const/4 v14, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    move-object v8, v15

    .line 99
    move v12, v4

    .line 100
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v15}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 104
    .line 105
    .line 106
    :try_start_1
    iget-object v0, v1, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->c:Lteam/opay/sme/store/api/BranchSNReq;

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Lteam/opay/sme/store/api/BranchSNReq;->a(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    invoke-virtual {v0, v8}, Lteam/opay/sme/store/api/BranchSNReq;->b(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v1, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->b:Llv;

    .line 119
    .line 120
    iget-object v8, v1, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->c:Lteam/opay/sme/store/api/BranchSNReq;

    .line 121
    .line 122
    iput-object v1, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    move-object/from16 v9, p1

    .line 125
    .line 126
    iput-object v9, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 127
    .line 128
    iput v4, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->I$0:I

    .line 129
    .line 130
    iput v6, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource$load$1;->label:I

    .line 131
    .line 132
    invoke-interface {v0, v8, v2}, Llv;->d(Lteam/opay/sme/store/api/BranchSNReq;Ljr2;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    if-ne v0, v3, :cond_4

    .line 137
    .line 138
    return-object v3

    .line 139
    :cond_4
    move-object v2, v1

    .line 140
    move v3, v4

    .line 141
    move-object v4, v9

    .line 142
    :goto_2
    :try_start_2
    check-cast v0, Lteam/opay/core/http/SuspendResponse;

    .line 143
    .line 144
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const-string v9, "00000"

    .line 149
    .line 150
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_9

    .line 155
    .line 156
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lteam/opay/sme/store/api/BranchSNResp;

    .line 161
    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchSNResp;->a()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    move-object v0, v7

    .line 170
    :goto_3
    if-nez v0, :cond_6

    .line 171
    .line 172
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_6
    iget-object v15, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 177
    .line 178
    new-instance v14, Lteam/opay/core/http/internal/PagingResult;

    .line 179
    .line 180
    sget-object v9, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 181
    .line 182
    const/4 v13, 0x4

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const/4 v11, 0x0

    .line 186
    move-object v8, v14

    .line 187
    move-object v10, v0

    .line 188
    move v12, v3

    .line 189
    move-object v6, v14

    .line 190
    move-object/from16 v14, v16

    .line 191
    .line 192
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v15, v6}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 196
    .line 197
    .line 198
    sget-object v6, Lzk8;->c:Lzk8;

    .line 199
    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v9, "request success, page = "

    .line 206
    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v6, v8, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-instance v6, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 221
    .line 222
    const/4 v8, 0x1

    .line 223
    if-ne v3, v8, :cond_7

    .line 224
    .line 225
    move-object v8, v7

    .line 226
    goto :goto_4

    .line 227
    :cond_7
    add-int/lit8 v8, v3, -0x1

    .line 228
    .line 229
    invoke-static {v8}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    invoke-virtual {v4}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-ge v9, v4, :cond_8

    .line 242
    .line 243
    move-object v4, v7

    .line 244
    goto :goto_5

    .line 245
    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 246
    .line 247
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    :goto_5
    invoke-direct {v6, v0, v8, v4}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_8

    .line 255
    .line 256
    :cond_9
    new-instance v4, Lteam/opay/core/http/internal/PagingException;

    .line 257
    .line 258
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    const-string v8, ""

    .line 263
    .line 264
    if-nez v6, :cond_a

    .line 265
    .line 266
    move-object v6, v8

    .line 267
    :cond_a
    :try_start_3
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-nez v0, :cond_b

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_b
    move-object v8, v0

    .line 275
    :goto_6
    invoke-direct {v4, v6, v8}, Lteam/opay/core/http/internal/PagingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 279
    .line 280
    new-instance v6, Lteam/opay/core/http/internal/PagingResult;

    .line 281
    .line 282
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 283
    .line 284
    const/4 v14, 0x6

    .line 285
    const/4 v15, 0x0

    .line 286
    const/4 v10, 0x0

    .line 287
    const/4 v11, 0x0

    .line 288
    move-object v8, v6

    .line 289
    move v12, v3

    .line 290
    move-object v13, v4

    .line 291
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v6}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 295
    .line 296
    .line 297
    sget-object v0, Lzk8;->c:Lzk8;

    .line 298
    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v8, "request failed, page = "

    .line 305
    .line 306
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-static {v0, v6, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    new-instance v6, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 320
    .line 321
    invoke-direct {v6, v4}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 322
    .line 323
    .line 324
    goto :goto_8

    .line 325
    :catch_1
    move-exception v0

    .line 326
    move-object v2, v1

    .line 327
    move v12, v4

    .line 328
    :goto_7
    sget-object v3, Lzk8;->c:Lzk8;

    .line 329
    .line 330
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 331
    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v8, "request exception, page = "

    .line 338
    .line 339
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v8, " e="

    .line 346
    .line 347
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v8, "  "

    .line 354
    .line 355
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-static {v3, v6, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    if-eqz v4, :cond_c

    .line 369
    .line 370
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Invalid;

    .line 371
    .line 372
    invoke-direct {v0}, Landroidx/paging/PagingSource$LoadResult$Invalid;-><init>()V

    .line 373
    .line 374
    .line 375
    move-object v6, v0

    .line 376
    goto :goto_8

    .line 377
    :cond_c
    iget-object v2, v2, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 378
    .line 379
    new-instance v3, Lteam/opay/core/http/internal/PagingResult;

    .line 380
    .line 381
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 382
    .line 383
    const/4 v14, 0x6

    .line 384
    const/4 v15, 0x0

    .line 385
    const/4 v10, 0x0

    .line 386
    const/4 v11, 0x0

    .line 387
    move-object v8, v3

    .line 388
    move-object v13, v0

    .line 389
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v3}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 393
    .line 394
    .line 395
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 396
    .line 397
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    move-object v6, v2

    .line 401
    :goto_8
    return-object v6
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
            "Lteam/opay/sme/store/api/BindingPosInfo;",
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
