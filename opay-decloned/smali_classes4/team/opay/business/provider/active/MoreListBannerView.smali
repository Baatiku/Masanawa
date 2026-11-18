.class public final Lteam/opay/business/provider/active/MoreListBannerView;
.super Lteam/opay/business/widget/LifecycleFrameLayout;
.source "MoreListBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListMoreHolder;,
        Lteam/opay/business/provider/active/MoreListBannerView$MoreBannerListNormalHolder;,
        Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003+,-B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001f\u0010*\u001a\u00060&R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\"\u001a\u0004\u0008(\u0010)\u00a8\u0006."
    }
    d2 = {
        "Lteam/opay/business/provider/active/MoreListBannerView;",
        "Lteam/opay/business/widget/LifecycleFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lteam/opay/business/provider/active/AdInfo;",
        "adInfo",
        "setBannerData",
        "(Lteam/opay/business/provider/active/AdInfo;)V",
        "Lt3c;",
        "d",
        "Lt3c;",
        "binding",
        "e",
        "Lteam/opay/business/provider/active/AdInfo;",
        "Lkotlin/Function0;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "getMoreItemCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setMoreItemCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "moreItemCallback",
        "Lteam/opay/business/provider/active/ActiveViewModel;",
        "g",
        "Lid8;",
        "getViewModel",
        "()Lteam/opay/business/provider/active/ActiveViewModel;",
        "viewModel",
        "Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;",
        "h",
        "getBannerAdapter",
        "()Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;",
        "bannerAdapter",
        "MoreListBannerAdapter",
        "MoreBannerListNormalHolder",
        "MoreBannerListMoreHolder",
        "business-provider_release"
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
.field public d:Lt3c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lteam/opay/business/provider/active/AdInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/active/MoreListBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/active/MoreListBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 6
    const-class p1, Lteam/opay/business/provider/active/ActiveViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object p1

    new-instance p2, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$1;

    invoke-direct {p2, p0}, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$1;-><init>(Landroid/view/ViewGroup;)V

    new-instance p3, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$2;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0}, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/ViewGroup;)V

    new-instance v0, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$3;

    invoke-direct {v0, p0}, Lteam/opay/business/provider/active/MoreListBannerView$special$$inlined$activityViewModels$default$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {p0, p1, p2, p3, v0}, Ln0g;->b(Landroid/view/ViewGroup;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView;->g:Lid8;

    .line 8
    new-instance p1, Lwd9;

    invoke-direct {p1, p0}, Lwd9;-><init>(Lteam/opay/business/provider/active/MoreListBannerView;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView;->h:Lid8;

    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/provider/active/MoreListBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic c(Lteam/opay/business/provider/active/MoreListBannerView;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/provider/active/MoreListBannerView;->h(Lteam/opay/business/provider/active/MoreListBannerView;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/provider/active/MoreListBannerView;Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/MoreListBannerView;->i(Lteam/opay/business/provider/active/MoreListBannerView;Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/business/provider/active/MoreListBannerView;)Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/provider/active/MoreListBannerView;->g(Lteam/opay/business/provider/active/MoreListBannerView;)Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lteam/opay/business/provider/active/MoreListBannerView;)Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;-><init>(Lteam/opay/business/provider/active/MoreListBannerView;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lxd9;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lxd9;-><init>(Lteam/opay/business/provider/active/MoreListBannerView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->m(Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lyd9;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lyd9;-><init>(Lteam/opay/business/provider/active/MoreListBannerView;Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->n(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private final getBannerAdapter()Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getViewModel()Lteam/opay/business/provider/active/ActiveViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/provider/active/ActiveViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final h(Lteam/opay/business/provider/active/MoreListBannerView;ZLteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    move-object v2, v0

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v3, p2

    .line 28
    invoke-static/range {v1 .. v6}, Lteam/opay/business/provider/active/AdpApi;->y(Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdInfo;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    invoke-virtual {p1, v0, p2}, Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0
.end method

.method public static final i(Lteam/opay/business/provider/active/MoreListBannerView;Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;)Lkotlin/Unit;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lteam/opay/business/provider/active/AdItem;

    .line 31
    .line 32
    new-instance v3, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-direct {v3, v2, v6, v4, v5}, Lteam/opay/business/provider/active/MoreAdInfo;-><init>(Lteam/opay/business/provider/active/AdItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, v0}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->setNewData(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->f:Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method


# virtual methods
.method public final getMoreItemCallback()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->d:Lt3c;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, p0, v1}, Lt3c;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lt3c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->d:Lt3c;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lt3c;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/business/provider/active/MoreListBannerView;->getBannerAdapter()Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lteam/opay/business/provider/active/MoreListBannerView;->setBannerData(Lteam/opay/business/provider/active/AdInfo;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->d:Lt3c;

    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 10
    .line 11
    return-void
.end method

.method public final setBannerData(Lteam/opay/business/provider/active/AdInfo;)V
    .locals 7
    .param p1    # Lteam/opay/business/provider/active/AdInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView;->e:Lteam/opay/business/provider/active/AdInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    xor-int/2addr v0, v1

    .line 28
    invoke-static {p0, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_2
    if-lez v0, :cond_9

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v5, 0x5

    .line 52
    const/4 v6, 0x0

    .line 53
    if-le v0, v5, :cond_7

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-interface {p1, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lteam/opay/business/provider/active/AdItem;

    .line 87
    .line 88
    new-instance v5, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 89
    .line 90
    invoke-direct {v5, v0, v2, v4, v6}, Lteam/opay/business/provider/active/MoreAdInfo;-><init>(Lteam/opay/business/provider/active/AdItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    new-instance p1, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 98
    .line 99
    invoke-direct {p1, v6, v1, v1, v6}, Lteam/opay/business/provider/active/MoreAdInfo;-><init>(Lteam/opay/business/provider/active/AdItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdInfo;->a()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lteam/opay/business/provider/active/AdItem;

    .line 127
    .line 128
    new-instance v1, Lteam/opay/business/provider/active/MoreAdInfo;

    .line 129
    .line 130
    invoke-direct {v1, v0, v2, v4, v6}, Lteam/opay/business/provider/active/MoreAdInfo;-><init>(Lteam/opay/business/provider/active/AdItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    :goto_5
    invoke-direct {p0}, Lteam/opay/business/provider/active/MoreListBannerView;->getBannerAdapter()Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, v3}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->setNewData(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_9
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lteam/opay/business/provider/active/MoreListBannerView;->getBannerAdapter()Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lteam/opay/business/provider/active/MoreListBannerView$MoreListBannerAdapter;->setNewData(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    :goto_6
    return-void
.end method

.method public final setMoreItemCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/MoreListBannerView;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
