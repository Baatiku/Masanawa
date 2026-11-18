.class public abstract Lteam/opay/business/widget/looper/BaseRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BaseRecycleView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001:\u0001PB\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\nJ\u000f\u0010\u001e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\nJ\u0017\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010/R\"\u00108\u001a\u0002018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u0010@\u001a\u0002098\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u001b\u0010H\u001a\u00020E8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010(\u001a\u0004\u0008F\u0010GR\u001f\u0010L\u001a\u00060IR\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010(\u001a\u0004\u0008J\u0010KR\u0011\u0010O\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010N\u00a8\u0006Q"
    }
    d2 = {
        "Lteam/opay/business/widget/looper/BaseRecycleView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "h",
        "()V",
        "",
        "widthSpec",
        "heightSpec",
        "onMeasure",
        "(II)V",
        "Lca7;",
        "onPageChangeListener",
        "setOnPageChangeListener",
        "(Lca7;)V",
        "Lfa7;",
        "pageTransformer",
        "setPageTransformer",
        "(Lfa7;)V",
        "Lteam/opay/business/widget/looper/ViewPagerIndicator;",
        "indicator",
        "num",
        "p",
        "(Lteam/opay/business/widget/looper/ViewPagerIndicator;I)V",
        "i",
        "o",
        "visibility",
        "onWindowVisibilityChanged",
        "(I)V",
        "a",
        "Landroid/content/Context;",
        "b",
        "Landroid/util/AttributeSet;",
        "Landroid/os/Handler;",
        "c",
        "Lid8;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler",
        "Lteam/opay/business/widget/looper/OmsPagerSnapHelper;",
        "d",
        "getPagerSnapHelper",
        "()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;",
        "pagerSnapHelper",
        "",
        "e",
        "Z",
        "getDisableLoop",
        "()Z",
        "setDisableLoop",
        "(Z)V",
        "disableLoop",
        "",
        "f",
        "J",
        "getDELAYED_TIME",
        "()J",
        "setDELAYED_TIME",
        "(J)V",
        "DELAYED_TIME",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "g",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "running",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getMLinearLayoutManager",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "mLinearLayoutManager",
        "Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;",
        "getMRunnable",
        "()Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;",
        "mRunnable",
        "getCurrentPosition",
        "()I",
        "currentPosition",
        "InnerRunnable",
        "business-widget_release"
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:J

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lteam/opay/business/widget/looper/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->a:Landroid/content/Context;

    iput-object p2, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->b:Landroid/util/AttributeSet;

    .line 5
    new-instance p1, Lfv0;

    invoke-direct {p1}, Lfv0;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->c:Lid8;

    .line 6
    new-instance p1, Lgv0;

    invoke-direct {p1}, Lgv0;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->d:Lid8;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->e:Z

    const-wide/16 p1, 0x1388

    .line 8
    iput-wide p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->f:J

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Lhv0;

    invoke-direct {p1, p0}, Lhv0;-><init>(Lteam/opay/business/widget/looper/BaseRecycleView;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->h:Lid8;

    .line 11
    new-instance p1, Liv0;

    invoke-direct {p1, p0}, Liv0;-><init>(Lteam/opay/business/widget/looper/BaseRecycleView;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->i:Lid8;

    .line 12
    invoke-direct {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->h()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/business/widget/looper/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/widget/looper/BaseRecycleView;->j()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/widget/looper/BaseRecycleView;->n()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lteam/opay/business/widget/looper/BaseRecycleView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->k(Lteam/opay/business/widget/looper/BaseRecycleView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/widget/looper/BaseRecycleView;)Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->l(Lteam/opay/business/widget/looper/BaseRecycleView;)Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/business/widget/looper/BaseRecycleView;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/business/widget/looper/BaseRecycleView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMRunnable()Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getMLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final j()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final k(Lteam/opay/business/widget/looper/BaseRecycleView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final l(Lteam/opay/business/widget/looper/BaseRecycleView;)Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;-><init>(Lteam/opay/business/widget/looper/BaseRecycleView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final n()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->n()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDELAYED_TIME()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDisableLoop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method public i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getDisableLoop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-direct {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getMHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getMRunnable()Lteam/opay/business/widget/looper/BaseRecycleView$InnerRunnable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getDELAYED_TIME()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getMHandler()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->i()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->o()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public final p(Lteam/opay/business/widget/looper/ViewPagerIndicator;I)V
    .locals 0
    .param p1    # Lteam/opay/business/widget/looper/ViewPagerIndicator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p0, p2}, Lteam/opay/business/widget/looper/ViewPagerIndicator;->j(Lteam/opay/business/widget/looper/BaseRecycleView;I)Lteam/opay/business/widget/looper/ViewPagerIndicator;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public setDELAYED_TIME(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public setDisableLoop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/widget/looper/BaseRecycleView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnPageChangeListener(Lca7;)V
    .locals 1
    .param p1    # Lca7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onPageChangeListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->k(Lca7;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setPageTransformer(Lfa7;)V
    .locals 1
    .param p1    # Lfa7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pageTransformer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/looper/BaseRecycleView;->getPagerSnapHelper()Lteam/opay/business/widget/looper/OmsPagerSnapHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/business/widget/looper/OmsPagerSnapHelper;->r(Lfa7;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
