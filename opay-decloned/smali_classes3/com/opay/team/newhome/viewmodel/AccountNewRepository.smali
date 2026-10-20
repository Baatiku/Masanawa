.class public final Lcom/opay/team/newhome/viewmodel/AccountNewRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "AccountNewViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/AccountNewRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001\'B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000b0\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/opay/team/newhome/viewmodel/AccountNewRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V",
        "",
        "forceRefresh",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "k",
        "(Z)Landroidx/lifecycle/LiveData;",
        "Lcom/opay/team/newhome/bean/TotalAssetsV3Response;",
        "m",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "d",
        "()V",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lcom/opay/team/home/api/HomeApiService$a;",
        "e",
        "Lcom/opay/team/home/api/HomeApiService$a;",
        "accountApi",
        "",
        "f",
        "J",
        "accountRefreshTime",
        "Landroidx/lifecycle/MutableLiveData;",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "accountData",
        "Landroid/content/SharedPreferences;",
        "l",
        "()Landroid/content/SharedPreferences;",
        "preferences",
        "h",
        "Companion",
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


# static fields
.field public static final h:Lcom/opay/team/newhome/viewmodel/AccountNewRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:J


# instance fields
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/opay/team/home/api/HomeApiService$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->h:Lcom/opay/team/newhome/viewmodel/AccountNewRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x5

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->i:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
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
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    sget-object p2, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/opay/team/home/api/HomeApiService;->e(Landroid/content/Context;)Lcom/opay/team/home/api/HomeApiService$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->e:Lcom/opay/team/home/api/HomeApiService$a;

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f:J

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->g:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic e(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Lcom/opay/team/home/api/HomeApiService$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->e:Lcom/opay/team/home/api/HomeApiService$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic h(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->l()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/arch/BaseRepository;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->f:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->g:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final k(Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$a;-><init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;ZLteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final l()Landroid/content/SharedPreferences;
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

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/TotalAssetsV3Response;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/AccountNewRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lcom/opay/team/newhome/viewmodel/AccountNewRepository$b;-><init>(Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lteam/opay/core/android/arch/AppExecutors;)V

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
