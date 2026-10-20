.class public final Lteam/opay/pay/payment/electricity/ElectricityRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "ElectricityPaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\r0\u000c2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\r0\u000c2\u0006\u0010\u000b\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00130\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001a\u0010*\u001a\u00020&8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008\'\u0010)R\u0014\u0010.\u001a\u00020+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/payment/electricity/ElectricityRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lfv;",
        "apiService",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lfv;)V",
        "Lteam/opay/pay/payment/LifeRewardsReq;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/payment/LifeRewardResponse;",
        "l",
        "(Lteam/opay/pay/payment/LifeRewardsReq;)Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "viewModel",
        "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
        "i",
        "(Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/payment/LifeRequest;",
        "Lteam/opay/pay/payment/ElectricityCustomerInfo;",
        "k",
        "(Lteam/opay/pay/payment/LifeRequest;)Landroidx/lifecycle/LiveData;",
        "d",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lfv;",
        "Ltd8;",
        "f",
        "Ltd8;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "electricityLiveData",
        "",
        "h",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "ELECTRICITY_DATA_V3",
        "Landroid/content/SharedPreferences;",
        "j",
        "()Landroid/content/SharedPreferences;",
        "preferences",
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

.field public final e:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ltd8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lfv;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appExecutors"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "apiService"

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
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->e:Lfv;

    .line 22
    .line 23
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 24
    .line 25
    const-class p3, Ltd8;

    .line 26
    .line 27
    invoke-virtual {p2, p1, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ltd8;

    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->f:Ltd8;

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->g:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    const-string p1, "electricity_data_v3_cal"

    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->h:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Ltd8;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->f:Ltd8;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/pay/payment/electricity/ElectricityRepository;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->j()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lteam/opay/pay/envconfigapi/StorageBusiness;->SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->f(Lteam/opay/pay/envconfigapi/StorageBusiness;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0}, Lteam/opay/pay/payment/electricity/ElectricityRepository$getElectricityServicesV3$1;-><init>(Landroidx/lifecycle/AndroidViewModel;Lteam/opay/pay/payment/electricity/ElectricityRepository;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/android/arch/LifecycleNetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final k(Lteam/opay/pay/payment/LifeRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/payment/LifeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/LifeRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/payment/ElectricityCustomerInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/electricity/ElectricityRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository$a;-><init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Lteam/opay/pay/payment/LifeRequest;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final l(Lteam/opay/pay/payment/LifeRewardsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/payment/LifeRewardsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/LifeRewardsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/payment/LifeRewardResponse;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/electricity/ElectricityRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityRepository$b;-><init>(Lteam/opay/pay/payment/electricity/ElectricityRepository;Lteam/opay/pay/payment/LifeRewardsReq;Lteam/opay/core/android/arch/AppExecutors;)V

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
