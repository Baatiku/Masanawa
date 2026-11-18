.class public final Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;
.super Ljava/lang/Object;
.source "OpayAdBannerViewReporer.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroidx/lifecycle/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\u0008\u001a\u00020\u00072\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00072\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0004\u0008\u0014\u0010\tJ\u001b\u0010\u0017\u001a\u00020\u00072\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u001f\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008#\u0010$R\u001c\u0010\'\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u001c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "Landroidx/lifecycle/e;",
        "<init>",
        "()V",
        "Lteam/opay/pay/widget/LoopViewPager;",
        "pager",
        "",
        "h",
        "(Lteam/opay/pay/widget/LoopViewPager;)V",
        "",
        "position",
        "Lteam/opay/odialog/net/AdDataItem;",
        "g",
        "(I)Lteam/opay/odialog/net/AdDataItem;",
        "i",
        "j",
        "adItem",
        "k",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "p",
        "",
        "list",
        "o",
        "(Ljava/util/List;)V",
        "onScrollChanged",
        "Lag8;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
        "Landroid/view/View;",
        "currentView",
        "data",
        "l",
        "(Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V",
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
        "",
        "f",
        "Ljava/lang/String;",
        "currentReportID",
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
    iput-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->e:Ljava/util/List;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->f:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->n(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;I)Lteam/opay/odialog/net/AdDataItem;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;)Lteam/opay/pay/widget/LoopViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->l(Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(I)Lteam/opay/odialog/net/AdDataItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->e:Ljava/util/List;

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
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->e:Ljava/util/List;

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

.method private final h(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/widget/LoopViewPager<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->d:Lag8;

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
    new-instance v1, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter$a;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter$a;-><init>(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lteam/opay/pay/widget/LoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final i()V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->b:Lkotlinx/coroutines/l;

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
    iget-object v3, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->c:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    new-instance v6, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter$onScrolling$1;

    .line 15
    .line 16
    invoke-direct {v6, p0, v1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter$onScrolling$1;-><init>(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Ljr2;)V

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
    iput-object v1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->b:Lkotlinx/coroutines/l;

    .line 28
    .line 29
    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->f:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method private final k(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->f:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lx7b;->a:Lx7b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAdpCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getCallbackShow()Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v2, "Banner_ads"

    .line 32
    .line 33
    invoke-virtual/range {v0 .. v5}, Lx7b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lteam/opay/odialog/net/AdDataItem;->setCallbackShow(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public static final n(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->d:Lag8;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->g(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p2}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->k(Lteam/opay/odialog/net/AdDataItem;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->j()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
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
    iget-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

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
    iget-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

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
    iget-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

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
    invoke-direct {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->l(Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 75
    .line 76
    if-ne p2, p1, :cond_3

    .line 77
    .line 78
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->j()V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method public final l(Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Leoa;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Leoa;-><init>(Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final o(Ljava/util/List;)V
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
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->e:Ljava/util/List;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->d:Lag8;

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
    iget-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

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
    invoke-direct {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->g(I)Lteam/opay/odialog/net/AdDataItem;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 46
    .line 47
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->l(Landroid/view/View;Lteam/opay/odialog/net/AdDataItem;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 3
    .param p1    # Lteam/opay/pay/widget/LoopViewPager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/widget/LoopViewPager<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "pager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->a:Lteam/opay/pay/widget/LoopViewPager;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->d:Lag8;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getContext(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lteam/opay/core/android/ContextKt;->d(Landroid/content/Context;)Landroid/app/Activity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v0, v2

    .line 34
    :goto_0
    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    :goto_1
    iput-object v0, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->d:Lag8;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    iput-object v2, p0, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->c:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lteam/opay/pay/ad/OpayAdBannerViewHolderReporter;->h(Lteam/opay/pay/widget/LoopViewPager;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method
