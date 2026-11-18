.class public Lteam/opay/business/widget/ticker/TickerView;
.super Landroid/view/View;
.source "TickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/widget/ticker/TickerView$e;,
        Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;,
        Lteam/opay/business/widget/ticker/TickerView$d;
    }
.end annotation


# static fields
.field public static final t:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Lteam/opay/business/widget/ticker/b;

.field public final c:Lrke;

.field public final d:Landroid/animation/ValueAnimator;

.field public e:Lteam/opay/business/widget/ticker/TickerView$d;

.field public f:Lteam/opay/business/widget/ticker/TickerView$d;

.field public final g:Landroid/graphics/Rect;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:I

.field public o:J

.field public p:J

.field public q:Landroid/view/animation/Interpolator;

.field public r:Z

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/business/widget/ticker/TickerView;->t:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v2, Lteam/opay/business/widget/ticker/b;

    invoke-direct {v2, v0}, Lteam/opay/business/widget/ticker/b;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 4
    new-instance v0, Lrke;

    invoke-direct {v0, v2}, Lrke;-><init>(Lteam/opay/business/widget/ticker/b;)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 5
    new-array v0, v1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v2, v2}, Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 10
    new-instance v2, Lteam/opay/business/widget/ticker/b;

    invoke-direct {v2, v0}, Lteam/opay/business/widget/ticker/b;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 11
    new-instance v0, Lrke;

    invoke-direct {v0, v2}, Lrke;-><init>(Lteam/opay/business/widget/ticker/b;)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 12
    new-array v0, v1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p0, p1, p2, v2, v2}, Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 17
    new-instance v2, Lteam/opay/business/widget/ticker/b;

    invoke-direct {v2, v0}, Lteam/opay/business/widget/ticker/b;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 18
    new-instance v0, Lrke;

    invoke-direct {v0, v2}, Lrke;-><init>(Lteam/opay/business/widget/ticker/b;)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 19
    new-array v0, v1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p0, p1, p2, p3, v2}, Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 24
    new-instance v2, Lteam/opay/business/widget/ticker/b;

    invoke-direct {v2, v0}, Lteam/opay/business/widget/ticker/b;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 25
    new-instance v0, Lrke;

    invoke-direct {v0, v2}, Lrke;-><init>(Lteam/opay/business/widget/ticker/b;)V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 26
    new-array v0, v1, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/business/widget/ticker/TickerView;)Lrke;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lteam/opay/business/widget/ticker/TickerView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic c(Lteam/opay/business/widget/ticker/TickerView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FF)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit8 v2, p1, 0x10

    .line 10
    .line 11
    const/high16 v3, 0x40000000    # 2.0f

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/16 v5, 0x10

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v5, v1

    .line 22
    sub-float/2addr v5, p4

    .line 23
    div-float/2addr v5, v3

    .line 24
    add-float/2addr v2, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    and-int/lit8 v5, p1, 0x1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-ne v5, v6, :cond_1

    .line 31
    .line 32
    iget v5, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    int-to-float v5, v5

    .line 35
    int-to-float v6, v0

    .line 36
    sub-float/2addr v6, p3

    .line 37
    div-float/2addr v6, v3

    .line 38
    add-float/2addr v5, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v5, 0x0

    .line 41
    :goto_1
    and-int/lit8 v3, p1, 0x30

    .line 42
    .line 43
    const/16 v6, 0x30

    .line 44
    .line 45
    if-ne v3, v6, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :cond_2
    and-int/lit8 v3, p1, 0x50

    .line 49
    .line 50
    const/16 v6, 0x50

    .line 51
    .line 52
    if-ne v3, v6, :cond_3

    .line 53
    .line 54
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    int-to-float v2, v2

    .line 57
    int-to-float v1, v1

    .line 58
    sub-float/2addr v1, p4

    .line 59
    add-float/2addr v2, v1

    .line 60
    :cond_3
    const v1, 0x800003

    .line 61
    .line 62
    .line 63
    and-int v3, p1, v1

    .line 64
    .line 65
    if-ne v3, v1, :cond_4

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    :cond_4
    const v1, 0x800005

    .line 69
    .line 70
    .line 71
    and-int/2addr p1, v1

    .line 72
    if-ne p1, v1, :cond_5

    .line 73
    .line 74
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 75
    .line 76
    int-to-float p1, p1

    .line 77
    int-to-float p2, v0

    .line 78
    sub-float/2addr p2, p3

    .line 79
    add-float v5, p1, p2

    .line 80
    .line 81
    :cond_5
    invoke-virtual {p0, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4, v4, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private setTextInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lrke;->i([C)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->i:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget v1, p0, Lteam/opay/business/widget/ticker/TickerView;->j:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->e()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eq v1, v4, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    .line 29
    .line 30
    :cond_3
    return-void
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/widget/ticker/b;->b()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final f()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/widget/ticker/TickerView;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 6
    .line 7
    invoke-virtual {v0}, Lrke;->d()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 13
    .line 14
    invoke-virtual {v0}, Lrke;->e()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    float-to-int v0, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public g(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/business/widget/ticker/TickerView$e;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Lteam/opay/business/widget/ticker/TickerView$e;-><init>(Lteam/opay/business/widget/ticker/TickerView;Landroid/content/res/Resources;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lteam/opay/business/widget/R$styleable;->TickerView:[I

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    sget p3, Lteam/opay/business/widget/R$styleable;->TickerView_android_textAppearance:I

    .line 17
    .line 18
    const/4 p4, -0x1

    .line 19
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eq p3, p4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lteam/opay/business/widget/ticker/TickerView$e;->a(Landroid/content/res/TypedArray;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1, p2}, Lteam/opay/business/widget/ticker/TickerView$e;->a(Landroid/content/res/TypedArray;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lteam/opay/business/widget/ticker/TickerView;->t:Landroid/view/animation/Interpolator;

    .line 39
    .line 40
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->q:Landroid/view/animation/Interpolator;

    .line 41
    .line 42
    sget p1, Lteam/opay/business/widget/R$styleable;->TickerView_ticker_animationDuration:I

    .line 43
    .line 44
    const/16 p3, 0x15e

    .line 45
    .line 46
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long p3, p1

    .line 51
    iput-wide p3, p0, Lteam/opay/business/widget/ticker/TickerView;->p:J

    .line 52
    .line 53
    sget p1, Lteam/opay/business/widget/R$styleable;->TickerView_ticker_animateMeasurementChange:I

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput-boolean p1, p0, Lteam/opay/business/widget/ticker/TickerView;->r:Z

    .line 61
    .line 62
    iget p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->a:I

    .line 63
    .line 64
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView;->k:I

    .line 65
    .line 66
    iget p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->b:I

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object p4, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 71
    .line 72
    iget v0, v1, Lteam/opay/business/widget/ticker/TickerView$e;->e:F

    .line 73
    .line 74
    iget v2, v1, Lteam/opay/business/widget/ticker/TickerView$e;->c:F

    .line 75
    .line 76
    iget v3, v1, Lteam/opay/business/widget/ticker/TickerView$e;->d:F

    .line 77
    .line 78
    invoke-virtual {p4, v0, v2, v3, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->i:I

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView;->n:I

    .line 86
    .line 87
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->g:I

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    iget p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->h:F

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setTextSize(F)V

    .line 104
    .line 105
    .line 106
    sget p1, Lteam/opay/business/widget/R$styleable;->TickerView_ticker_defaultCharacterList:I

    .line 107
    .line 108
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 p4, 0x2

    .line 113
    const/4 v0, 0x1

    .line 114
    if-eq p1, v0, :cond_4

    .line 115
    .line 116
    if-eq p1, p4, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    invoke-static {}, Lteam/opay/business/widget/ticker/TickerUtils;->b()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    filled-new-array {p1}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setCharacterLists([Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lteam/opay/business/widget/ticker/TickerUtils;->a()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    filled-new-array {p1}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setCharacterLists([Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    invoke-static {}, Lteam/opay/business/widget/ticker/TickerUtils;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    filled-new-array {p1}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setCharacterLists([Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_0
    sget p1, Lteam/opay/business/widget/R$styleable;->TickerView_ticker_defaultPreferredScrollingDirection:I

    .line 160
    .line 161
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    if-eq p1, v0, :cond_7

    .line 168
    .line 169
    if-ne p1, p4, :cond_6

    .line 170
    .line 171
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 172
    .line 173
    sget-object p4, Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;->DOWN:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 174
    .line 175
    invoke-virtual {p1, p4}, Lteam/opay/business/widget/ticker/b;->f(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    new-instance p3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string p4, "Unsupported ticker_defaultPreferredScrollingDirection: "

    .line 187
    .line 188
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p2

    .line 202
    :cond_7
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 203
    .line 204
    sget-object p4, Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;->UP:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 205
    .line 206
    invoke-virtual {p1, p4}, Lteam/opay/business/widget/ticker/b;->f(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_8
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 211
    .line 212
    sget-object p4, Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;->ANY:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 213
    .line 214
    invoke-virtual {p1, p4}, Lteam/opay/business/widget/ticker/b;->f(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->h()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    iget-object p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->f:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p0, p1, p3}, Lteam/opay/business/widget/ticker/TickerView;->l(Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_9
    iget-object p1, v1, Lteam/opay/business/widget/ticker/TickerView$e;->f:Ljava/lang/String;

    .line 230
    .line 231
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->s:Ljava/lang/String;

    .line 232
    .line 233
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 237
    .line 238
    new-instance p2, Lteam/opay/business/widget/ticker/TickerView$a;

    .line 239
    .line 240
    invoke-direct {p2, p0}, Lteam/opay/business/widget/ticker/TickerView$a;-><init>(Lteam/opay/business/widget/ticker/TickerView;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 244
    .line 245
    .line 246
    new-instance p1, Lteam/opay/business/widget/ticker/TickerView$b;

    .line 247
    .line 248
    invoke-direct {p1, p0}, Lteam/opay/business/widget/ticker/TickerView$b;-><init>(Lteam/opay/business/widget/ticker/TickerView;)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 252
    .line 253
    new-instance p3, Lteam/opay/business/widget/ticker/TickerView$c;

    .line 254
    .line 255
    invoke-direct {p3, p0, p1}, Lteam/opay/business/widget/ticker/TickerView$c;-><init>(Lteam/opay/business/widget/ticker/TickerView;Ljava/lang/Runnable;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public getAnimateMeasurementChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/widget/ticker/TickerView;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAnimationDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/widget/ticker/TickerView;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/widget/ticker/TickerView;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->q:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrke;->b()[Lteam/opay/business/widget/ticker/TickerCharacterList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/widget/ticker/b;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->d()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrke;->d()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/business/widget/ticker/b;->b()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lteam/opay/business/widget/ticker/TickerView;->k:I

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-static {p1, v2, v3, v0, v1}, Lteam/opay/business/widget/ticker/TickerView;->k(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->f:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->e:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 20
    .line 21
    :cond_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    new-instance p2, Lteam/opay/business/widget/ticker/TickerView$d;

    .line 24
    .line 25
    iget-wide v3, p0, Lteam/opay/business/widget/ticker/TickerView;->o:J

    .line 26
    .line 27
    iget-wide v5, p0, Lteam/opay/business/widget/ticker/TickerView;->p:J

    .line 28
    .line 29
    iget-object v7, p0, Lteam/opay/business/widget/ticker/TickerView;->q:Landroid/view/animation/Interpolator;

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v1, p2

    .line 33
    move-object v2, p1

    .line 34
    invoke-direct/range {v1 .. v8}, Lteam/opay/business/widget/ticker/TickerView$d;-><init>(Ljava/lang/String;JJLandroid/view/animation/Interpolator;Lske;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lteam/opay/business/widget/ticker/TickerView;->f:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->e:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->m()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->setTextInternal(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 51
    .line 52
    const/high16 p2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lrke;->g(F)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 58
    .line 59
    invoke-virtual {p1}, Lrke;->f()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->d()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->f:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 2
    .line 3
    iput-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->e:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->f:Lteam/opay/business/widget/ticker/TickerView$d;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lteam/opay/business/widget/ticker/TickerView$d;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lteam/opay/business/widget/ticker/TickerView;->setTextInternal(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    iget-wide v2, v0, Lteam/opay/business/widget/ticker/TickerView$d;->b:J

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    iget-wide v2, v0, Lteam/opay/business/widget/ticker/TickerView$d;->c:J

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    iget-object v0, v0, Lteam/opay/business/widget/ticker/TickerView$d;->d:Landroid/view/animation/Interpolator;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->d:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/business/widget/ticker/TickerView;->j(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/business/widget/ticker/b;->a()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lrke;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView;->i:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lteam/opay/business/widget/ticker/TickerView;->j:I

    .line 12
    .line 13
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->i:I

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->j:I

    .line 20
    .line 21
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lteam/opay/business/widget/ticker/TickerView;->g:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr p1, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setAnimateMeasurementChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/widget/ticker/TickerView;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/widget/ticker/TickerView;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/widget/ticker/TickerView;->p:J

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->q:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method

.method public varargs setCharacterLists([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->c:Lrke;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lrke;->h([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->s:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/widget/ticker/TickerView;->l(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView;->s:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->k:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView;->k:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPreferredScrollingDirection(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->b:Lteam/opay/business/widget/ticker/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/business/widget/ticker/b;->f(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/widget/ticker/TickerView;->l(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->m:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lteam/opay/business/widget/ticker/TickerView;->m:F

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->i()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/TickerView;->n:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_2
    :goto_0
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView;->a:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/TickerView;->i()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
