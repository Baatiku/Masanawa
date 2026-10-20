.class public final Lteam/opay/pay/ad/AdConfigDialogManager;
.super Lteam/opay/odialog/BaseOpayMarketingDialogManager;
.source "AdConfigDialogManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/ad/AdConfigDialogManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001d\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/ad/AdConfigDialogManager;",
        "Lteam/opay/odialog/BaseOpayMarketingDialogManager;",
        "<init>",
        "()V",
        "Lteam/opay/pay/android/BaseShowAdActivity;",
        "activity",
        "",
        "code",
        "",
        "k",
        "(Lteam/opay/pay/android/BaseShowAdActivity;Ljava/lang/String;)V",
        "e",
        "act",
        "Lteam/opay/odialog/net/AdDataItem;",
        "ad",
        "i",
        "(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V",
        "url",
        "g",
        "(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;)V",
        "a",
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
.field public static final a:Lteam/opay/pay/ad/AdConfigDialogManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/ad/AdConfigDialogManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/ad/AdConfigDialogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/ad/AdConfigDialogManager;->a:Lteam/opay/pay/ad/AdConfigDialogManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lteam/opay/odialog/BaseOpayMarketingDialogManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/ad/AdConfigDialogManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->l(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/ad/AdConfigDialogManager;->j(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->f(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/pay/ad/OpayHomeConfigDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->h(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/pay/ad/OpayHomeConfigDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/odialog/net/ADListResponse;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lteam/opay/odialog/net/ADListResponse;

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lteam/opay/odialog/net/ADListItem;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->i(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/pay/ad/OpayHomeConfigDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 10
    .line 11
    const-string v1, "POP_ads"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :cond_0
    invoke-interface {v0, p0, v2, v1}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object p0, Lx7b;->a:Lx7b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, p1, v1, v0}, Lx7b;->t(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lteam/opay/odialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p3, "url"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseShowAdActivity;->B()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/odialog/net/ADListResponse;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lteam/opay/odialog/net/ADListResponse;

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lteam/opay/odialog/net/ADListItem;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Lteam/opay/odialog/net/AdDataItem;

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->i(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method


# virtual methods
.method public final e(Lteam/opay/pay/android/BaseShowAdActivity;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lteam/opay/pay/android/BaseShowAdActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "code"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Lr0g;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 23
    .line 24
    new-instance v1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 25
    .line 26
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 27
    .line 28
    invoke-direct {v2, p2}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {v1, p2}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x2

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, v1, v3, p2, v2}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->v(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/pay/api/AllAnnouncementReq;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v0, Lug;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lug;-><init>(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final g(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lteam/opay/pay/android/BaseShowAdActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ad"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "url"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "POP_ads"

    .line 23
    .line 24
    invoke-virtual {v0, p2, v2, v1}, Lx7b;->C(Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lteam/opay/pay/ad/OpayHomeConfigDialog;->h:Lteam/opay/pay/ad/OpayHomeConfigDialog$Companion;

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getCloseIconPosition()Lteam/opay/odialog/DialogClosePosition;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    sget-object v1, Lteam/opay/odialog/DialogClosePosition;->OutsideBottom:Lteam/opay/odialog/DialogClosePosition;

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, p3, v1}, Lteam/opay/pay/ad/OpayHomeConfigDialog$Companion;->a(Ljava/lang/String;Lteam/opay/odialog/DialogClosePosition;)Lteam/opay/pay/ad/OpayHomeConfigDialog;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    new-instance v0, Lsg;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2, p3}, Lsg;-><init>(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/pay/ad/OpayHomeConfigDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v0}, Lteam/opay/pay/ad/OpayHomeConfigDialog;->L(Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 4
    .param p1    # Lteam/opay/pay/android/BaseShowAdActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ad"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Llm;->a:Llm;

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p2}, Lteam/opay/odialog/net/AdDataItem;->getImg_url()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ltg;

    .line 22
    .line 23
    invoke-direct {v3, p1, p2}, Ltg;-><init>(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Llm;->h(Ljava/lang/String;Ljava/lang/String;Lhm6;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final k(Lteam/opay/pay/android/BaseShowAdActivity;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lteam/opay/pay/android/BaseShowAdActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "code"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Lr0g;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerViewModel;

    .line 23
    .line 24
    new-instance v1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 25
    .line 26
    new-instance v2, Lteam/opay/pay/api/AnnouncementReq;

    .line 27
    .line 28
    invoke-direct {v2, p2}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {v1, p2}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x2

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, v1, v3, p2, v2}, Lteam/opay/pay/ad/OpayAdBannerViewModel;->v(Lteam/opay/pay/ad/OpayAdBannerViewModel;Lteam/opay/pay/api/AllAnnouncementReq;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v0, Lrg;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lrg;-><init>(Lteam/opay/pay/ad/AdConfigDialogManager;Lteam/opay/pay/android/BaseShowAdActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
