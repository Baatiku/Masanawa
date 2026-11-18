.class public final Lteam/opay/sme/store/StoreRepository$a;
.super Lteam/opay/core/http/arch/NetworkBoundResource;
.source "StoreViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/StoreRepository;->I(Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundResource<",
        "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
        "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/sme/store/StoreRepository$a",
        "Lteam/opay/core/http/arch/NetworkBoundResource;",
        "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "C",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "Landroidx/lifecycle/LiveData;",
        "s",
        "()Landroidx/lifecycle/LiveData;",
        "item",
        "",
        "E",
        "(Lteam/opay/sme/store/api/AddressLandmarkResponse;)V",
        "data",
        "",
        "G",
        "(Lteam/opay/sme/store/api/AddressLandmarkResponse;)Z",
        "business-sme-store_release"
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
.field public final synthetic c:Lteam/opay/sme/store/StoreRepository;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/StoreRepository;ZLteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 2
    .line 3
    iput-boolean p2, p0, Lteam/opay/sme/store/StoreRepository$a;->d:Z

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/http/arch/NetworkBoundResource;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lteam/opay/core/http/HttpResponse;)Lteam/opay/sme/store/api/AddressLandmarkResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/StoreRepository$a;->D(Lteam/opay/core/http/HttpResponse;)Lteam/opay/sme/store/api/AddressLandmarkResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/AddressLandmarkResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/StoreRepository$a;->F(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/AddressLandmarkResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final D(Lteam/opay/core/http/HttpResponse;)Lteam/opay/sme/store/api/AddressLandmarkResponse;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/sme/store/api/AddressLandmarkResponse;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final F(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/AddressLandmarkResponse;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/StoreRepository;->e(Lteam/opay/sme/store/StoreRepository;)Lteam/opay/core/common/CorpLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/core/common/CorpLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public C()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
            ">;",
            "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/sme/store/StoreRepository;->d(Lteam/opay/sme/store/StoreRepository;)Llv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2, v1, v2}, Llv$a;->c(Llv;Ljava/lang/Object;ILjava/lang/Object;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lz4e;

    .line 14
    .line 15
    invoke-direct {v1}, Lz4e;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-static {v0, v2, v1, v3, v2}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public E(Lteam/opay/sme/store/api/AddressLandmarkResponse;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/arch/NetworkBoundResource;->q()Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/core/http/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 15
    .line 16
    new-instance v2, La5e;

    .line 17
    .line 18
    invoke-direct {v2, v1, p1}, La5e;-><init>(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/AddressLandmarkResponse;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {p1, v0, v1}, Lteam/opay/sme/store/StoreRepository;->j(Lteam/opay/sme/store/StoreRepository;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public G(Lteam/opay/sme/store/api/AddressLandmarkResponse;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lteam/opay/sme/store/StoreRepository$a;->d:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object p1, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 10
    .line 11
    invoke-static {p1}, Lteam/opay/sme/store/StoreRepository;->f(Lteam/opay/sme/store/StoreRepository;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-static {}, Lteam/opay/sme/store/StoreRepository;->i()J

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

.method public bridge synthetic k()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/StoreRepository$a;->C()Lteam/opay/core/http/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public s()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository$a;->c:Lteam/opay/sme/store/StoreRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/sme/store/StoreRepository;->e(Lteam/opay/sme/store/StoreRepository;)Lteam/opay/core/common/CorpLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/sme/store/api/AddressLandmarkResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/StoreRepository$a;->E(Lteam/opay/sme/store/api/AddressLandmarkResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/sme/store/api/AddressLandmarkResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/StoreRepository$a;->G(Lteam/opay/sme/store/api/AddressLandmarkResponse;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
