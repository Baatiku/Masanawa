.class public final Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;
.super Ljava/lang/Object;
.source "BillMoreWidgetReporter.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroidx/lifecycle/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\'\u0010\r\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u001f\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J)\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "Landroidx/lifecycle/e;",
        "<init>",
        "()V",
        "",
        "b",
        "Lteam/opay/pay/payment/bill/MoreMarketingWidget;",
        "widgetData",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "Lag8;",
        "lifecycleOwner",
        "d",
        "(Lteam/opay/pay/payment/bill/MoreMarketingWidget;Landroidx/recyclerview/widget/RecyclerView;Lag8;)V",
        "onScrollChanged",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "e",
        "(Lag8;Landroidx/lifecycle/Lifecycle$Event;)V",
        "data",
        "",
        "start",
        "end",
        "c",
        "(Lteam/opay/pay/payment/bill/MoreMarketingWidget;II)V",
        "",
        "Lteam/opay/pay/payment/bill/WidgetModuleList;",
        "a",
        "Ljava/util/List;",
        "reportDatas",
        "Lkotlinx/coroutines/l;",
        "Lkotlinx/coroutines/l;",
        "reportJob",
        "Lag8;",
        "owner",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mRecyclerView",
        "Lteam/opay/pay/payment/bill/MoreMarketingWidget;",
        "mWidgetData",
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/WidgetModuleList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lag8;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lteam/opay/pay/payment/bill/MoreMarketingWidget;
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
    iput-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->a:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->h(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->a:Ljava/util/List;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v0, v1

    .line 32
    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    :cond_3
    if-nez v1, :cond_4

    .line 40
    .line 41
    return-void

    .line 42
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->e:Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p0, v0, v2, v1}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->c(Lteam/opay/pay/payment/bill/MoreMarketingWidget;II)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/pay/payment/bill/MoreMarketingWidget;II)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getWidgetModuleList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_1
    if-ltz p2, :cond_6

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge p2, v2, :cond_6

    .line 22
    .line 23
    if-ltz p3, :cond_6

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge p3, v2, :cond_6

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    if-gt p2, p3, :cond_5

    .line 37
    .line 38
    :goto_0
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lteam/opay/pay/payment/bill/WidgetModuleList;

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    iget-object v4, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->a:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    sget-object v4, Lx7b;->a:Lx7b;

    .line 68
    .line 69
    const-string v5, "activity_id"

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v6, "content_id"

    .line 80
    .line 81
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getMid()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const/4 v7, 0x2

    .line 90
    new-array v7, v7, [Lkotlin/Pair;

    .line 91
    .line 92
    const/4 v8, 0x0

    .line 93
    aput-object v5, v7, v8

    .line 94
    .line 95
    aput-object v6, v7, v0

    .line 96
    .line 97
    const-string v5, "More_activtiy_show"

    .line 98
    .line 99
    invoke-virtual {v4, v5, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_4
    if-eq p2, p3, :cond_5

    .line 106
    .line 107
    add-int/2addr p2, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iput-object v2, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->a:Ljava/util/List;

    .line 110
    .line 111
    :cond_6
    return-void
.end method

.method public final d(Lteam/opay/pay/payment/bill/MoreMarketingWidget;Landroidx/recyclerview/widget/RecyclerView;Lag8;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/bill/MoreMarketingWidget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recycler"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->c:Lag8;

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->e:Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

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
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-direct {p0}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->b()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 60
    .line 61
    if-ne p2, p1, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->a:Ljava/util/List;

    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->b:Lkotlinx/coroutines/l;

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
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->c:Lag8;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    new-instance v5, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter$onScrollChanged$1;

    .line 21
    .line 22
    invoke-direct {v5, p0, v1}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter$onScrollChanged$1;-><init>(Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->b:Lkotlinx/coroutines/l;

    .line 34
    .line 35
    return-void
.end method
