.class public final Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "TransferHistoryRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f0\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00100\u000f0\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;",
        "transferHistoryDao",
        "Lfv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;Lfv;)V",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;",
        "request",
        "",
        "onlyAcHistory",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
        "i",
        "(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Z)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
        "h",
        "()Landroidx/lifecycle/LiveData;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;",
        "f",
        "Lfv;",
        "",
        "g",
        "J",
        "cacheRefreshTime",
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

.field public final e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:J


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;Lfv;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lfv;
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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->f:Lfv;

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iput-wide p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->g:J

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lfv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->f:Lfv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->g:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final h()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/RecentCashContact;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$a;-><init>(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final i(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p2, p0, p1, v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;-><init>(ZLteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
