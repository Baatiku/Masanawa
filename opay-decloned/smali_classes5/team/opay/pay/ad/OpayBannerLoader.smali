.class public final Lteam/opay/pay/ad/OpayBannerLoader;
.super Lteam/opay/pay/ad/BannerRequest;
.source "OpayBannerLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u001a\u0010\u0010\u001a\u0016\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u00080\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u001c0\u001b0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayBannerLoader;",
        "Lteam/opay/pay/ad/BannerRequest;",
        "",
        "code",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Ljava/lang/String;Landroid/content/Context;)V",
        "",
        "a",
        "()V",
        "Lag8;",
        "owner",
        "Lkotlin/Function1;",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "callback",
        "f",
        "(Lag8;Lkotlin/jvm/functions/Function1;)V",
        "",
        "d",
        "()Z",
        "b",
        "Ljava/lang/String;",
        "c",
        "Landroid/content/Context;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/odialog/net/ResultData;",
        "Lteam/opay/odialog/net/ADListResponse;",
        "Landroidx/lifecycle/MutableLiveData;",
        "liveData",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ResultData<",
            "+",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/ad/BannerRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/ad/OpayBannerLoader;->b:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/ad/OpayBannerLoader;->c:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/pay/ad/OpayBannerLoader;->d:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/ad/OpayBannerLoader;Lkotlin/jvm/functions/Function1;Lteam/opay/odialog/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/OpayBannerLoader;->g(Lteam/opay/pay/ad/OpayBannerLoader;Lkotlin/jvm/functions/Function1;Lteam/opay/odialog/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g(Lteam/opay/pay/ad/OpayBannerLoader;Lkotlin/jvm/functions/Function1;Lteam/opay/odialog/net/ResultData;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$callback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/odialog/net/ResultData;->c()Lteam/opay/odialog/net/Status;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    sget-object v2, Lteam/opay/odialog/net/Status;->SUCCESS:Lteam/opay/odialog/net/Status;

    .line 21
    .line 22
    if-ne v1, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/odialog/net/ResultData;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/ad/BannerRequest;->c()Lteam/opay/pay/ad/BannerRequest$State;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lteam/opay/pay/ad/BannerRequest$State;->INIT:Lteam/opay/pay/ad/BannerRequest$State;

    .line 34
    .line 35
    invoke-virtual {p2}, Lteam/opay/odialog/net/ResultData;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lteam/opay/odialog/net/ADListResponse;

    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_6

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v2, v1

    .line 62
    check-cast v2, Lteam/opay/odialog/net/ADListItem;

    .line 63
    .line 64
    invoke-virtual {v2}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lteam/opay/pay/ad/OpayBannerLoader;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    move-object v0, v1

    .line 77
    :cond_2
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    if-eqz p2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p2}, Lteam/opay/odialog/net/ResultData;->c()Lteam/opay/odialog/net/Status;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move-object p2, v0

    .line 97
    :goto_1
    sget-object v1, Lteam/opay/odialog/net/Status;->ERROR:Lteam/opay/odialog/net/Status;

    .line 98
    .line 99
    if-ne p2, v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/ad/BannerRequest;->c()Lteam/opay/pay/ad/BannerRequest$State;

    .line 102
    .line 103
    .line 104
    sget-object p0, Lteam/opay/pay/ad/BannerRequest$State;->INIT:Lteam/opay/pay/ad/BannerRequest$State;

    .line 105
    .line 106
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/ad/BannerRequest;->c()Lteam/opay/pay/ad/BannerRequest$State;

    .line 111
    .line 112
    .line 113
    sget-object p0, Lteam/opay/pay/ad/BannerRequest$State;->INIT:Lteam/opay/pay/ad/BannerRequest$State;

    .line 114
    .line 115
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/odialog/net/ApiFactory;->a:Lteam/opay/odialog/net/ApiFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/ad/OpayBannerLoader;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "context.applicationContext"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/odialog/net/ApiFactory;->a(Landroid/content/Context;)Lav;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Lteam/opay/odialog/net/AdListRequestBody;

    .line 21
    .line 22
    new-instance v2, Lteam/opay/odialog/net/AdListRequestAdsItem;

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/pay/ad/OpayBannerLoader;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v2, v3}, Lteam/opay/odialog/net/AdListRequestAdsItem;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Lteam/opay/odialog/net/AdListRequestBody;-><init>(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lav;->b(Lteam/opay/odialog/net/AdListRequestBody;)Lretrofit2/Call;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lteam/opay/pay/ad/OpayBannerLoader;->d:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lxh8;->c(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/BannerRequest;->c()Lteam/opay/pay/ad/BannerRequest$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/pay/ad/BannerRequest$State;->INIT:Lteam/opay/pay/ad/BannerRequest$State;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final f(Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/ad/OpayBannerLoader;->d:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v1, Luqa;

    .line 14
    .line 15
    invoke-direct {v1, p0, p2}, Luqa;-><init>(Lteam/opay/pay/ad/OpayBannerLoader;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
