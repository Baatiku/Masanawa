.class public final Lteam/opay/business/payroll/employee/EmployeePagingSource;
.super Landroidx/paging/PagingSource;
.source "EmployeePagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/employee/EmployeePagingSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lteam/opay/business/payroll/api/EmployeeInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001cB%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ*\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0096@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/business/payroll/employee/EmployeePagingSource;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lteam/opay/business/payroll/api/EmployeeInfo;",
        "Lrv;",
        "apiService",
        "Lteam/opay/business/payroll/api/EmployeesReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "wrapper",
        "<init>",
        "(Lrv;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V",
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
        "Lrv;",
        "c",
        "Lteam/opay/business/payroll/api/EmployeesReq;",
        "d",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "e",
        "Companion",
        "business-payroll_release"
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
.field public static final e:Lteam/opay/business/payroll/employee/EmployeePagingSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lrv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/business/payroll/api/EmployeesReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/http/internal/PagingResultWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
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
    new-instance v0, Lteam/opay/business/payroll/employee/EmployeePagingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/payroll/employee/EmployeePagingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/payroll/employee/EmployeePagingSource;->e:Lteam/opay/business/payroll/employee/EmployeePagingSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lrv;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V
    .locals 1
    .param p1    # Lrv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/payroll/api/EmployeesReq;
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
            "Lrv;",
            "Lteam/opay/business/payroll/api/EmployeesReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
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
    iput-object p1, p0, Lteam/opay/business/payroll/employee/EmployeePagingSource;->b:Lrv;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/business/payroll/employee/EmployeePagingSource;->c:Lteam/opay/business/payroll/api/EmployeesReq;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/business/payroll/employee/EmployeePagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/payroll/employee/EmployeePagingSource;->j(Landroidx/paging/PagingState;)Ljava/lang/Integer;

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
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
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
    instance-of v2, v0, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;

    .line 11
    .line 12
    iget v3, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->label:I

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
    iput v3, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;-><init>(Lteam/opay/business/payroll/employee/EmployeePagingSource;Ljr2;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->label:I

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
    iget v3, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->I$0:I

    .line 45
    .line 46
    iget-object v4, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    .line 49
    .line 50
    iget-object v2, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lteam/opay/business/payroll/employee/EmployeePagingSource;

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
    goto/16 :goto_8

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
    iget-object v0, v1, Lteam/opay/business/payroll/employee/EmployeePagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

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
    iget-object v0, v1, Lteam/opay/business/payroll/employee/EmployeePagingSource;->c:Lteam/opay/business/payroll/api/EmployeesReq;

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Lteam/opay/business/payroll/api/EmployeesReq;->d(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v1, Lteam/opay/business/payroll/employee/EmployeePagingSource;->b:Lrv;

    .line 112
    .line 113
    iget-object v8, v1, Lteam/opay/business/payroll/employee/EmployeePagingSource;->c:Lteam/opay/business/payroll/api/EmployeesReq;

    .line 114
    .line 115
    iput-object v1, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    move-object/from16 v9, p1

    .line 118
    .line 119
    iput-object v9, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->L$1:Ljava/lang/Object;

    .line 120
    .line 121
    iput v4, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->I$0:I

    .line 122
    .line 123
    iput v6, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource$load$1;->label:I

    .line 124
    .line 125
    invoke-interface {v0, v8, v2}, Lrv;->g(Lteam/opay/business/payroll/api/EmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    if-ne v0, v3, :cond_4

    .line 130
    .line 131
    return-object v3

    .line 132
    :cond_4
    move-object v2, v1

    .line 133
    move v3, v4

    .line 134
    move-object v4, v9

    .line 135
    :goto_2
    :try_start_2
    check-cast v0, Lteam/opay/core/http/SuspendResponse;

    .line 136
    .line 137
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    const-string v9, "00000"

    .line 142
    .line 143
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_a

    .line 148
    .line 149
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->b()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lteam/opay/business/payroll/api/EmployeesResp;

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/EmployeesResp;->a()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move-object v0, v7

    .line 163
    :goto_3
    if-nez v0, :cond_6

    .line 164
    .line 165
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :cond_6
    move-object v10, v0

    .line 170
    iget-object v0, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource;->c:Lteam/opay/business/payroll/api/EmployeesReq;

    .line 171
    .line 172
    invoke-virtual {v0}, Lteam/opay/business/payroll/api/EmployeesReq;->a()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v8, "1"

    .line 177
    .line 178
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    const/4 v0, 0x3

    .line 185
    invoke-static {v10, v0}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_4

    .line 190
    :cond_7
    move-object v0, v10

    .line 191
    :goto_4
    iget-object v15, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 192
    .line 193
    new-instance v14, Lteam/opay/core/http/internal/PagingResult;

    .line 194
    .line 195
    sget-object v9, Lteam/opay/core/http/arch/Status;->SUCCESS:Lteam/opay/core/http/arch/Status;

    .line 196
    .line 197
    const/4 v13, 0x4

    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    move-object v8, v14

    .line 202
    move v12, v3

    .line 203
    move-object v6, v14

    .line 204
    move-object/from16 v14, v16

    .line 205
    .line 206
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v15, v6}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 210
    .line 211
    .line 212
    sget-object v6, Ljl8;->c:Ljl8;

    .line 213
    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v9, "request success, page = "

    .line 220
    .line 221
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-static {v6, v8, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    new-instance v6, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 235
    .line 236
    const/4 v8, 0x1

    .line 237
    if-ne v3, v8, :cond_8

    .line 238
    .line 239
    move-object v8, v7

    .line 240
    goto :goto_5

    .line 241
    :cond_8
    add-int/lit8 v8, v3, -0x1

    .line 242
    .line 243
    invoke-static {v8}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    invoke-virtual {v4}, Landroidx/paging/PagingSource$LoadParams;->b()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-ge v9, v4, :cond_9

    .line 256
    .line 257
    move-object v4, v7

    .line 258
    goto :goto_6

    .line 259
    :cond_9
    add-int/lit8 v4, v3, 0x1

    .line 260
    .line 261
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    :goto_6
    invoke-direct {v6, v0, v8, v4}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :cond_a
    new-instance v4, Lteam/opay/core/http/internal/PagingException;

    .line 271
    .line 272
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->a()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    const-string v8, ""

    .line 277
    .line 278
    if-nez v6, :cond_b

    .line 279
    .line 280
    move-object v6, v8

    .line 281
    :cond_b
    :try_start_3
    invoke-virtual {v0}, Lteam/opay/core/http/SuspendResponse;->c()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-nez v0, :cond_c

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_c
    move-object v8, v0

    .line 289
    :goto_7
    invoke-direct {v4, v6, v8}, Lteam/opay/core/http/internal/PagingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 293
    .line 294
    new-instance v6, Lteam/opay/core/http/internal/PagingResult;

    .line 295
    .line 296
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 297
    .line 298
    const/4 v14, 0x6

    .line 299
    const/4 v15, 0x0

    .line 300
    const/4 v10, 0x0

    .line 301
    const/4 v11, 0x0

    .line 302
    move-object v8, v6

    .line 303
    move v12, v3

    .line 304
    move-object v13, v4

    .line 305
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v6}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, Ljl8;->c:Ljl8;

    .line 312
    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v8, "request failed, page = "

    .line 319
    .line 320
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-static {v0, v6, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    new-instance v6, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 334
    .line 335
    invoke-direct {v6, v4}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :catch_1
    move-exception v0

    .line 340
    move-object v2, v1

    .line 341
    move v12, v4

    .line 342
    :goto_8
    sget-object v3, Ljl8;->c:Ljl8;

    .line 343
    .line 344
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    .line 345
    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v8, "request exception, page = "

    .line 352
    .line 353
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v8, " e="

    .line 360
    .line 361
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v8, "  "

    .line 368
    .line 369
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-static {v3, v6, v7, v5, v7}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    if-eqz v4, :cond_d

    .line 383
    .line 384
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Invalid;

    .line 385
    .line 386
    invoke-direct {v0}, Landroidx/paging/PagingSource$LoadResult$Invalid;-><init>()V

    .line 387
    .line 388
    .line 389
    move-object v6, v0

    .line 390
    goto :goto_9

    .line 391
    :cond_d
    iget-object v2, v2, Lteam/opay/business/payroll/employee/EmployeePagingSource;->d:Lteam/opay/core/http/internal/PagingResultWrapper;

    .line 392
    .line 393
    new-instance v3, Lteam/opay/core/http/internal/PagingResult;

    .line 394
    .line 395
    sget-object v9, Lteam/opay/core/http/arch/Status;->ERROR:Lteam/opay/core/http/arch/Status;

    .line 396
    .line 397
    const/4 v14, 0x6

    .line 398
    const/4 v15, 0x0

    .line 399
    const/4 v10, 0x0

    .line 400
    const/4 v11, 0x0

    .line 401
    move-object v8, v3

    .line 402
    move-object v13, v0

    .line 403
    invoke-direct/range {v8 .. v15}, Lteam/opay/core/http/internal/PagingResult;-><init>(Lteam/opay/core/http/arch/Status;Ljava/util/List;Ljava/lang/String;ILjava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v3}, Lteam/opay/core/http/internal/PagingResultWrapper;->a(Lteam/opay/core/http/internal/PagingResult;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 410
    .line 411
    invoke-direct {v2, v0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    move-object v6, v2

    .line 415
    :goto_9
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
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
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
