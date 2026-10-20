.class public final Lteam/opay/pay/kyc/view/ZoomImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ZoomImageView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/view/ZoomImageView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 M2\u00020\u00012\u00020\u0002:\u0001NB\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u000f\u0010\u0015\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000cR\u0016\u0010\u0018\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R*\u0010/\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00106\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u00109\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u00101\u001a\u0004\u00087\u00103\"\u0004\u00088\u00105R\"\u0010=\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00101\u001a\u0004\u0008;\u00103\"\u0004\u0008<\u00105R\"\u0010A\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00101\u001a\u0004\u0008?\u00103\"\u0004\u0008@\u00105R\"\u0010C\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010&\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u0014\u0010H\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u00103R\u0014\u0010L\u001a\u00020I8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lteam/opay/pay/kyc/view/ZoomImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "h",
        "()V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "onGlobalLayout",
        "g",
        "a",
        "Landroid/content/Context;",
        "mContext",
        "Landroid/view/ScaleGestureDetector;",
        "b",
        "Landroid/view/ScaleGestureDetector;",
        "scaleGestureDetector",
        "Landroid/view/GestureDetector;",
        "c",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Landroid/graphics/Matrix;",
        "d",
        "Landroid/graphics/Matrix;",
        "mMatrix",
        "e",
        "Z",
        "isFirstLoad",
        "Lkotlin/Function0;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "getOnClickAction",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnClickAction",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onClickAction",
        "",
        "F",
        "getDoubleTouchX",
        "()F",
        "setDoubleTouchX",
        "(F)V",
        "doubleTouchX",
        "getDoubleTouchY",
        "setDoubleTouchY",
        "doubleTouchY",
        "i",
        "getTranslateStartPointX",
        "setTranslateStartPointX",
        "translateStartPointX",
        "j",
        "getTranslateStartPointY",
        "setTranslateStartPointY",
        "translateStartPointY",
        "k",
        "isDrag",
        "()Z",
        "setDrag",
        "(Z)V",
        "getScale",
        "scale",
        "Landroid/graphics/RectF;",
        "getMatrixRectF",
        "()Landroid/graphics/RectF;",
        "matrixRectF",
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
.field public static final l:Lteam/opay/pay/kyc/view/ZoomImageView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m:F


# instance fields
.field public a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/view/ScaleGestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Z

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

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/view/ZoomImageView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/view/ZoomImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/view/ZoomImageView;->l:Lteam/opay/pay/kyc/view/ZoomImageView$Companion;

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    sput v0, Lteam/opay/pay/kyc/view/ZoomImageView;->m:F

    .line 12
    .line 13
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

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->e:Z

    .line 3
    iput-boolean v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 4
    iput-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->h()V

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

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->e:Z

    .line 8
    iput-boolean p2, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 9
    iput-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->h()V

    return-void
.end method

