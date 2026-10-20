.class public final Lteam/opay/business/picture/widget/BigImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BigImageView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001XB\'\u0008\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010$\u001a\u00020\u001a2\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0012J\u000f\u0010\'\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0012J\u001f\u0010*\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008*\u0010+R\u0016\u0010.\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u00101\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00103\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0016\u00105\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00100R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010<\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010A\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00100R\u0016\u0010B\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00100R\u0014\u0010C\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010>R\u0016\u0010D\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010-R\u0016\u0010F\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010-R\u0016\u0010H\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010-R\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010N\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010-R0\u0010W\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010Oj\u0004\u0018\u0001`P8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006Y"
    }
    d2 = {
        "Lteam/opay/business/picture/widget/BigImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/RectF;",
        "getMatrixRectF",
        "()Landroid/graphics/RectF;",
        "",
        "onGlobalLayout",
        "()V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "",
        "getScale",
        "()F",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "",
        "onScale",
        "(Landroid/view/ScaleGestureDetector;)Z",
        "onScaleBegin",
        "onScaleEnd",
        "(Landroid/view/ScaleGestureDetector;)V",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "i",
        "j",
        "dx",
        "dy",
        "k",
        "(FF)Z",
        "a",
        "Z",
        "mOnce",
        "b",
        "F",
        "mInitScale",
        "c",
        "mMidScale",
        "d",
        "mMaxScale",
        "Landroid/graphics/Matrix;",
        "e",
        "Landroid/graphics/Matrix;",
        "mScaleMatrix",
        "f",
        "Landroid/view/ScaleGestureDetector;",
        "mScaleGestureDetector",
        "g",
        "I",
        "mLastPointerCount",
        "h",
        "mLastX",
        "mLastY",
        "mTouchSlop",
        "isCanDrag",
        "l",
        "isCheckLeftAndRight",
        "m",
        "isCheckTopAndBottom",
        "Landroid/view/GestureDetector;",
        "n",
        "Landroid/view/GestureDetector;",
        "mGestureDetector",
        "o",
        "isAutoScale",
        "Lkotlin/Function0;",
        "Lteam/opay/core/common/android/Block;",
        "p",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSingleTapConfirm",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnSingleTapConfirm",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSingleTapConfirm",
        "AutoScaleRunnable",
        "business-picture_release"
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
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public final e:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/view/ScaleGestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:I

.field public h:F

.field public i:F

.field public final j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public p:Lkotlin/jvm/functions/Function0;
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/picture/widget/BigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/picture/widget/BigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 6
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lteam/opay/business/picture/widget/BigImageView;->j:I

    .line 9
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lteam/opay/business/picture/widget/BigImageView;->f:Landroid/view/ScaleGestureDetector;

    .line 10
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lteam/opay/business/picture/widget/BigImageView$a;

    invoke-direct {p3, p0}, Lteam/opay/business/picture/widget/BigImageView$a;-><init>(Lteam/opay/business/picture/widget/BigImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lteam/opay/business/picture/widget/BigImageView;->n:Landroid/view/GestureDetector;

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/picture/widget/BigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic c(Lteam/opay/business/picture/widget/BigImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/BigImageView;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/business/picture/widget/BigImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/picture/widget/BigImageView;->b:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lteam/opay/business/picture/widget/BigImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/business/picture/widget/BigImageView;->c:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lteam/opay/business/picture/widget/BigImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/business/picture/widget/BigImageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/business/picture/widget/BigImageView;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method private final getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v1
.end method

.method public static final synthetic h(Lteam/opay/business/picture/widget/BigImageView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/BigImageView;->o:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getOnSingleTapConfirm()Lkotlin/jvm/functions/Function0;
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
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method public final i()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/BigImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    int-to-float v1, v1

    .line 18
    const/4 v4, 0x0

    .line 19
    cmpl-float v3, v3, v1

    .line 20
    .line 21
    if-ltz v3, :cond_1

    .line 22
    .line 23
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 24
    .line 25
    cmpl-float v5, v3, v4

    .line 26
    .line 27
    if-lez v5, :cond_0

    .line 28
    .line 29
    neg-float v3, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    iget v5, v0, Landroid/graphics/RectF;->right:F

    .line 33
    .line 34
    cmpg-float v6, v5, v1

    .line 35
    .line 36
    if-gez v6, :cond_2

    .line 37
    .line 38
    sub-float v3, v1, v5

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    int-to-float v2, v2

    .line 47
    cmpl-float v5, v5, v2

    .line 48
    .line 49
    if-ltz v5, :cond_4

    .line 50
    .line 51
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 52
    .line 53
    cmpl-float v6, v5, v4

    .line 54
    .line 55
    if-lez v6, :cond_3

    .line 56
    .line 57
    neg-float v4, v5

    .line 58
    :cond_3
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 59
    .line 60
    cmpg-float v6, v5, v2

    .line 61
    .line 62
    if-gez v6, :cond_4

    .line 63
    .line 64
    sub-float v4, v2, v5

    .line 65
    .line 66
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/high16 v6, 0x40000000    # 2.0f

    .line 71
    .line 72
    cmpg-float v5, v5, v1

    .line 73
    .line 74
    if-gez v5, :cond_5

    .line 75
    .line 76
    div-float/2addr v1, v6

    .line 77
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 78
    .line 79
    sub-float/2addr v1, v3

    .line 80
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    div-float/2addr v3, v6

    .line 85
    add-float/2addr v3, v1

    .line 86
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    cmpg-float v1, v1, v2

    .line 91
    .line 92
    if-gez v1, :cond_6

    .line 93
    .line 94
    div-float/2addr v2, v6

    .line 95
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 96
    .line 97
    sub-float/2addr v2, v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    div-float/2addr v0, v6

    .line 103
    add-float v4, v2, v0

    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 106
    .line 107
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final j()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/BigImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    cmpl-float v5, v3, v4

    .line 17
    .line 18
    if-lez v5, :cond_0

    .line 19
    .line 20
    iget-boolean v5, p0, Lteam/opay/business/picture/widget/BigImageView;->m:Z

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    neg-float v3, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    cmpg-float v6, v5, v2

    .line 31
    .line 32
    if-gez v6, :cond_1

    .line 33
    .line 34
    iget-boolean v6, p0, Lteam/opay/business/picture/widget/BigImageView;->m:Z

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    sub-float v3, v2, v5

    .line 39
    .line 40
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 41
    .line 42
    cmpl-float v5, v2, v4

    .line 43
    .line 44
    if-lez v5, :cond_2

    .line 45
    .line 46
    iget-boolean v5, p0, Lteam/opay/business/picture/widget/BigImageView;->l:Z

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    neg-float v4, v2

    .line 51
    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    int-to-float v1, v1

    .line 54
    cmpg-float v2, v0, v1

    .line 55
    .line 56
    if-gez v2, :cond_3

    .line 57
    .line 58
    iget-boolean v2, p0, Lteam/opay/business/picture/widget/BigImageView;->l:Z

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    sub-float v4, v1, v0

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final k(FF)Z
    .locals 3

    .line 1
    mul-float p1, p1, p1

    .line 2
    .line 3
    mul-float p2, p2, p2

    .line 4
    .line 5
    add-float/2addr p1, p2

    .line 6
    float-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iget v0, p0, Lteam/opay/business/picture/widget/BigImageView;->j:I

    .line 12
    .line 13
    int-to-double v0, v0

    .line 14
    cmpl-double v2, p1, v0

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/BigImageView;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    int-to-float v4, v0

    .line 29
    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    .line 31
    mul-float v4, v4, v5

    .line 32
    .line 33
    int-to-float v6, v2

    .line 34
    div-float/2addr v4, v6

    .line 35
    int-to-float v6, v1

    .line 36
    mul-float v6, v6, v5

    .line 37
    .line 38
    int-to-float v5, v3

    .line 39
    div-float/2addr v6, v5

    .line 40
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iput v4, p0, Lteam/opay/business/picture/widget/BigImageView;->b:F

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    int-to-float v5, v5

    .line 48
    mul-float v5, v5, v4

    .line 49
    .line 50
    iput v5, p0, Lteam/opay/business/picture/widget/BigImageView;->d:F

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    int-to-float v6, v5

    .line 54
    mul-float v4, v4, v6

    .line 55
    .line 56
    iput v4, p0, Lteam/opay/business/picture/widget/BigImageView;->c:F

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    div-int/2addr v4, v5

    .line 63
    div-int/2addr v2, v5

    .line 64
    sub-int/2addr v4, v2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    div-int/2addr v2, v5

    .line 70
    div-int/2addr v3, v5

    .line 71
    sub-int/2addr v2, v3

    .line 72
    iget-object v3, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 73
    .line 74
    int-to-float v4, v4

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 80
    .line 81
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView;->b:F

    .line 82
    .line 83
    div-int/2addr v0, v5

    .line 84
    int-to-float v0, v0

    .line 85
    div-int/2addr v1, v5

    .line 86
    int-to-float v1, v1

    .line 87
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lteam/opay/business/picture/widget/BigImageView;->a:Z

    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/BigImageView;->getScale()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    iget v2, p0, Lteam/opay/business/picture/widget/BigImageView;->d:F

    .line 23
    .line 24
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    .line 26
    cmpg-float v2, v0, v2

    .line 27
    .line 28
    if-gez v2, :cond_1

    .line 29
    .line 30
    cmpl-float v2, v1, v4

    .line 31
    .line 32
    if-gtz v2, :cond_2

    .line 33
    .line 34
    :cond_1
    iget v2, p0, Lteam/opay/business/picture/widget/BigImageView;->b:F

    .line 35
    .line 36
    cmpl-float v2, v0, v2

    .line 37
    .line 38
    if-lez v2, :cond_4

    .line 39
    .line 40
    cmpg-float v2, v1, v4

    .line 41
    .line 42
    if-gez v2, :cond_4

    .line 43
    .line 44
    :cond_2
    mul-float v2, v0, v1

    .line 45
    .line 46
    iget v4, p0, Lteam/opay/business/picture/widget/BigImageView;->b:F

    .line 47
    .line 48
    cmpg-float v2, v2, v4

    .line 49
    .line 50
    if-gez v2, :cond_3

    .line 51
    .line 52
    div-float v1, v4, v0

    .line 53
    .line 54
    :cond_3
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/BigImageView;->i()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "event"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->n:Landroid/view/GestureDetector;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->f:Landroid/view/ScaleGestureDetector;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v3, p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-float/2addr v4, v6

    .line 37
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-float/2addr v5, v6

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    int-to-float v3, p1

    .line 46
    div-float/2addr v4, v3

    .line 47
    div-float/2addr v5, v3

    .line 48
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView;->g:I

    .line 49
    .line 50
    if-eq v3, p1, :cond_2

    .line 51
    .line 52
    iput-boolean v2, p0, Lteam/opay/business/picture/widget/BigImageView;->k:Z

    .line 53
    .line 54
    iput v4, p0, Lteam/opay/business/picture/widget/BigImageView;->h:F

    .line 55
    .line 56
    iput v5, p0, Lteam/opay/business/picture/widget/BigImageView;->i:F

    .line 57
    .line 58
    :cond_2
    iput p1, p0, Lteam/opay/business/picture/widget/BigImageView;->g:I

    .line 59
    .line 60
    invoke-direct {p0}, Lteam/opay/business/picture/widget/BigImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    if-eqz p2, :cond_a

    .line 74
    .line 75
    if-eq p2, v0, :cond_9

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    if-eq p2, v3, :cond_3

    .line 79
    .line 80
    const/4 p1, 0x3

    .line 81
    if-eq p2, p1, :cond_9

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    float-to-double v8, p2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    int-to-double v10, p2

    .line 95
    add-double/2addr v10, v6

    .line 96
    cmpl-double p2, v8, v10

    .line 97
    .line 98
    if-gtz p2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 104
    .line 105
    .line 106
    :cond_4
    iget p2, p0, Lteam/opay/business/picture/widget/BigImageView;->h:F

    .line 107
    .line 108
    sub-float p2, v4, p2

    .line 109
    .line 110
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView;->i:F

    .line 111
    .line 112
    sub-float v3, v5, v3

    .line 113
    .line 114
    iget-boolean v6, p0, Lteam/opay/business/picture/widget/BigImageView;->k:Z

    .line 115
    .line 116
    if-nez v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {p0, p2, v3}, Lteam/opay/business/picture/widget/BigImageView;->k(FF)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iput-boolean v6, p0, Lteam/opay/business/picture/widget/BigImageView;->k:Z

    .line 123
    .line 124
    :cond_5
    iget-boolean v6, p0, Lteam/opay/business/picture/widget/BigImageView;->k:Z

    .line 125
    .line 126
    if-eqz v6, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_8

    .line 133
    .line 134
    iput-boolean v0, p0, Lteam/opay/business/picture/widget/BigImageView;->m:Z

    .line 135
    .line 136
    iput-boolean v0, p0, Lteam/opay/business/picture/widget/BigImageView;->l:Z

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    int-to-float v7, v7

    .line 147
    cmpg-float v6, v6, v7

    .line 148
    .line 149
    if-gez v6, :cond_6

    .line 150
    .line 151
    iput-boolean v2, p0, Lteam/opay/business/picture/widget/BigImageView;->l:Z

    .line 152
    .line 153
    const/4 p2, 0x0

    .line 154
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    int-to-float v6, v6

    .line 163
    cmpg-float p1, p1, v6

    .line 164
    .line 165
    if-gez p1, :cond_7

    .line 166
    .line 167
    iput-boolean v2, p0, Lteam/opay/business/picture/widget/BigImageView;->m:Z

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    move v1, v3

    .line 171
    :goto_1
    iget-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 172
    .line 173
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/BigImageView;->j()V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->e:Landroid/graphics/Matrix;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iput v4, p0, Lteam/opay/business/picture/widget/BigImageView;->h:F

    .line 185
    .line 186
    iput v5, p0, Lteam/opay/business/picture/widget/BigImageView;->i:F

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_9
    iput v2, p0, Lteam/opay/business/picture/widget/BigImageView;->g:I

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    float-to-double v1, p2

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    int-to-double v3, p2

    .line 202
    add-double/2addr v3, v6

    .line 203
    cmpl-double p2, v1, v3

    .line 204
    .line 205
    if-gtz p2, :cond_b

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 211
    .line 212
    .line 213
    :cond_b
    :goto_2
    return v0
.end method

.method public final setOnSingleTapConfirm(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/business/picture/widget/BigImageView;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
