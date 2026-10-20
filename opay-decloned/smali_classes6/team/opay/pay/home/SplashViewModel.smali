.class public final Lteam/opay/pay/home/SplashViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "SplashViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/SplashViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u00010B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001f0%8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/home/SplashViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/pay/favorites/FavoritesRepository;",
        "favoritesRepository",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "Lteam/opay/core/auth/AuthRepository;",
        "authRepository",
        "Lteam/opay/pay/common/CommonRepository;",
        "commonRepository",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/common/CommonRepository;Lteam/opay/core/api/Features;)V",
        "",
        "z",
        "()V",
        "",
        "adId",
        "v",
        "(Ljava/lang/String;)V",
        "t",
        "b",
        "Lteam/opay/pay/favorites/FavoritesRepository;",
        "c",
        "Lteam/opay/core/api/SessionRepository;",
        "d",
        "Lteam/opay/core/auth/AuthRepository;",
        "e",
        "Lteam/opay/pay/common/CommonRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "y",
        "()Landroidx/lifecycle/MutableLiveData;",
        "_timerTicker",
        "Landroidx/lifecycle/LiveData;",
        "g",
        "Landroidx/lifecycle/LiveData;",
        "x",
        "()Landroidx/lifecycle/LiveData;",
        "timerTicker",
        "Landroid/os/CountDownTimer;",
        "h",
        "Landroid/os/CountDownTimer;",
        "minVisibilityTimer",
        "i",
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
.field public static final i:Lteam/opay/pay/home/SplashViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static j:J

.field public static k:J


# instance fields
.field public final b:Lteam/opay/pay/favorites/FavoritesRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/auth/AuthRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/common/CommonRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/home/SplashViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/SplashViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/SplashViewModel;->i:Lteam/opay/pay/home/SplashViewModel$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x4

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    sput-wide v1, Lteam/opay/pay/home/SplashViewModel;->j:J

    .line 18
    .line 19
    const-wide/16 v1, 0x1

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Lteam/opay/pay/home/SplashViewModel;->k:J

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/common/CommonRepository;Lteam/opay/core/api/Features;)V
    .locals 6
    .param p1    # Lteam/opay/pay/favorites/FavoritesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/auth/AuthRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/common/CommonRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "favoritesRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "authRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "commonRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "features"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p5}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->b:Lteam/opay/pay/favorites/FavoritesRepository;

    .line 30
    .line 31
    iput-object p2, p0, Lteam/opay/pay/home/SplashViewModel;->c:Lteam/opay/core/api/SessionRepository;

    .line 32
    .line 33
    iput-object p3, p0, Lteam/opay/pay/home/SplashViewModel;->d:Lteam/opay/core/auth/AuthRepository;

    .line 34
    .line 35
    iput-object p4, p0, Lteam/opay/pay/home/SplashViewModel;->e:Lteam/opay/pay/common/CommonRepository;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 45
    .line 46
    sget-wide v2, Lteam/opay/pay/home/SplashViewModel;->j:J

    .line 47
    .line 48
    sget-wide v4, Lteam/opay/pay/home/SplashViewModel;->k:J

    .line 49
    .line 50
    new-instance p1, Lteam/opay/pay/home/SplashViewModel$a;

    .line 51
    .line 52
    move-object v0, p1

    .line 53
    move-object v1, p0

    .line 54
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/SplashViewModel$a;-><init>(Lteam/opay/pay/home/SplashViewModel;JJ)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->h:Landroid/os/CountDownTimer;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic r(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/SplashViewModel;->w(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/SplashViewModel;->u(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final w(Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final t(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/AdClickFeedbackReq;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, p1}, Lteam/opay/pay/api/AdClickFeedbackReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->e:Lteam/opay/pay/common/CommonRepository;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lteam/opay/pay/common/CommonRepository;->f(Lteam/opay/pay/api/AdClickFeedbackReq;)Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Ly2e;

    .line 30
    .line 31
    invoke-direct {v0}, Ly2e;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/BubbleReachReq;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, v1, v2, p1}, Lteam/opay/pay/api/BubbleReachReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/home/SplashViewModel;->e:Lteam/opay/pay/common/CommonRepository;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lteam/opay/pay/common/CommonRepository;->g(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lz2e;

    .line 38
    .line 39
    invoke-direct {v0}, Lz2e;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/SplashViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/SplashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/SplashViewModel;->h:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/SplashViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    sget-wide v2, Lteam/opay/pay/home/SplashViewModel;->j:J

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/pay/home/SplashViewModel;->h:Landroid/os/CountDownTimer;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 26
    .line 27
    .line 28
    return-void
.end method
