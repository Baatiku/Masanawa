.class public final Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "CashBackViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJK\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00140\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u0014\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00110\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\"\u0010/\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R2\u00108\u001a\u0012\u0012\u0004\u0012\u00020\u001100j\u0008\u0012\u0004\u0012\u00020\u0011`18\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/business/transfer/flow/cashback/CashBackRepository;",
        "repository",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Landroidx/lifecycle/SavedStateHandle;)V",
        "",
        "operationType",
        "",
        "isDividerFirstPage",
        "searchDateType",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "wrapper",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/paging/PagingData;",
        "r",
        "(Ljava/lang/String;ZLjava/lang/String;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/business/transfer/flow/cashback/CashBackRepository;",
        "d",
        "Landroidx/lifecycle/SavedStateHandle;",
        "",
        "e",
        "J",
        "getLastId",
        "()J",
        "u",
        "(J)V",
        "lastId",
        "",
        "f",
        "I",
        "pageSize",
        "g",
        "Ljava/lang/String;",
        "s",
        "()Ljava/lang/String;",
        "setCurrentSearchDateType",
        "(Ljava/lang/String;)V",
        "currentSearchDateType",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "h",
        "Ljava/util/ArrayList;",
        "t",
        "()Ljava/util/ArrayList;",
        "setLastPagingItems",
        "(Ljava/util/ArrayList;)V",
        "lastPagingItems",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/business/transfer/flow/cashback/CashBackRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:J

.field public final f:I

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/business/transfer/flow/cashback/CashBackRepository;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/cashback/CashBackRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "savedStateHandle"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->b:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->c:Lteam/opay/business/transfer/flow/cashback/CashBackRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->d:Landroidx/lifecycle/SavedStateHandle;

    .line 24
    .line 25
    const/16 p1, 0x14

    .line 26
    .line 27
    iput p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->f:I

    .line 28
    .line 29
    const-string p1, "Month"

    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->g:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->h:Ljava/util/ArrayList;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;ZLjava/lang/String;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/CashBackRsp;",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v6, p3

    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    const-string v1, "operationType"

    .line 6
    .line 7
    move-object v4, p1

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "searchDateType"

    .line 12
    .line 13
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "wrapper"

    .line 17
    .line 18
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v6, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->g:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string v1, "Month"

    .line 26
    .line 27
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    iput-wide v1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->e:J

    .line 36
    .line 37
    :cond_0
    sget-object v1, Lkk8;->c:Lkk8;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "zhj getCashBackList withInThreeMonth ==="

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x2

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static {v1, v2, v5, v3, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v11, Lteam/opay/business/transfer/flow/api/CashBackReq;

    .line 62
    .line 63
    iget-wide v2, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->e:J

    .line 64
    .line 65
    iget v1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->f:I

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/16 v8, 0x10

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    move-object v1, v11

    .line 76
    move-object v4, p1

    .line 77
    move-object v6, p3

    .line 78
    invoke-direct/range {v1 .. v9}, Lteam/opay/business/transfer/flow/api/CashBackReq;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->c:Lteam/opay/business/transfer/flow/cashback/CashBackRepository;

    .line 82
    .line 83
    iget-object v2, v0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->h:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1, v11, v10, v2}, Lteam/opay/business/transfer/flow/cashback/CashBackRepository;->b(Lteam/opay/business/transfer/flow/api/CashBackReq;Lteam/opay/core/http/internal/PagingResultWrapper2;Ljava/util/ArrayList;)Lv56;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const/4 v7, 0x3

    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v4, 0x0

    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->c(Lv56;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    return-object v1
.end method

.method public final s()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/business/transfer/flow/api/CashBackBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/transfer/flow/cashback/CashBackViewModel;->e:J

    .line 2
    .line 3
    return-void
.end method
