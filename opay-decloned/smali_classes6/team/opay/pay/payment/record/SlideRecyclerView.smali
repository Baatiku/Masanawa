.class public final Lteam/opay/pay/payment/record/SlideRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SlideRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/record/SlideRecyclerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 @2\u00020\u0001:\u0001AB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010!R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010,R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010,R\u0016\u00100\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010,R\u0016\u00103\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R$\u0010;\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0016\u0010=\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010#R\u0016\u0010?\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010#\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/pay/payment/record/SlideRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "x",
        "y",
        "d",
        "(II)I",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "onTouchEvent",
        "",
        "computeScroll",
        "()V",
        "b",
        "()Z",
        "a",
        "f",
        "event",
        "c",
        "(Landroid/view/MotionEvent;)V",
        "Landroid/view/VelocityTracker;",
        "Landroid/view/VelocityTracker;",
        "mVelocityTracker",
        "I",
        "mTouchSlop",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "mTouchFrame",
        "Landroid/widget/Scroller;",
        "Landroid/widget/Scroller;",
        "mScroller",
        "",
        "F",
        "mLastX",
        "mFirstX",
        "g",
        "mFirstY",
        "h",
        "Z",
        "mIsSlide",
        "Landroid/view/ViewGroup;",
        "i",
        "Landroid/view/ViewGroup;",
        "getMFlingView",
        "()Landroid/view/ViewGroup;",
        "setMFlingView",
        "(Landroid/view/ViewGroup;)V",
        "mFlingView",
        "j",
        "mPosition",
        "k",
        "mMenuViewWidth",
        "l",
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
.field public static final l:Lteam/opay/pay/payment/record/SlideRecyclerView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/VelocityTracker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroid/widget/Scroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F

.field public h:Z

.field public i:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/record/SlideRecyclerView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/record/SlideRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/record/SlideRecyclerView;->l:Lteam/opay/pay/payment/record/SlideRecyclerView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/payment/record/SlideRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/pay/payment/record/SlideRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->b:I

    .line 5
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->b:I

    .line 7
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    return-void
.end method

.method private final d(II)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->c:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->c:Landroid/graphics/Rect;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    sub-int/2addr v3, v4

    .line 41
    :goto_0
    if-ge v1, v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v6, "getChildAt(...)"

    .line 48
    .line 49
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ne v5, v4, :cond_2

    .line 66
    .line 67
    add-int/2addr v0, v3

    .line 68
    return v0

    .line 69
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    :cond_2
    return-void
.end method

