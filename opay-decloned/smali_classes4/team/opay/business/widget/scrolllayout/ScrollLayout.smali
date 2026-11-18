.class public final Lteam/opay/business/widget/scrolllayout/ScrollLayout;
.super Landroid/view/ViewGroup;
.source "ScrollLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0001XB\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J7\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u00142\u0006\u0010%\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008&\u0010$J\u000f\u0010\'\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u001dJ\u000f\u0010(\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008(\u0010\u001dJ\u000f\u0010\u0016\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010)J\u000f\u0010*\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008*\u0010\u001dJ\u0015\u0010-\u001a\u00020\r2\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\u00020\r2\u0006\u0010%\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00081\u0010\u001dR\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u000203028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u001e\u0010:\u001a\n 8*\u0004\u0018\u000107078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00109R\u0016\u0010=\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010?\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010<R\u0018\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010D\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010CR\u0018\u0010J\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010K\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010IR\u0018\u0010L\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010IR\u0016\u0010M\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010<R\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010<R\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010<R\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010U\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010SR\u0016\u0010W\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010C\u00a8\u0006Y"
    }
    d2 = {
        "Lteam/opay/business/widget/scrolllayout/ScrollLayout;",
        "Landroid/view/ViewGroup;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "getDistanceByMode",
        "()I",
        "left",
        "",
        "setReleasePosition",
        "(I)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "onFinishInflate",
        "()V",
        "Landroid/view/ViewGroup$LayoutParams;",
        "generateLayoutParams",
        "(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;",
        "Landroid/view/MotionEvent;",
        "ev",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "event",
        "onTouchEvent",
        "computeScroll",
        "i",
        "()Z",
        "j",
        "Lwa7;",
        "listener",
        "setScrollListener",
        "(Lwa7;)V",
        "k",
        "(Landroid/view/MotionEvent;)V",
        "o",
        "",
        "Landroid/graphics/Rect;",
        "a",
        "Ljava/util/List;",
        "childrenBounds",
        "Landroidx/customview/widget/ViewDragHelper;",
        "kotlin.jvm.PlatformType",
        "Landroidx/customview/widget/ViewDragHelper;",
        "dragHelper",
        "c",
        "I",
        "mTouchSlop",
        "d",
        "mMode",
        "e",
        "Lwa7;",
        "f",
        "Z",
        "supportLeftScroll",
        "g",
        "supportRightScroll",
        "Landroid/view/View;",
        "h",
        "Landroid/view/View;",
        "leftView",
        "rightView",
        "contentView",
        "leftViewWidth",
        "rightViewWidth",
        "m",
        "releasePositionX",
        "",
        "n",
        "F",
        "releasePositionY",
        "lastX",
        "p",
        "perforContentClick",
        "DragCallback",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroidx/customview/widget/ViewDragHelper;

.field public c:I

.field public d:I

.field public e:Lwa7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I

.field public n:F

.field public o:F

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->a:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;-><init>(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->d:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->p:Z

    .line 32
    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->c:I

    .line 42
    .line 43
    sget-object v1, Lteam/opay/business/widget/R$styleable;->arap_ScrollLayout:[I

    .line 44
    .line 45
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "obtainStyledAttributes(...)"

    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget p2, Lteam/opay/business/widget/R$styleable;->arap_ScrollLayout_arap_mode:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->d:I

    .line 61
    .line 62
    sget p2, Lteam/opay/business/widget/R$styleable;->arap_ScrollLayout_support_left_scroll:I

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput-boolean p2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->f:Z

    .line 70
    .line 71
    sget p2, Lteam/opay/business/widget/R$styleable;->arap_ScrollLayout_support_right_scroll:I

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput-boolean p2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->g:Z

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->m(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->n(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->getDistanceByMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lteam/opay/business/widget/scrolllayout/ScrollLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->setReleasePosition(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getDistanceByMode()I
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->k:I

    .line 9
    .line 10
    iget v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->l:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->l:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->k:I

    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method public static final synthetic h(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->e:Lwa7;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lwa7;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final n(Lteam/opay/business/widget/scrolllayout/ScrollLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->e:Lwa7;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lwa7;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final setReleasePosition(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->l:I

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-le p1, v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->getDistanceByMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    neg-int p1, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iput p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->m:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->n(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/core/view/a;->i0(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->j:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 9
    .line 10
    invoke-virtual {v2, v1, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/core/view/a;->i0(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sub-int/2addr v2, v1

    .line 32
    if-ltz v2, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    check-cast v3, Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 45
    .line 46
    invoke-virtual {v3}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->i()V

    .line 47
    .line 48
    .line 49
    if-eq v1, v2, :cond_3

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->p:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->o:F

    .line 25
    .line 26
    sub-float/2addr p1, v0

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->c:I

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    cmpl-float p1, p1, v0

    .line 35
    .line 36
    if-lez p1, :cond_5

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->p:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-boolean p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->p:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->e:Lwa7;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Lwa7;->b()V

    .line 51
    .line 52
    .line 53
    :cond_3
    iput-boolean v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->p:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->o:F

    .line 61
    .line 62
    :cond_5
    :goto_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->m:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->m:I

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->n:F

    .line 6
    .line 7
    float-to-int v2, v2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/business/widget/R$id;->leftLayout:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->h:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lteam/opay/business/widget/R$id;->rightLayout:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->i:Landroid/view/View;

    .line 19
    .line 20
    sget v0, Lteam/opay/business/widget/R$id;->contentLayout:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->j:Landroid/view/View;

    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->h:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v1, Lt4d;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lt4d;-><init>(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->i:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v1, Lu4d;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lu4d;-><init>(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ev"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->Q(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    add-int/lit8 p3, p2, 0x1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    check-cast p4, Landroid/view/View;

    .line 23
    .line 24
    iget-object p5, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/graphics/Rect;

    .line 31
    .line 32
    iget p5, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    invoke-virtual {p4, p5, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    .line 41
    .line 42
    .line 43
    move p2, p3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 3
    .line 4
    .line 5
    move-result v7

    .line 6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    add-int/lit8 v13, v12, 0x1

    .line 28
    .line 29
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v14, v0

    .line 34
    check-cast v14, Landroid/view/View;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, v14

    .line 39
    move/from16 v2, p1

    .line 40
    .line 41
    move/from16 v4, p2

    .line 42
    .line 43
    move v5, v11

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v6, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lt v12, v0, :cond_0

    .line 54
    .line 55
    iget-object v0, v6, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->a:Ljava/util/List;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, v6, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->a:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/graphics/Rect;

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    if-nez v12, :cond_1

    .line 75
    .line 76
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, v6, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->k:I

    .line 81
    .line 82
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    mul-int/lit8 v2, v2, 0x2

    .line 87
    .line 88
    sub-int v2, v7, v2

    .line 89
    .line 90
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int v3, v7, v3

    .line 95
    .line 96
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    .line 102
    .line 103
    :cond_1
    const/4 v2, 0x1

    .line 104
    if-ne v12, v2, :cond_2

    .line 105
    .line 106
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iput v2, v6, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->l:I

    .line 111
    .line 112
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sub-int v2, v7, v2

    .line 117
    .line 118
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v0, v2, v9, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    .line 124
    .line 125
    :cond_2
    if-ne v12, v1, :cond_3

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v9, v9, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    move v12, v13

    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_4
    invoke-virtual {p0, v10, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->k(Landroid/view/MotionEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->b:Landroidx/customview/widget/ViewDragHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->G(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public final setScrollListener(Lwa7;)V
    .locals 1
    .param p1    # Lwa7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->e:Lwa7;

    .line 7
    .line 8
    return-void
.end method
