.class public final Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;
.super Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;
.source "ElectricityPaymentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityRepository;->i(Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/LifecycleNetworkBoundResource<",
        "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1",
        "Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;",
        "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "z",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "Landroidx/lifecycle/LiveData;",
        "r",
        "()Landroidx/lifecycle/LiveData;",
        "item",
        "",
        "B",
        "(Lteam/opay/pay/payment/ElectricityCalculateRsp;)V",
        "data",
        "",
        "C",
        "(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Z",
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
.field public final synthetic d:Landroidx/lifecycle/AndroidViewModel;

.field public final synthetic e:Lteam/opay/pay/payment/electricity/ElectricityRepository;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/AndroidViewModel;Lteam/opay/pay/payment/electricity/ElectricityRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->d:Landroidx/lifecycle/AndroidViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;-><init>(Landroidx/lifecycle/AndroidViewModel;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final A(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/payment/ElectricityCalculateRsp;
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
    check-cast p0, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic y(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/payment/ElectricityCalculateRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->A(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public B(Lteam/opay/pay/payment/ElectricityCalculateRsp;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->g(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->h()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/google/gson/Gson;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public C(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public bridge synthetic l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->z()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public r()Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->d:Landroidx/lifecycle/AndroidViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v4, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->d:Landroidx/lifecycle/AndroidViewModel;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v4, v0, v3, v5}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1$loadFromCache$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Landroidx/lifecycle/AndroidViewModel;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 28
    .line 29
    invoke-static {v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->f(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->B(Lteam/opay/pay/payment/ElectricityCalculateRsp;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->C(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public z()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
            ">;",
            "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;->e:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->e(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Ltd8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ltd8;->p()Lretrofit2/Call;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lth5;

    .line 12
    .line 13
    invoke-direct {v1}, Lth5;-><init>()V

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
