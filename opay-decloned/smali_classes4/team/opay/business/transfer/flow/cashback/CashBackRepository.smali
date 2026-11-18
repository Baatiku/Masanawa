.class public final Lteam/opay/business/transfer/flow/cashback/CashBackRepository;
.super Ljava/lang/Object;
.source "CashBackViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JO\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00120\u00112\u0006\u0010\t\u001a\u00020\u00082\u0014\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000ej\u0008\u0012\u0004\u0012\u00020\u000c`\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/CashBackRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lyu;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lyu;)V",
        "Lteam/opay/business/transfer/flow/api/CashBackReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "wrapper",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "lastPagingItems",
        "Lv56;",
        "Landroidx/paging/PagingData;",
        "b",
        "(Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Lv56;",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "Lyu;",
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


# instance fields
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lyu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lyu;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->b:Lyu;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->c(Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->b:Lyu;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/cashback/CashbackPagingSource;-><init>(Lyu;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final b(Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/business/transfer/flow/api/CashBackReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CashBackReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "wrapper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lastPagingItems"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/paging/Pager;

    .line 17
    .line 18
    new-instance v10, Landroidx/paging/PagingConfig;

    .line 19
    .line 20
    const/16 v8, 0x30

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/16 v2, 0x14

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/16 v5, 0x14

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, v10

    .line 32
    invoke-direct/range {v1 .. v9}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lo22;

    .line 36
    .line 37
    invoke-direct {v4, p0, p1, p2, p3}, Lo22;-><init>(Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v1, v0

    .line 44
    move-object v2, v10

    .line 45
    invoke-direct/range {v1 .. v6}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/paging/Pager;->a()Lv56;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance p3, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;

    .line 53
    .line 54
    invoke-direct {p3, p2, p1}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository$getCashBackList$$inlined$map$1;-><init>(Lv56;Lteam/opay/business/transfer/flow/api/CashBackReq;)V

    .line 55
    .line 56
    .line 57
    return-object p3
.end method
