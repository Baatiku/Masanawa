.class public final Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "TransferHistoryRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->i(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\'\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "team/opay/pay/wallet/transferhistory/TransferHistoryRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/pay/wallet/transferhistory/TransferHistoryList;",
        "F",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "item",
        "",
        "J",
        "(Ljava/util/List;)V",
        "data",
        "",
        "K",
        "(Ljava/util/List;)Z",
        "Landroidx/lifecycle/LiveData;",
        "u",
        "()Landroidx/lifecycle/LiveData;",
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
.field public final synthetic c:Z

.field public final synthetic d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

.field public final synthetic e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;


# direct methods
.method public constructor <init>(ZLteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->c:Z

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic C(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->I(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->G(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->H(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;Landroidx/lifecycle/MutableLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final G(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryList;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryList;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->f(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;->b(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lw6f;

    .line 26
    .line 27
    invoke-direct {p2, p3, p0}, Lw6f;-><init>(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final I(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->K(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public F()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistoryList;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 6
    .line 7
    invoke-static {v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->e(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lfv;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lfv;->r(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;)Lretrofit2/Call;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 19
    .line 20
    invoke-static {v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->e(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lfv;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lfv;->S0(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    new-instance v1, Lx6f;

    .line 31
    .line 32
    invoke-direct {v1}, Lx6f;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public J(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 29
    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setUserId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 39
    .line 40
    invoke-static {v0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->f(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;)Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryDao;->d(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 50
    .line 51
    invoke-static {}, Lvke;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {p1, v0, v1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;->g(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;J)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public K(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public bridge synthetic l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->F()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/wallet/transferhistory/TransferHistory;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->d:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->e:Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lv6f;

    .line 19
    .line 20
    invoke-direct {v4, v1, v2, p0, v0}, Lv6f;-><init>(Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRequest;Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;Landroidx/lifecycle/MutableLiveData;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/transferhistory/TransferHistoryRepository$b;->J(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
