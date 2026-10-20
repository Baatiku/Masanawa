.class public final Lteam/opay/pay/home/pay/ServicesRepository$a;
.super Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.source "ServicesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/pay/ServicesRepository;->k()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource<",
        "Ljava/util/List<",
        "+",
        "Lteam/opay/core/api/GraphQL$KycLimit;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0011\u001a \u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "team/opay/pay/home/pay/ServicesRepository$a",
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "",
        "Lteam/opay/core/api/GraphQL$KycLimit;",
        "item",
        "",
        "D",
        "(Ljava/util/List;)V",
        "data",
        "",
        "E",
        "(Ljava/util/List;)Z",
        "Landroidx/lifecycle/LiveData;",
        "t",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "B",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
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
.field public final synthetic e:Lteam/opay/pay/home/pay/ServicesRepository;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/pay/ServicesRepository;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/pay/ServicesRepository$a;->e:Lteam/opay/pay/home/pay/ServicesRepository;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/pay/ServicesRepository$a;->C(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/api/HttpResponse;)Ljava/util/List;
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
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public B()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;>;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesRepository$a;->e:Lteam/opay/pay/home/pay/ServicesRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/pay/ServicesRepository;->f(Lteam/opay/pay/home/pay/ServicesRepository;)Lxt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lxt;->p()Lretrofit2/Call;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lzgd;

    .line 12
    .line 13
    invoke-direct {v1}, Lzgd;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
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
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/home/pay/ServicesRepository$a;->e:Lteam/opay/pay/home/pay/ServicesRepository;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/home/pay/ServicesRepository;->g(Lteam/opay/pay/home/pay/ServicesRepository;)Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1, v0}, Lahd;->a(Ljava/util/List;Lteam/opay/pay/kyc/levels/KycLevelDao;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public E(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public bridge synthetic m()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/pay/ServicesRepository$a;->B()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public t()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$KycLimit;",
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
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/pay/ServicesRepository$a;->D(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/pay/ServicesRepository$a;->E(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
