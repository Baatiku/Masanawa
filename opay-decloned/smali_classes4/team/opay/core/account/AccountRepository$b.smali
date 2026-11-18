.class public final Lteam/opay/core/account/AccountRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "AccountRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/account/AccountRepository;->o(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lteam/opay/core/account/AccountProfile;",
        "Lteam/opay/core/account/AccountProfile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000f0\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/core/account/AccountRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lteam/opay/core/account/AccountProfile;",
        "item",
        "",
        "E",
        "(Lteam/opay/core/account/AccountProfile;)V",
        "data",
        "",
        "G",
        "(Lteam/opay/core/account/AccountProfile;)Z",
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
.field public final synthetic c:Lteam/opay/core/account/AccountRepository;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;ZLteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/core/account/AccountRepository$b;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic C(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/account/AccountRepository$b;->F(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/account/AccountRepository;->l(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/account/AccountProfile;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/account/AccountRepository$b;->G(Lteam/opay/core/account/AccountProfile;)Z

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
            "Lteam/opay/core/account/AccountProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/account/AccountRepository;->e(Lteam/opay/core/account/AccountRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public E(Lteam/opay/core/account/AccountProfile;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 15
    .line 16
    new-instance v2, Ltc;

    .line 17
    .line 18
    invoke-direct {v2, v1, p1}, Ltc;-><init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/account/AccountProfile;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public G(Lteam/opay/core/account/AccountProfile;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/account/AccountRepository$b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lvke;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 10
    .line 11
    invoke-static {v2}, Lteam/opay/core/account/AccountRepository;->k(Lteam/opay/core/account/AccountRepository;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    iget-object v2, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 17
    .line 18
    invoke-static {v2}, Lteam/opay/core/account/AccountRepository;->j(Lteam/opay/core/account/AccountRepository;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-gtz v4, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 27
    .line 28
    invoke-static {v0}, Lteam/opay/core/account/AccountRepository;->i(Lteam/opay/core/account/AccountRepository;)Lteam/opay/core/account/AccountProfile;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 42
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
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/account/AccountRepository$b;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/account/AccountRepository;->f(Lteam/opay/core/account/AccountRepository;)Lfd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lfd;->j()Landroidx/lifecycle/LiveData;

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
    invoke-virtual {p0}, Lteam/opay/core/account/AccountRepository$b;->D()Landroidx/lifecycle/MutableLiveData;

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
    check-cast p1, Lteam/opay/core/account/AccountProfile;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/account/AccountRepository$b;->E(Lteam/opay/core/account/AccountProfile;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
