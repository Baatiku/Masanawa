.class public final Lteam/opay/pay/home/config/HomeConfigRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundResource;
.source "HomeConfigRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/config/HomeConfigRepository;->q()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundResource<",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00040\u0003H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/home/config/HomeConfigRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundResource;",
        "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "l",
        "()Landroidx/lifecycle/LiveData;",
        "u",
        "item",
        "",
        "I",
        "(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V",
        "data",
        "",
        "J",
        "(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z",
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
.field public final synthetic c:Lteam/opay/pay/home/config/HomeConfigRepository;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/config/HomeConfigRepository$b;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lteam/opay/core/android/arch/NetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/config/HomeConfigRepository$b;->F(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/home/config/HomeConfigRepository$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$b;->G(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/home/config/HomeConfigRepository$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$b;->H(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;
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
    check-cast p0, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/home/config/HomeConfigRepository$b;)V
    .locals 4

    .line 1
    const-string v0, "TransferDefaultLocalData.json"

    .line 2
    .line 3
    invoke-static {v0}, Lmz6;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/gson/Gson;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lteam/opay/core/settings/SettingsStorage;

    .line 13
    .line 14
    invoke-static {p0}, Lteam/opay/pay/home/config/HomeConfigRepository;->i(Lteam/opay/pay/home/config/HomeConfigRepository;)Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "TransferDefaultLocalData"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v0}, Lteam/opay/core/settings/SettingsStorage;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v2, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Ljz6;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Ljz6;-><init>(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final H(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/config/HomeConfigRepository;->j(Lteam/opay/pay/home/config/HomeConfigRepository;)Landroidx/lifecycle/MutableLiveData;

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
    check-cast p1, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$b;->J(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public I(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$b;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 7
    .line 8
    const-string v1, "TransferDefaultLocalData"

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/home/config/HomeConfigRepository;->p(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public J(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public l()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$b;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/config/HomeConfigRepository;->h(Lteam/opay/pay/home/config/HomeConfigRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2, v1}, Lfv$a;->b(Lfv;Lteam/opay/pay/wallet/addmoney/bean/CommonPayReq;ILjava/lang/Object;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lkz6;

    .line 14
    .line 15
    invoke-direct {v1}, Lkz6;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "200"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lyv;->b(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public u()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/NetworkBoundResource;->s()Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/pay/home/config/HomeConfigRepository$b;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 10
    .line 11
    new-instance v2, Liz6;

    .line 12
    .line 13
    invoke-direct {v2, v1, p0}, Liz6;-><init>(Lteam/opay/pay/home/config/HomeConfigRepository;Lteam/opay/pay/home/config/HomeConfigRepository$b;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/home/config/HomeConfigRepository$b;->c:Lteam/opay/pay/home/config/HomeConfigRepository;

    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/pay/home/config/HomeConfigRepository;->j(Lteam/opay/pay/home/config/HomeConfigRepository;)Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/config/HomeConfigRepository$b;->I(Lteam/opay/pay/wallet/addmoney/bean/OsdkCommonPayData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