.method public final getMFlingView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 7
    .line 8
    instance-of v0, v0, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/record/SlideRecyclerView;->c(Landroid/view/MotionEvent;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v3, :cond_8

    .line 34
    .line 35
    if-eq v3, v5, :cond_7

    .line 36
    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x3e8

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v4, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/high16 v6, 0x44160000    # 600.0f

    .line 74
    .line 75
    cmpl-float v4, v4, v6

    .line 76
    .line 77
    if-lez v4, :cond_5

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    cmpl-float v1, v1, v3

    .line 88
    .line 89
    if-gtz v1, :cond_6

    .line 90
    .line 91
    :cond_5
    int-to-float v0, v0

    .line 92
    iget v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->f:F

    .line 93
    .line 94
    sub-float v1, v0, v1

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->b:I

    .line 101
    .line 102
    int-to-float v3, v3

    .line 103
    cmpl-float v1, v1, v3

    .line 104
    .line 105
    if-ltz v1, :cond_d

    .line 106
    .line 107
    iget v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->f:F

    .line 108
    .line 109
    sub-float/2addr v0, v1

    .line 110
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    int-to-float v1, v2

    .line 115
    iget v2, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->g:F

    .line 116
    .line 117
    sub-float/2addr v1, v2

    .line 118
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    cmpl-float v0, v0, v1

    .line 123
    .line 124
    if-lez v0, :cond_d

    .line 125
    .line 126
    :cond_6
    iput-boolean v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->h:Z

    .line 127
    .line 128
    return v5

    .line 129
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->f()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    iget-object v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_9

    .line 142
    .line 143
    iget-object v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 144
    .line 145
    if-eqz v3, :cond_9

    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 148
    .line 149
    .line 150
    :cond_9
    int-to-float v3, v0

    .line 151
    iput v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->e:F

    .line 152
    .line 153
    iput v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->f:F

    .line 154
    .line 155
    int-to-float v3, v2

    .line 156
    iput v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->g:F

    .line 157
    .line 158
    invoke-direct {p0, v0, v2}, Lteam/opay/pay/payment/record/SlideRecyclerView;->d(II)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->j:I

    .line 163
    .line 164
    const/4 v2, -0x1

    .line 165
    if-eq v0, v2, :cond_d

    .line 166
    .line 167
    iget-object v3, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const-string v7, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 174
    .line 175
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 179
    .line 180
    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    sub-int/2addr v0, v6

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .line 191
    iput-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 192
    .line 193
    if-eqz v3, :cond_a

    .line 194
    .line 195
    if-eq v0, v3, :cond_a

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {v3, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 204
    .line 205
    .line 206
    :cond_a
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 207
    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-ne v0, v4, :cond_b

    .line 215
    .line 216
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 217
    .line 218
    if-eqz v0, :cond_c

    .line 219
    .line 220
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_c

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    goto :goto_1

    .line 231
    :cond_b
    const/4 v1, -0x1

    .line 232
    :cond_c
    :goto_1
    iput v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 233
    .line 234
    :cond_d
    :goto_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    iget v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->j:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_e

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/record/SlideRecyclerView;->c(Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eq p1, v2, :cond_3

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    if-eq p1, v5, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    iget p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 37
    .line 38
    if-eq p1, v1, :cond_d

    .line 39
    .line 40
    iget p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->e:F

    .line 41
    .line 42
    sub-float/2addr p1, v0

    .line 43
    iget-object v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_0
    int-to-float v1, v1

    .line 54
    add-float/2addr v1, p1

    .line 55
    iget v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 56
    .line 57
    int-to-float v5, v5

    .line 58
    cmpg-float v5, v1, v5

    .line 59
    .line 60
    if-gtz v5, :cond_2

    .line 61
    .line 62
    cmpl-float v1, v1, v3

    .line 63
    .line 64
    if-lez v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    float-to-int p1, p1

    .line 71
    invoke-virtual {v1, p1, v4}, Landroid/view/View;->scrollBy(II)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iput v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->e:F

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_3
    iget p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 79
    .line 80
    if-eq p1, v1, :cond_c

    .line 81
    .line 82
    iget-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    move v6, p1

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v6, 0x0

    .line 93
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    const/16 v0, 0x3e8

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    const/4 p1, 0x0

    .line 112
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->a:Landroid/view/VelocityTracker;

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    :cond_7
    const/high16 v0, -0x3bea0000    # -600.0f

    .line 121
    .line 122
    cmpg-float p1, p1, v0

    .line 123
    .line 124
    if-gez p1, :cond_8

    .line 125
    .line 126
    iget-object v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 127
    .line 128
    if-eqz v5, :cond_b

    .line 129
    .line 130
    iget p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 131
    .line 132
    sub-int v8, p1, v6

    .line 133
    .line 134
    sub-int/2addr p1, v6

    .line 135
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_8
    const/high16 p1, 0x44160000    # 600.0f

    .line 146
    .line 147
    cmpl-float p1, v3, p1

    .line 148
    .line 149
    if-ltz p1, :cond_9

    .line 150
    .line 151
    iget-object v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 152
    .line 153
    if-eqz v5, :cond_b

    .line 154
    .line 155
    neg-int v8, v6

    .line 156
    const/4 v9, 0x0

    .line 157
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    iget p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 167
    .line 168
    div-int/lit8 v0, p1, 0x2

    .line 169
    .line 170
    if-lt v6, v0, :cond_a

    .line 171
    .line 172
    iget-object v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 173
    .line 174
    if-eqz v5, :cond_b

    .line 175
    .line 176
    sub-int v8, p1, v6

    .line 177
    .line 178
    sub-int/2addr p1, v6

    .line 179
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    const/4 v7, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    iget-object v5, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->d:Landroid/widget/Scroller;

    .line 190
    .line 191
    if-eqz v5, :cond_b

    .line 192
    .line 193
    neg-int v8, v6

    .line 194
    const/4 v9, 0x0

    .line 195
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 204
    .line 205
    .line 206
    :cond_c
    iput v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->k:I

    .line 207
    .line 208
    iput-boolean v4, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->h:Z

    .line 209
    .line 210
    iput v1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->j:I

    .line 211
    .line 212
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->f()V

    .line 213
    .line 214
    .line 215
    :cond_d
    :goto_4
    return v2

    .line 216
    :cond_e
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->a()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->f()V

    .line 220
    .line 221
    .line 222
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    return p1
.end method

.method public final setMFlingView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/record/SlideRecyclerView;->i:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method
