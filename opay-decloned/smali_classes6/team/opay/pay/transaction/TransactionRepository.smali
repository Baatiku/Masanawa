.class public final Lteam/opay/pay/transaction/TransactionRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "TransactionRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u000b0\n2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/transaction/TransactionRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/transaction/TransactionWebService;",
        "transactionWebService",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "filter",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transaction/TransactionWebService;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/transaction/TransactionTypesBean;",
        "f",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "serviceType",
        "Lteam/opay/core/api/graphql/CashIOConfigBean;",
        "e",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transaction/TransactionsInput;",
        "request",
        "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
        "h",
        "(Lteam/opay/pay/transaction/TransactionsInput;)Landroidx/lifecycle/LiveData;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lteam/opay/pay/transaction/TransactionWebService;",
        "g",
        "()Lteam/opay/pay/transaction/TransactionWebService;",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "getFilter",
        "()Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "setFilter",
        "(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "sdk_release"
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
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/transaction/TransactionWebService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transaction/TransactionWebService;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/TransactionWebService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
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
    const-string v0, "transactionWebService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "filter"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/transaction/TransactionRepository;->e:Lteam/opay/pay/transaction/TransactionWebService;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/transaction/TransactionRepository;->f:Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/CashIOConfigBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serviceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transaction/TransactionRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transaction/TransactionRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transaction/TransactionRepository$a;-><init>(Lteam/opay/pay/transaction/TransactionRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final f()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transaction/TransactionTypesBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/TransactionRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/transaction/TransactionRepository$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/transaction/TransactionRepository$b;-><init>(Lteam/opay/pay/transaction/TransactionRepository;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final g()Lteam/opay/pay/transaction/TransactionWebService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/TransactionRepository;->e:Lteam/opay/pay/transaction/TransactionWebService;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lteam/opay/pay/transaction/TransactionsInput;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/transaction/TransactionsInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transaction/TransactionsInput;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transaction/TransactionsHistoryRspV2;",
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
    iget-object v0, p0, Lteam/opay/pay/transaction/TransactionRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/transaction/TransactionRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/transaction/TransactionRepository$c;-><init>(Lteam/opay/pay/transaction/TransactionRepository;Lteam/opay/pay/transaction/TransactionsInput;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
