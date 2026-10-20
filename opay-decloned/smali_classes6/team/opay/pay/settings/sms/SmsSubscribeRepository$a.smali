.class public final Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;
.super Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.source "SmsSubscribeRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->h(Lteam/opay/pay/api/SmsNodeListReq;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource<",
        "Lteam/opay/pay/api/SmsNodeListResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000e0\u000bH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/settings/sms/SmsSubscribeRepository$a",
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "Lteam/opay/pay/api/SmsNodeListResponse;",
        "item",
        "",
        "E",
        "(Lteam/opay/pay/api/SmsNodeListResponse;)V",
        "data",
        "",
        "F",
        "(Lteam/opay/pay/api/SmsNodeListResponse;)Z",
        "Landroidx/lifecycle/LiveData;",
        "t",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "m",
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
.field public final synthetic e:Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

.field public final synthetic f:Lteam/opay/pay/api/SmsNodeListReq;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;Lteam/opay/pay/api/SmsNodeListReq;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->e:Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->f:Lteam/opay/pay/api/SmsNodeListReq;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/SmsNodeListResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/SmsNodeListResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->D(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/api/SmsNodeListResponse;
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
    check-cast p0, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final D(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->f(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)Lteam/opay/pay/settings/sms/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1, v0}, Lteam/opay/pay/settings/sms/a;->a(Ljava/lang/String;)Lteam/opay/pay/api/SmsNodeListResponse;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    const-string v5, ""

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string v3, ""

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/api/SmsNodeListResponse;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public E(Lteam/opay/pay/api/SmsNodeListResponse;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->e:Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->f(Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)Lteam/opay/pay/settings/sms/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Lteam/opay/pay/api/SmsNodeListResponse;->j(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Lteam/opay/pay/settings/sms/a;->d(Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public F(Lteam/opay/pay/api/SmsNodeListResponse;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public m()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/api/SmsNodeListResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->e:Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository;->g()Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->f:Lteam/opay/pay/api/SmsNodeListReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfv;->g0(Lteam/opay/pay/api/SmsNodeListReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, La1e;

    .line 14
    .line 15
    invoke-direct {v1}, La1e;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public t()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/api/SmsNodeListResponse;",
            ">;"
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
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->r()Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->e:Lteam/opay/pay/settings/sms/SmsSubscribeRepository;

    .line 15
    .line 16
    new-instance v3, Lz0e;

    .line 17
    .line 18
    invoke-direct {v3, v0, v2}, Lz0e;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/settings/sms/SmsSubscribeRepository;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->E(Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/settings/sms/SmsSubscribeRepository$a;->F(Lteam/opay/pay/api/SmsNodeListResponse;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