.method public static final synthetic c(Lteam/opay/pay/kyc/view/ZoomImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e()F
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/kyc/view/ZoomImageView;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic f(Lteam/opay/pay/kyc/view/ZoomImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final getMatrixRectF()Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method private final getScale()F
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    return v0
.end method


# virtual methods
.method public final g()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

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
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 110
    .line 111
    .line 112
    :cond_7
    return-void
.end method

.method public final getDoubleTouchX()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public final getDoubleTouchY()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOnClickAction()Lkotlin/jvm/functions/Function0;
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
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTranslateStartPointX()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTranslateStartPointY()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 7
    .line 8
    new-instance v0, Landroid/view/GestureDetector;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lteam/opay/pay/kyc/view/ZoomImageView$a;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lteam/opay/pay/kyc/view/ZoomImageView$a;-><init>(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->c:Landroid/view/GestureDetector;

    .line 23
    .line 24
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->a:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v2, Lteam/opay/pay/kyc/view/ZoomImageView$b;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lteam/opay/pay/kyc/view/ZoomImageView$b;-><init>(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->b:Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
    return-void
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
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->e:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-lt v3, v0, :cond_1

    .line 40
    .line 41
    if-lt v2, v1, :cond_1

    .line 42
    .line 43
    int-to-float v5, v0

    .line 44
    mul-float v5, v5, v4

    .line 45
    .line 46
    int-to-float v6, v3

    .line 47
    div-float/2addr v5, v6

    .line 48
    int-to-float v6, v1

    .line 49
    mul-float v6, v6, v4

    .line 50
    .line 51
    int-to-float v4, v2

    .line 52
    div-float/2addr v6, v4

    .line 53
    invoke-static {v5, v6}, Lkotlin/ranges/c;->e(FF)F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    if-le v3, v0, :cond_2

    .line 59
    .line 60
    if-ge v2, v1, :cond_2

    .line 61
    .line 62
    int-to-float v5, v0

    .line 63
    mul-float v5, v5, v4

    .line 64
    .line 65
    int-to-float v4, v3

    .line 66
    :goto_0
    div-float v4, v5, v4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-ge v3, v0, :cond_3

    .line 70
    .line 71
    if-le v2, v1, :cond_3

    .line 72
    .line 73
    int-to-float v5, v1

    .line 74
    mul-float v5, v5, v4

    .line 75
    .line 76
    int-to-float v4, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    int-to-float v5, v0

    .line 79
    mul-float v5, v5, v4

    .line 80
    .line 81
    int-to-float v6, v3

    .line 82
    div-float/2addr v5, v6

    .line 83
    int-to-float v6, v1

    .line 84
    mul-float v6, v6, v4

    .line 85
    .line 86
    int-to-float v4, v2

    .line 87
    div-float/2addr v6, v4

    .line 88
    invoke-static {v5, v6}, Lkotlin/ranges/c;->e(FF)F

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    :goto_1
    sput v4, Lteam/opay/pay/kyc/view/ZoomImageView;->m:F

    .line 93
    .line 94
    div-int/lit8 v4, v0, 0x2

    .line 95
    .line 96
    int-to-float v4, v4

    .line 97
    int-to-float v3, v3

    .line 98
    const/high16 v5, 0x40000000    # 2.0f

    .line 99
    .line 100
    div-float/2addr v3, v5

    .line 101
    sub-float/2addr v4, v3

    .line 102
    div-int/lit8 v3, v1, 0x2

    .line 103
    .line 104
    int-to-float v3, v3

    .line 105
    int-to-float v2, v2

    .line 106
    div-float/2addr v2, v5

    .line 107
    sub-float/2addr v3, v2

    .line 108
    iget-object v2, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 109
    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    sget v3, Lteam/opay/pay/kyc/view/ZoomImageView;->m:F

    .line 120
    .line 121
    int-to-float v0, v0

    .line 122
    div-float/2addr v0, v5

    .line 123
    int-to-float v1, v1

    .line 124
    div-float/2addr v1, v5

    .line 125
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
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
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->c:Landroid/view/GestureDetector;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x2

    .line 41
    if-ge v0, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getScale()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    .line 55
    cmpl-float v0, v0, v3

    .line 56
    .line 57
    if-lez v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->i:F

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->j:F

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iput-boolean v1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 78
    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    and-int/lit16 v0, v0, 0xff

    .line 84
    .line 85
    const/4 v3, 0x6

    .line 86
    const/4 v4, 0x0

    .line 87
    if-ne v0, v3, :cond_4

    .line 88
    .line 89
    iput-boolean v4, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ge v0, v2, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v2, :cond_5

    .line 102
    .line 103
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getScale()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    sget v3, Lteam/opay/pay/kyc/view/ZoomImageView;->m:F

    .line 108
    .line 109
    sub-float/2addr v0, v3

    .line 110
    float-to-double v5, v0

    .line 111
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    cmpl-double v0, v5, v7

    .line 117
    .line 118
    if-gtz v0, :cond_6

    .line 119
    .line 120
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    const/4 v3, 0x3

    .line 125
    if-ne v0, v3, :cond_8

    .line 126
    .line 127
    :cond_6
    iget-boolean v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget v3, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->i:F

    .line 143
    .line 144
    sub-float/2addr v0, v3

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iget v4, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->j:F

    .line 150
    .line 151
    sub-float/2addr v3, v4

    .line 152
    iget-object v4, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 153
    .line 154
    if-eqz v4, :cond_7

    .line 155
    .line 156
    int-to-float v2, v2

    .line 157
    mul-float v0, v0, v2

    .line 158
    .line 159
    mul-float v3, v3, v2

    .line 160
    .line 161
    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iput v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->i:F

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->j:F

    .line 175
    .line 176
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->g()V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->d:Landroid/graphics/Matrix;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 182
    .line 183
    .line 184
    return v1

    .line 185
    :cond_8
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->b:Landroid/view/ScaleGestureDetector;

    .line 186
    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    :cond_9
    return v4
.end method

.method public final setDoubleTouchX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->g:F

    .line 2
    .line 3
    return-void
.end method

.method public final setDoubleTouchY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public final setDrag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnClickAction(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setTranslateStartPointX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTranslateStartPointY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView;->j:F

    .line 2
    .line 3
    return-void
.end method
