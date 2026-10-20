.class public final Lteam/opay/sme/store/branch/BranchPagingSource;
.super Landroidx/paging/PagingSource;
.source "BranchPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/branch/BranchPagingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lteam/opay/sme/store/api/BranchInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001dB-\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/BranchPagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lteam/opay/sme/store/api/BranchInfo;",
        "Llv;",
        "apiService",
        "Lteam/opay/sme/store/api/BranchsReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/sme/store/api/BranchsResp;",
        "wrapper",
        "<init>",
        "(Llv;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V",
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
        "Lteam/opay/sme/store/api/BranchsReq;",
        "d",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
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
.field public static final e:Lteam/opay/sme/store/branch/BranchPagingSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Llv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/sme/store/api/BranchsReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/internal/PagingResultWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/sme/store/api/BranchsResp;",
            "Lteam/opay/sme/store/api/BranchInfo;",
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
    new-instance v0, Lteam/opay/sme/store/branch/BranchPagingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/sme/store/branch/BranchPagingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/sme/store/branch/BranchPagingSource;->e:Lteam/opay/sme/store/branch/BranchPagingSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Llv;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V
    .locals 1
    .param p1    # Llv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/BranchsReq;
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
            "Llv;",
            "Lteam/opay/sme/store/api/BranchsReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/sme/store/api/BranchsResp;",
            "Lteam/opay/sme/store/api/BranchInfo;",
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
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchPagingSource;->b:Llv;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/sme/store/branch/BranchPagingSource;->c:Lteam/opay/sme/store/api/BranchsReq;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/sme/store/branch/BranchPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/branch/BranchPagingSource;->j(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroidx/paging/PagingSource$LoadParams;Ljr2;)Ljava/lang/Object;
    .locals 18
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
            "Lteam/opay/sme/store/api/BranchInfo;",
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
    instance-of v2, v0, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;

    .line 11
    .line 12
    iget v3, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->label:I

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
    iput v3, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;-><init>(Lteam/opay/sme/store/branch/BranchPagingSource;Ljr2;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    iget v3, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->I$0:I

    .line 44
    .line 45
    iget-object v4, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    .line 48
    .line 49
    iget-object v2, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lteam/opay/sme/store/branch/BranchPagingSource;

    .line 52
    .line 53
    :try_start_0
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move v12, v3

    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    invoke-static {v0}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->a()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    move v4, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v4, 0x1

    .line 87
    :goto_1
    iget-object v0, v1, Lteam/opay/sme/store/branch/BranchPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 88
    .line 89
    new-instance v15, Lteam/opay/core/http/internal/PagingResult;

    .line 90
    .line 91
    sget-object v9, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 92
    .line 93
    const/4 v13, 0x6

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    move-object v8, v15

    .line 98
    move v12, v4

    .line 99
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v7, v15}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 103
    .line 104
    .line 105
    :try_start_1
    iget-object v0, v1, Lteam/opay/sme/store/branch/BranchPagingSource;->c:Lteam/opay/sme/store/api/BranchsReq;

    .line 106
    .line 107
    invoke-virtual {v0, v4}, Lteam/opay/sme/store/api/BranchsReq;->c(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual {v0, v8}, Lteam/opay/sme/store/api/BranchsReq;->d(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v1, Lteam/opay/sme/store/branch/BranchPagingSource;->b:Llv;

    .line 118
    .line 119
    iget-object v8, v1, Lteam/opay/sme/store/branch/BranchPagingSource;->c:Lteam/opay/sme/store/api/BranchsReq;

    .line 120
    .line 121
    iput-object v1, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    move-object/from16 v9, p1

    .line 124
    .line 125
    iput-object v9, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    iput v4, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->I$0:I

    .line 128
    .line 129
    iput v6, v2, Lteam/opay/sme/store/branch/BranchPagingSource$load$1;->label:I

    .line 130
    .line 131
    invoke-interface {v0, v8, v2}, Llv;->z(Lteam/opay/sme/store/api/BranchsReq;Ljr2;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    if-ne v0, v3, :cond_4

    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_4
    move-object v2, v1

    .line 139
    move v3, v4

    .line 140
    move-object v4, v9

    .line 141
    :goto_2
    :try_start_2
    check-cast v0, Lteam/opay/core/http/SuspendResponse;

    .line 142
    .line 143
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    const-string v9, "00000"

    .line 148
    .line 149
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_9

    .line 154
    .line 155
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lteam/opay/sme/store/api/BranchsResp;

    .line 160
    .line 161
    if-eqz v8, :cond_5

    .line 162
    .line 163
    invoke-virtual {v8}, Lteam/opay/sme/store/api/BranchsResp;->e()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move-object v8, v7

    .line 169
    :goto_3
    if-nez v8, :cond_6

    .line 170
    .line 171
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    :cond_6
    move-object v15, v8

    .line 176
    iget-object v14, v2, Lteam/opay/sme/store/branch/BranchPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 177
    .line 178
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v13, Lteam/opay/core/http/internal/PagingResult;

    .line 183
    .line 184
    sget-object v9, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 185
    .line 186
    const/16 v16, 0x4

    .line 187
    .line 188
    const/16 v17, 0x0

    .line 189
    .line 190
    const/4 v11, 0x0

    .line 191
    move-object v8, v13

    .line 192
    move-object v10, v15

    .line 193
    move v12, v3

    .line 194
    move-object v6, v13

    .line 195
    move/from16 v13, v16

    .line 196
    .line 197
    move-object v5, v14

    .line 198
    move-object/from16 v14, v17

    .line 199
    .line 200
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5, v0, v6}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lzk8;->c:Lzk8;

    .line 207
    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v6, "request success, page = "

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const/4 v6, 0x2

    .line 226
    invoke-static {v0, v5, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 230
    .line 231
    const/4 v5, 0x1

    .line 232
    if-ne v3, v5, :cond_7

    .line 233
    .line 234
    move-object v5, v7

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    add-int/lit8 v5, v3, -0x1

    .line 237
    .line 238
    invoke-static {v5}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v4}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-ge v6, v4, :cond_8

    .line 251
    .line 252
    move-object v4, v7

    .line 253
    goto :goto_5

    .line 254
    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 255
    .line 256
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    :goto_5
    invoke-direct {v0, v15, v5, v4}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_8

    .line 264
    .line 265
    :cond_9
    new-instance v4, Lteam/opay/core/http/internal/PagingException;

    .line 266
    .line 267
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    const-string v6, ""

    .line 272
    .line 273
    if-nez v5, :cond_a

    .line 274
    .line 275
    move-object v5, v6

    .line 276
    :cond_a
    :try_start_3
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-nez v0, :cond_b

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_b
    move-object v6, v0

    .line 284
    :goto_6
    invoke-direct {v4, v5, v6}, Lteam/opay/core/http/internal/PagingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v2, Lteam/opay/sme/store/branch/BranchPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 288
    .line 289
    new-instance v5, Lteam/opay/core/http/internal/PagingResult;

    .line 290
    .line 291
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 292
    .line 293
    const/4 v14, 0x6

    .line 294
    const/4 v15, 0x0

    .line 295
    const/4 v10, 0x0

    .line 296
    const/4 v11, 0x0

    .line 297
    move-object v8, v5

    .line 298
    move v12, v3

    .line 299
    move-object v13, v4

    .line 300
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v7, v5}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Lzk8;->c:Lzk8;

    .line 307
    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v6, "request failed, page = "

    .line 314
    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    const/4 v6, 0x2

    .line 326
    invoke-static {v0, v5, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 330
    .line 331
    invoke-direct {v0, v4}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    .line 333
    .line 334
    goto :goto_8

    .line 335
    :catch_1
    move-exception v0

    .line 336
    move-object v2, v1

    .line 337
    move v12, v4

    .line 338
    :goto_7
    sget-object v3, Lzk8;->c:Lzk8;

    .line 339
    .line 340
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 341
    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v6, "request exception, page = "

    .line 348
    .line 349
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v6, " e="

    .line 356
    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v6, "  "

    .line 364
    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    const/4 v6, 0x2

    .line 376
    invoke-static {v3, v5, v7, v6, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    if-eqz v4, :cond_c

    .line 380
    .line 381
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Invalid;

    .line 382
    .line 383
    invoke-direct {v0}, Landroidx/paging/PagingSource$LoadResult$Invalid;-><init>()V

    .line 384
    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_c
    iget-object v2, v2, Lteam/opay/sme/store/branch/BranchPagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper2;

    .line 388
    .line 389
    new-instance v3, Lteam/opay/core/http/internal/PagingResult;

    .line 390
    .line 391
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 392
    .line 393
    const/4 v14, 0x6

    .line 394
    const/4 v15, 0x0

    .line 395
    const/4 v10, 0x0

    .line 396
    const/4 v11, 0x0

    .line 397
    move-object v8, v3

    .line 398
    move-object v13, v0

    .line 399
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v7, v3}, Lteam/opay/core/http/internal/PagingResultWrapper2;->a(Ljava/lang/Object;Lteam/opay/core/http/internal/PagingResult;)V

    .line 403
    .line 404
    .line 405
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 406
    .line 407
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    move-object v0, v2

    .line 411
    :goto_8
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
            "Lteam/opay/sme/store/api/BranchInfo;",
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
