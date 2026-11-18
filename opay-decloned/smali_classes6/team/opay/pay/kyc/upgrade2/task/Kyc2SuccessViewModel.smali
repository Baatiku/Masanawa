.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "Kyc2SuccessViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001+B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR#\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u001d0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\'\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0018\u001a\u0004\u0008%\u0010!R\'\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0018\u001a\u0004\u0008(\u0010!\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "kycLevelDao",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;)V",
        "",
        "D",
        "()V",
        "Lag8;",
        "lifecycleOwner",
        "x",
        "(Lag8;)V",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "kycLevel",
        "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
        "G",
        "(Lteam/opay/pay/kyc/levels/KycLevel;)Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
        "b",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "Lfv;",
        "c",
        "Lid8;",
        "B",
        "()Lfv;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "E",
        "()Landroidx/lifecycle/MutableLiveData;",
        "kycLevelsSuccess",
        "Lteam/opay/odialog/net/AdDataItem;",
        "e",
        "F",
        "popAdDataEvent",
        "f",
        "C",
        "bannerAdDataEvent",
        "g",
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
.field public static final g:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lteam/opay/pay/kyc/levels/KycLevelDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->g:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/levels/KycLevelDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->b:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 10
    .line 11
    new-instance p2, Ltu7;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Ltu7;-><init>(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->c:Lid8;

    .line 21
    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    new-instance p1, Luu7;

    .line 30
    .line 31
    invoke-direct {p1}, Luu7;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->e:Lid8;

    .line 39
    .line 40
    new-instance p1, Lvu7;

    .line 41
    .line 42
    invoke-direct {p1}, Lvu7;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->f:Lid8;

    .line 50
    .line 51
    return-void
.end method

.method public static final A()Landroidx/lifecycle/MutableLiveData;
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

.method private final B()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final H()Landroidx/lifecycle/MutableLiveData;
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

.method public static synthetic r()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Landroid/app/Application;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->z(Landroid/app/Application;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic v(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;)Lteam/opay/pay/kyc/levels/KycLevelDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->b:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Lteam/opay/pay/kyc/levels/KycLevel;)Lteam/opay/pay/kyc/levels/KycLevelBottomItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->G(Lteam/opay/pay/kyc/levels/KycLevel;)Lteam/opay/pay/kyc/levels/KycLevelBottomItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    if-ne v0, v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "KYC2_result_pop"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "KYC2_result_banner"

    .line 85
    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method

.method public static final z(Landroid/app/Application;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    const-class v1, Lfv;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfv;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->f:Lid8;

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

.method public final D()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v3, v3, v2, v3}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;-><init>(Lteam/opay/pay/kyc/levels/UserKycLimit;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    new-instance v7, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;

    .line 25
    .line 26
    invoke-direct {v7, p0, v0, v3}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Ljava/util/List;Ljr2;)V

    .line 27
    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->e:Lid8;

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

.method public final G(Lteam/opay/pay/kyc/levels/KycLevel;)Lteam/opay/pay/kyc/levels/KycLevelBottomItem;
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2, v1}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;-><init>(Lteam/opay/pay/kyc/levels/UserKycLimit;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
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
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->v()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lteam/opay/pay/kyc/levels/UserKycLimit;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/kyc/levels/KycLevel;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/kyc/levels/KycLevel;->j()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-direct {v1, v4, v2, v3, p1}, Lteam/opay/pay/kyc/levels/UserKycLimit;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/levels/KycLevelBottomItem;->d(Lteam/opay/pay/kyc/levels/UserKycLimit;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final x(Lag8;)V
    .locals 5
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/api/AnnouncementReq;

    .line 9
    .line 10
    const-string v2, "KYC2_result_pop"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 16
    .line 17
    const-string v3, "KYC2_result_banner"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    new-array v3, v3, [Lteam/opay/pay/api/AnnouncementReq;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    aput-object v2, v3, v1

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->B()Lfv;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2, v0}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-class v1, Lteam/opay/odialog/net/ADListResponse;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "200"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lwu7;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lwu7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
