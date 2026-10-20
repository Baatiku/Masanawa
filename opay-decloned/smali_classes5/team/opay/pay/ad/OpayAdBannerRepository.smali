.class public final Lteam/opay/pay/ad/OpayAdBannerRepository;
.super Ljava/lang/Object;
.source "OpayAdBannerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J)\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayAdBannerRepository;",
        "",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;)V",
        "Lteam/opay/pay/api/AllAnnouncementReq;",
        "req",
        "",
        "saveCache",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/odialog/net/ADListResponse;",
        "b",
        "(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lfv;",
        "Lfv;",
        "apiService",
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
.field public final a:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "app"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerRepository;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    sget-object p1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 17
    .line 18
    const-class v0, Lfv;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lfv;

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerRepository;->b:Lfv;

    .line 27
    .line 28
    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/ad/OpayAdBannerRepository;)Lfv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/OpayAdBannerRepository;->b:Lfv;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/api/AllAnnouncementReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/AllAnnouncementReq;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerRepository;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 14
    .line 15
    new-instance v1, Lteam/opay/pay/ad/OpayAdBannerRepository$a;

    .line 16
    .line 17
    invoke-direct {v1, p2, p0, p1, v0}, Lteam/opay/pay/ad/OpayAdBannerRepository$a;-><init>(Landroidx/lifecycle/MutableLiveData;Lteam/opay/pay/ad/OpayAdBannerRepository;Lteam/opay/pay/api/AllAnnouncementReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->l()Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/ad/OpayAdBannerRepository;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 26
    .line 27
    new-instance v0, Lteam/opay/pay/ad/OpayAdBannerRepository$b;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerRepository$b;-><init>(Lteam/opay/pay/ad/OpayAdBannerRepository;Lteam/opay/pay/api/AllAnnouncementReq;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    return-object p1
.end method
