.class public final Lteam/opay/pay/bank/BankRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "BankRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/bank/BankRepository;->k(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
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
        "Lteam/opay/pay/bank/Bank;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/pay/bank/Bank;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\"\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0001J!\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0005\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000b\u001a\u00020\n2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000e\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\rH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00110\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "team/opay/pay/bank/BankRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "",
        "Lteam/opay/pay/bank/Bank;",
        "Lteam/opay/pay/bank/BankList;",
        "item",
        "",
        "K",
        "(Ljava/util/List;)V",
        "data",
        "",
        "M",
        "(Ljava/util/List;)Z",
        "Landroidx/lifecycle/MutableLiveData;",
        "G",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "l",
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
.field public final synthetic c:Lteam/opay/pay/bank/BankRepository;

.field public final synthetic d:Lteam/opay/core/api/Country;


# direct methods
.method public constructor <init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/bank/BankRepository$b;->d:Lteam/opay/core/api/Country;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/bank/BankRepository$b;->L(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/bank/BankRepository$b;->I(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/bank/BankRepository$b;->J(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lteam/opay/pay/bank/BankRepository$b;Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/bank/BankRepository$b;->H(Lteam/opay/pay/bank/BankRepository$b;Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Landroidx/lifecycle/MutableLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H(Lteam/opay/pay/bank/BankRepository$b;Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Landroidx/lifecycle/MutableLiveData;)V
    .locals 2

    .line 1
    sget-object v0, Lqy;->a:Lqy;

    .line 2
    .line 3
    new-instance v1, Lyj0;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lyj0;-><init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqy;->b(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p2, Lzj0;

    .line 23
    .line 24
    invoke-direct {p2, p3, p1}, Lzj0;-><init>(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final I(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/bank/BankRepository;->f(Lteam/opay/pay/bank/BankRepository;)Lteam/opay/pay/bank/BanksDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/BanksDao;->b(Ljava/lang/String;)Ljava/util/List;

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
    if-nez p0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    return-object p0
.end method

.method public static final J(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final L(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/bank/BankRepository;->i(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/BankRepository$b;->M(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public G()Landroidx/lifecycle/MutableLiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
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
    iget-object v1, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/bank/BankRepository$b;->d:Lteam/opay/core/api/Country;

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
    new-instance v4, Lwj0;

    .line 19
    .line 20
    invoke-direct {v4, p0, v1, v2, v0}, Lwj0;-><init>(Lteam/opay/pay/bank/BankRepository$b;Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Landroidx/lifecycle/MutableLiveData;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public K(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
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
    sget-object v0, Lqy;->a:Lqy;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 9
    .line 10
    iget-object v2, p0, Lteam/opay/pay/bank/BankRepository$b;->d:Lteam/opay/core/api/Country;

    .line 11
    .line 12
    new-instance v3, Lxj0;

    .line 13
    .line 14
    invoke-direct {v3, v1, v2, p1}, Lxj0;-><init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lqy;->c(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public M(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lvke;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 6
    .line 7
    invoke-static {p1}, Lteam/opay/pay/bank/BankRepository;->g(Lteam/opay/pay/bank/BankRepository;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    iget-object p1, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/pay/bank/BankRepository;->h(Lteam/opay/pay/bank/BankRepository;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public l()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository$b;->c:Lteam/opay/pay/bank/BankRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/bank/BankRepository;->e(Lteam/opay/pay/bank/BankRepository;)Lxl0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/bank/BankRepository$b;->d:Lteam/opay/core/api/Country;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lxl0;->c(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic u()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/bank/BankRepository$b;->G()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/bank/BankRepository$b;->K(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
