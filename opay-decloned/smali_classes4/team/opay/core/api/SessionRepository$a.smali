.class public final Lteam/opay/core/api/SessionRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "SessionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/api/SessionRepository;->k(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lteam/opay/core/api/Session;",
        "Lteam/opay/core/api/Session;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000f0\u000cH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "team/opay/core/api/SessionRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lteam/opay/core/api/Session;",
        "item",
        "",
        "D",
        "(Lteam/opay/core/api/Session;)V",
        "C",
        "data",
        "",
        "E",
        "(Lteam/opay/core/api/Session;)Z",
        "Landroidx/lifecycle/LiveData;",
        "u",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "l",
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
.field public final synthetic c:Lteam/opay/core/api/SessionRepository;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/api/SessionRepository;ZLteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/api/SessionRepository$a;->c:Lteam/opay/core/api/SessionRepository;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/core/api/SessionRepository$a;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/Session;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/api/SessionRepository$a;->E(Lteam/opay/core/api/Session;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public C(Lteam/opay/core/api/Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository$a;->c:Lteam/opay/core/api/SessionRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/api/SessionRepository;->n(Lteam/opay/core/api/Session;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(Lteam/opay/core/api/Session;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository$a;->c:Lteam/opay/core/api/SessionRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/api/SessionRepository;->n(Lteam/opay/core/api/Session;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public E(Lteam/opay/core/api/Session;)Z
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/api/SessionRepository;->g()Lteam/opay/core/api/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lteam/opay/core/api/SessionRepository$a;->d:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
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
            "Lteam/opay/core/api/Session;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository$a;->c:Lteam/opay/core/api/SessionRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/api/SessionRepository;->h(Lteam/opay/core/api/SessionRepository;)Lwhd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lwhd;->a()Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/SessionRepository$a;->c:Lteam/opay/core/api/SessionRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/api/SessionRepository;->i(Lteam/opay/core/api/SessionRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/Session;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/api/SessionRepository$a;->C(Lteam/opay/core/api/Session;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/api/Session;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/api/SessionRepository$a;->D(Lteam/opay/core/api/Session;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
