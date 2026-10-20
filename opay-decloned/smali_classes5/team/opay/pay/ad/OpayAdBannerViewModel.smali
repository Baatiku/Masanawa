.class public final Lteam/opay/pay/ad/OpayAdBannerViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "OpayAdBannerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J+\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J#\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\'\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u00140!j\u0008\u0012\u0004\u0012\u00020\u0014`\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayAdBannerViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/pay/ad/OpayAdBannerRepository;",
        "repository",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Lteam/opay/pay/ad/OpayAdBannerRepository;Landroid/app/Application;)V",
        "Lteam/opay/pay/api/AllAnnouncementReq;",
        "req",
        "",
        "saveCache",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/odialog/net/ADListResponse;",
        "t",
        "(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;",
        "Lag8;",
        "lifecycleOwner",
        "",
        "",
        "codes",
        "",
        "u",
        "(Lag8;Ljava/util/List;)V",
        "b",
        "Lteam/opay/pay/ad/OpayAdBannerRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Lid8;",
        "x",
        "()Landroidx/lifecycle/MutableLiveData;",
        "liveAdData",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "d",
        "Ljava/util/ArrayList;",
        "getUpLoadIds",
        "()Ljava/util/ArrayList;",
        "upLoadIds",
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
.field public final b:Lteam/opay/pay/ad/OpayAdBannerRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/OpayAdBannerRepository;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/pay/ad/OpayAdBannerRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "repository"

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
    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewModel;->b:Lteam/opay/pay/ad/OpayAdBannerRepository;

    .line 15
    .line 16
    new-instance p1, Lgoa;

    .line 17
    .line 18
    invoke-direct {p1}, Lgoa;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewModel;->c:Lid8;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewModel;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic r()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->w(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/pay/api/AllAnnouncementReq;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->t(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final t(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewModel;->b:Lteam/opay/pay/ad/OpayAdBannerRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerRepository;->b(Lteam/opay/pay/api/AllAnnouncementReq;Z)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final u(Lag8;Ljava/util/List;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "codes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {p0, p2, v2, v0, v1}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->v(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/pay/api/AllAnnouncementReq;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v0, Lfoa;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lfoa;-><init>(Lteam/opay/pay/ad/OpayAdBannerViewModel;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewModel;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method
