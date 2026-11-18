.class public final Lteam/opay/pay/ad/OpayAdBannerRepository$a;
.super Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.source "OpayAdBannerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/OpayAdBannerRepository;->b(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource<",
        "Lteam/opay/odialog/net/ADListResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000f\u0012\u0004\u0012\u00020\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/pay/ad/OpayAdBannerRepository$a",
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "Lteam/opay/odialog/net/ADListResponse;",
        "item",
        "",
        "H",
        "(Lteam/opay/odialog/net/ADListResponse;)V",
        "data",
        "",
        "I",
        "(Lteam/opay/odialog/net/ADListResponse;)Z",
        "Landroidx/lifecycle/LiveData;",
        "t",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "D",
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
.field public final synthetic e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lteam/opay/pay/ad/OpayAdBannerRepository;

.field public final synthetic g:Lteam/opay/pay/api/AllAnnouncementReq;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/ad/OpayAdBannerRepository;Lteam/opay/pay/api/AllAnnouncementReq;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;",
            "Lteam/opay/pay/ad/OpayAdBannerRepository;",
            "Lteam/opay/pay/api/AllAnnouncementReq;",
            "Lteam/opay/core/android/arch/AppExecutors;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->f:Lteam/opay/pay/ad/OpayAdBannerRepository;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->g:Lteam/opay/pay/api/AllAnnouncementReq;

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic A(Landroidx/lifecycle/MutableLiveData;Lteam/opay/odialog/net/ADListResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->G(Landroidx/lifecycle/MutableLiveData;Lteam/opay/odialog/net/ADListResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/odialog/net/ADListResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->E(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/odialog/net/ADListResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/ad/OpayAdBannerRepository$a;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->F(Lteam/opay/pay/ad/OpayAdBannerRepository$a;Landroidx/lifecycle/MutableLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final E(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/odialog/net/ADListResponse;
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
    check-cast p0, Lteam/opay/odialog/net/ADListResponse;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/ad/OpayAdBannerRepository$a;Landroidx/lifecycle/MutableLiveData;)V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->i()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v0, Lteam/opay/odialog/net/ADListResponse;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Lteam/opay/odialog/net/ADListResponse;-><init>(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .line 37
    .line 38
    const-class v2, Lteam/opay/odialog/net/ADListResponse;

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lteam/opay/odialog/net/ADListResponse;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->r()Lteam/opay/core/android/arch/AppExecutors;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v1, Lyna;

    .line 55
    .line 56
    invoke-direct {v1, p1, v0}, Lyna;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/odialog/net/ADListResponse;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static final G(Landroidx/lifecycle/MutableLiveData;Lteam/opay/odialog/net/ADListResponse;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->f:Lteam/opay/pay/ad/OpayAdBannerRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/ad/OpayAdBannerRepository;->a(Lteam/opay/pay/ad/OpayAdBannerRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->g:Lteam/opay/pay/api/AllAnnouncementReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lzna;

    .line 14
    .line 15
    invoke-direct {v1}, Lzna;-><init>()V

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

.method public H(Lteam/opay/odialog/net/ADListResponse;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 20
    .line 21
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->R0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public I(Lteam/opay/odialog/net/ADListResponse;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public bridge synthetic m()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->D()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public t()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->r()Lteam/opay/core/android/arch/AppExecutors;

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
    iget-object v1, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->e:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v2, Lxna;

    .line 12
    .line 13
    invoke-direct {v2, p0, v1}, Lxna;-><init>(Lteam/opay/pay/ad/OpayAdBannerRepository$a;Landroidx/lifecycle/MutableLiveData;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->e:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->H(Lteam/opay/odialog/net/ADListResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;->I(Lteam/opay/odialog/net/ADListResponse;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
