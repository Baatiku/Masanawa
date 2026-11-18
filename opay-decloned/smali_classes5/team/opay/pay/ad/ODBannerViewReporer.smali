.class public final Lteam/opay/pay/ad/ODBannerViewReporer;
.super Ljava/lang/Object;
.source "ODBannerViewReporer.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroidx/lifecycle/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\r\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u001f\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001b\u0010\u001c\u001a\u00020\u00072\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010 \u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u0017\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008$\u0010\u0018J\u000f\u0010%\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0004J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008&\u0010\u0018J\u001f\u0010*\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010,\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008,\u0010+R\u001c\u0010/\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010;R\u0016\u0010?\u001a\u00020\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010@\u001a\u00020\'8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010>R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010A\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/pay/ad/ODBannerViewReporer;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "Landroidx/lifecycle/e;",
        "<init>",
        "()V",
        "Lteam/opay/pay/ad/OpayAdBannerView;",
        "bannerView",
        "",
        "t",
        "(Lteam/opay/pay/ad/OpayAdBannerView;)V",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "list",
        "s",
        "(Ljava/util/List;)V",
        "onScrollChanged",
        "Lag8;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
        "adItem",
        "j",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "i",
        "Lteam/opay/pay/widget/LoopViewPager;",
        "pager",
        "h",
        "(Lteam/opay/pay/widget/LoopViewPager;)V",
        "",
        "position",
        "g",
        "(I)Lteam/opay/odialog/net/AdDataItem;",
        "k",
        "data",
        "q",
        "l",
        "n",
        "",
        "adID",
        "adpCode",
        "p",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "o",
        "a",
        "Lteam/opay/pay/widget/LoopViewPager;",
        "mPager",
        "Lkotlinx/coroutines/l;",
        "b",
        "Lkotlinx/coroutines/l;",
        "reportJob",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "c",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "lifecycleScope",
        "d",
        "Lag8;",
        "lifecycleOwner",
        "Ljava/util/List;",
        "datas",
        "f",
        "Ljava/lang/String;",
        "currentReportID",
        "TAG",
        "Lteam/opay/pay/ad/OpayAdBannerView;",
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
.field public a:Lteam/opay/pay/widget/LoopViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/widget/LoopViewPager<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroidx/lifecycle/LifecycleCoroutineScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lag8;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lteam/opay/pay/ad/OpayAdBannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->e:Ljava/util/List;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->f:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "OpayAdBannerViewReporter"

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->g:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/ad/ODBannerViewReporer;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->r(Lteam/opay/pay/ad/ODBannerViewReporer;Lteam/opay/odialog/net/AdDataItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/pay/ad/ODBannerViewReporer;I)Lteam/opay/odialog/net/AdDataItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/pay/ad/ODBannerViewReporer;)Lteam/opay/pay/widget/LoopViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/pay/ad/ODBannerViewReporer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/ODBannerViewReporer;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/ad/ODBannerViewReporer;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->q(Lteam/opay/odialog/net/AdDataItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final r(Lteam/opay/pay/ad/ODBannerViewReporer;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$data"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->d:Lag8;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->h:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 32
    .line 33
    invoke-static {v0}, Lkzf;->g(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "reportAdShowWhenScrollStop -> isVisableToUser:"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ", currentReportID: "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ", pageId: "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->n(Lteam/opay/odialog/net/AdDataItem;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/ad/ODBannerViewReporer;->l()V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method


# virtual methods
.method public e(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 30
    .line 31
    if-ne p2, p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 48
    .line 49
    if-ne p2, p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/widget/LoopViewPager;->getCurrentItem()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->q(Lteam/opay/odialog/net/AdDataItem;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 73
    .line 74
    if-ne p2, p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/ad/ODBannerViewReporer;->l()V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method public final g(I)Lteam/opay/odialog/net/AdDataItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    rem-int/2addr p1, v1

    .line 18
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lteam/opay/odialog/net/AdDataItem;

    .line 23
    .line 24
    return-object p1
.end method

.method public final h(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/widget/LoopViewPager<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->d:Lag8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lteam/opay/pay/ad/ODBannerViewReporer$a;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/ad/ODBannerViewReporer$a;-><init>(Lteam/opay/pay/ad/ODBannerViewReporer;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lteam/opay/pay/widget/LoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final i(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 6
    .param p1    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "AD_ID"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AD_type"

    .line 17
    .line 18
    const-string v2, "Banner_ads"

    .line 19
    .line 20
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "AD_Position_Code"

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "AD_link"

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x4

    .line 45
    new-array v4, v4, [Lkotlin/Pair;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v0, v4, v5

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-object v1, v4, v0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v2, v4, v0

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    aput-object v3, v4, v0

    .line 58
    .line 59
    const-string v0, "AD_Click"

    .line 60
    .line 61
    invoke-static {v0, v4}, Le43;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getCallbackClick()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, ""

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    move-object v0, v1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object v1, p1

    .line 93
    :goto_0
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/ad/ODBannerViewReporer;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final j(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 6
    .param p1    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "AD_ID"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AD_type"

    .line 17
    .line 18
    const-string v2, "Banner_ads"

    .line 19
    .line 20
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "AD_Position_Code"

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "AD_link"

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x4

    .line 45
    new-array v4, v4, [Lkotlin/Pair;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v0, v4, v5

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-object v1, v4, v0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v2, v4, v0

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    aput-object v3, v4, v0

    .line 58
    .line 59
    const-string v0, "AD_show"

    .line 60
    .line 61
    invoke-static {v0, v4}, Le43;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getCallbackShow()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, ""

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    move-object v0, v1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object v1, p1

    .line 93
    :goto_0
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/ad/ODBannerViewReporer;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->b:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->c:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    new-instance v6, Lteam/opay/pay/ad/ODBannerViewReporer$onScrolling$1;

    .line 15
    .line 16
    invoke-direct {v6, p0, v1}, Lteam/opay/pay/ad/ODBannerViewReporer$onScrolling$1;-><init>(Lteam/opay/pay/ad/ODBannerViewReporer;Ljr2;)V

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x3

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->b:Lkotlinx/coroutines/l;

    .line 28
    .line 29
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->f:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final n(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "@@@@@@@@@@@@@@@@@ report: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getIDWrapper()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->f:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->j(Lteam/opay/odialog/net/AdDataItem;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lteam/opay/odialog/net/AdClickBody;

    .line 17
    .line 18
    sget-object v3, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 19
    .line 20
    const-class v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-nez v3, :cond_1

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    :cond_1
    invoke-direct {v2, v3, p2, p1}, Lteam/opay/odialog/net/AdClickBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lteam/opay/odialog/net/ApiFactory;->a:Lteam/opay/odialog/net/ApiFactory;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "it.applicationContext"

    .line 50
    .line 51
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lteam/opay/odialog/net/ApiFactory;->a(Landroid/content/Context;)Lav;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1, v2}, Lav;->a(Lteam/opay/odialog/net/AdClickBody;)Lretrofit2/Call;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-static {p1, v1}, Lxh8;->c(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/ad/ODBannerViewReporer;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lteam/opay/odialog/net/AdShowBody;

    .line 17
    .line 18
    sget-object v3, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 19
    .line 20
    const-class v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-nez v3, :cond_1

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v2, v3, p2, p1}, Lteam/opay/odialog/net/AdShowBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lteam/opay/odialog/net/ApiFactory;->a:Lteam/opay/odialog/net/ApiFactory;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v0, "it.applicationContext"

    .line 54
    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lteam/opay/odialog/net/ApiFactory;->a(Landroid/content/Context;)Lav;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p1, p2}, Lav;->c(Ljava/util/List;)Lretrofit2/Call;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-static {p1, v1}, Lxh8;->c(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final q(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->h:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lo3a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lo3a;-><init>(Lteam/opay/pay/ad/ODBannerViewReporer;Lteam/opay/odialog/net/AdDataItem;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x12c

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->e:Ljava/util/List;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->d:Lag8;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/widget/LoopViewPager;->getCurrentItem()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->q(Lteam/opay/odialog/net/AdDataItem;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final t(Lteam/opay/pay/ad/OpayAdBannerView;)V
    .locals 1
    .param p1    # Lteam/opay/pay/ad/OpayAdBannerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bannerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->h:Lteam/opay/pay/ad/OpayAdBannerView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getLoopPager()Lteam/opay/pay/widget/LoopViewPager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getBannerLifeCycle$advertisement_release()Lteam/opay/pay/ad/BannerLifecycle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->d:Lag8;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/ad/ODBannerViewReporer;->c:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getLoopPager()Lteam/opay/pay/widget/LoopViewPager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lteam/opay/pay/ad/ODBannerViewReporer;->h(Lteam/opay/pay/widget/LoopViewPager;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
