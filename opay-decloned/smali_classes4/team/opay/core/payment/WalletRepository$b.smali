.class public final Lteam/opay/core/payment/WalletRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "WalletRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/payment/WalletRepository;->o(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lteam/opay/core/api/Wallet;",
        "Lteam/opay/core/api/Wallet;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000f0\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/core/payment/WalletRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lteam/opay/core/api/Wallet;",
        "item",
        "",
        "E",
        "(Lteam/opay/core/api/Wallet;)V",
        "data",
        "",
        "G",
        "(Lteam/opay/core/api/Wallet;)Z",
        "Landroidx/lifecycle/MutableLiveData;",
        "D",
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
.field public final synthetic c:Lteam/opay/core/payment/WalletRepository;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/payment/WalletRepository;ZLteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/core/payment/WalletRepository$b;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic C(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/Wallet;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/payment/WalletRepository$b;->F(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/Wallet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/Wallet;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/payment/WalletRepository;->g(Lteam/opay/core/payment/WalletRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/Wallet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/payment/WalletRepository$b;->G(Lteam/opay/core/api/Wallet;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/Wallet;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/payment/WalletRepository;->g(Lteam/opay/core/payment/WalletRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public E(Lteam/opay/core/api/Wallet;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 7
    .line 8
    invoke-static {}, Lvke;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v0, v1, v2}, Lteam/opay/core/payment/WalletRepository;->j(Lteam/opay/core/payment/WalletRepository;J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 24
    .line 25
    new-instance v2, Lb5g;

    .line 26
    .line 27
    invoke-direct {v2, v1, p1}, Lb5g;-><init>(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/Wallet;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public G(Lteam/opay/core/api/Wallet;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lteam/opay/core/payment/WalletRepository$b;->d:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lvke;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 10
    .line 11
    invoke-static {p1}, Lteam/opay/core/payment/WalletRepository;->h(Lteam/opay/core/payment/WalletRepository;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-static {}, Lteam/opay/core/payment/WalletRepository;->f()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method public l()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/core/api/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository$b;->c:Lteam/opay/core/payment/WalletRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/payment/WalletRepository;->i(Lteam/opay/core/payment/WalletRepository;)Lc5g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lc5g;->a()Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic u()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/payment/WalletRepository$b;->D()Landroidx/lifecycle/MutableLiveData;

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
    check-cast p1, Lteam/opay/core/api/Wallet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/payment/WalletRepository$b;->E(Lteam/opay/core/api/Wallet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
