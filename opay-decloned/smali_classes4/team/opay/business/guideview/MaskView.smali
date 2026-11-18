.class Lteam/opay/business/guideview/MaskView;
.super Landroid/view/ViewGroup;
.source "MaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/guideview/MaskView$LayoutParams;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/Paint;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Bitmap;

.field public o:Landroid/graphics/Canvas;

.field public p:Z

.field public q:I

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/business/guideview/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/business/guideview/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->b:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->e:I

    .line 8
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->f:I

    .line 9
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->g:I

    .line 10
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->h:I

    .line 11
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->i:I

    .line 12
    iput-boolean p2, p0, Lteam/opay/business/guideview/MaskView;->j:Z

    .line 13
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->k:I

    .line 14
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->l:I

    .line 15
    iput p2, p0, Lteam/opay/business/guideview/MaskView;->r:I

    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lteam/opay/business/guideview/MaskView;->s:Z

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 19
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, p2

    int-to-float v2, v0

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->n:Landroid/graphics/Bitmap;

    .line 25
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lteam/opay/business/guideview/MaskView;->n:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->d:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object p1, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 30
    iget-object p1, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public a()Lteam/opay/business/guideview/MaskView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/guideview/MaskView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lteam/opay/business/guideview/MaskView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Landroid/view/View;Landroid/graphics/RectF;I)V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p3, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-eq p3, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 15
    .line 16
    iget p3, p3, Landroid/graphics/RectF;->right:F

    .line 17
    .line 18
    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p1, p1

    .line 25
    sub-float/2addr p3, p1

    .line 26
    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    sub-float/2addr p3, v0

    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr p3, v0

    .line 44
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 45
    .line 46
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 47
    .line 48
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 57
    .line 58
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    add-float/2addr p3, p1

    .line 70
    div-float/2addr p3, v0

    .line 71
    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p2, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 79
    .line 80
    iget p3, p3, Landroid/graphics/RectF;->left:F

    .line 81
    .line 82
    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    int-to-float p1, p1

    .line 89
    add-float/2addr p3, p1

    .line 90
    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/guideview/MaskView;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/guideview/MaskView;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->e:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lteam/opay/business/guideview/MaskView;->f:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    int-to-float v3, v0

    .line 18
    sub-float/2addr v2, v3

    .line 19
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    :cond_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lteam/opay/business/guideview/MaskView;->g:I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 30
    .line 31
    int-to-float v3, v0

    .line 32
    sub-float/2addr v2, v3

    .line 33
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 34
    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lteam/opay/business/guideview/MaskView;->h:I

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    int-to-float v3, v0

    .line 46
    add-float/2addr v2, v3

    .line 47
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    :cond_2
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget v1, p0, Lteam/opay/business/guideview/MaskView;->i:I

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    add-float/2addr v2, v0

    .line 61
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    :cond_3
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->f:I

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 68
    .line 69
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    int-to-float v0, v0

    .line 72
    sub-float/2addr v2, v0

    .line 73
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    :cond_4
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->g:I

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 80
    .line 81
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 82
    .line 83
    int-to-float v0, v0

    .line 84
    sub-float/2addr v2, v0

    .line 85
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 86
    .line 87
    :cond_5
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->h:I

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 92
    .line 93
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 94
    .line 95
    int-to-float v0, v0

    .line 96
    add-float/2addr v2, v0

    .line 97
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 98
    .line 99
    :cond_6
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->i:I

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 104
    .line 105
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 106
    .line 107
    int-to-float v0, v0

    .line 108
    add-float/2addr v2, v0

    .line 109
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 110
    .line 111
    :cond_7
    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lteam/opay/business/guideview/MaskView;->p:Z

    .line 113
    .line 114
    :cond_8
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0, p1, v3, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/guideview/MaskView;->a()Lteam/opay/business/guideview/MaskView$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/guideview/MaskView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/guideview/MaskView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public o(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lteam/opay/business/guideview/MaskView;->n:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    int-to-float v0, v0

    .line 13
    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->q:I

    .line 17
    .line 18
    iget v2, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    iput v0, p0, Lteam/opay/business/guideview/MaskView;->q:I

    .line 22
    .line 23
    iput v1, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->n:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->d:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lteam/opay/business/guideview/MaskView;->j:Z

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget v0, p0, Lteam/opay/business/guideview/MaskView;->l:I

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 55
    .line 56
    iget v2, p0, Lteam/opay/business/guideview/MaskView;->k:I

    .line 57
    .line 58
    int-to-float v3, v2

    .line 59
    int-to-float v2, v2

    .line 60
    iget-object v4, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iget-object v3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/high16 v4, 0x40000000    # 2.0f

    .line 87
    .line 88
    div-float/2addr v3, v4

    .line 89
    iget-object v4, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->o:Landroid/graphics/Canvas;

    .line 96
    .line 97
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget v2, p0, Lteam/opay/business/guideview/MaskView;->k:I

    .line 100
    .line 101
    int-to-float v3, v2

    .line 102
    int-to-float v2, v2

    .line 103
    iget-object v4, p0, Lteam/opay/business/guideview/MaskView;->m:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->n:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->b:Landroid/graphics/RectF;

    .line 111
    .line 112
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 113
    .line 114
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    :goto_0
    if-ge p3, p1, :cond_7

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    check-cast p5, Lteam/opay/business/guideview/MaskView$LayoutParams;

    .line 31
    .line 32
    if-nez p5, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    iget v0, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->a:I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq v0, v1, :cond_6

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v0, v2, :cond_5

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    if-eq v0, v2, :cond_4

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    if-eq v0, v2, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x5

    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sub-int/2addr v2, v3

    .line 69
    shr-int/2addr v2, v1

    .line 70
    int-to-float v2, v2

    .line 71
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 72
    .line 73
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 74
    .line 75
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    float-to-int v2, v2

    .line 82
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    sub-int/2addr v2, v3

    .line 87
    shr-int/2addr v2, v1

    .line 88
    int-to-float v2, v2

    .line 89
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 92
    .line 93
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    float-to-int v2, v2

    .line 100
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    add-int/2addr v2, v3

    .line 105
    shr-int/2addr v2, v1

    .line 106
    int-to-float v2, v2

    .line 107
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 108
    .line 109
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 110
    .line 111
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    float-to-int v2, v2

    .line 118
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr v2, v3

    .line 123
    shr-int/lit8 v1, v2, 0x1

    .line 124
    .line 125
    int-to-float v1, v1

    .line 126
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 127
    .line 128
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 129
    .line 130
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 131
    .line 132
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 133
    .line 134
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 135
    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 141
    .line 142
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 143
    .line 144
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 145
    .line 146
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 147
    .line 148
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    int-to-float v2, v2

    .line 153
    add-float/2addr v1, v2

    .line 154
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 155
    .line 156
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 157
    .line 158
    iget v1, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->b:I

    .line 159
    .line 160
    invoke-virtual {p0, p4, v0, v1}, Lteam/opay/business/guideview/MaskView;->b(Landroid/view/View;Landroid/graphics/RectF;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 165
    .line 166
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 167
    .line 168
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 169
    .line 170
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 171
    .line 172
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    int-to-float v2, v2

    .line 177
    add-float/2addr v1, v2

    .line 178
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 179
    .line 180
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 181
    .line 182
    iget v1, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->b:I

    .line 183
    .line 184
    invoke-virtual {p0, p4, v0, v1}, Lteam/opay/business/guideview/MaskView;->p(Landroid/view/View;Landroid/graphics/RectF;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 189
    .line 190
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 191
    .line 192
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 193
    .line 194
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 195
    .line 196
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    int-to-float v2, v2

    .line 201
    sub-float/2addr v1, v2

    .line 202
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 203
    .line 204
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 205
    .line 206
    iget v1, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->b:I

    .line 207
    .line 208
    invoke-virtual {p0, p4, v0, v1}, Lteam/opay/business/guideview/MaskView;->b(Landroid/view/View;Landroid/graphics/RectF;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 213
    .line 214
    iget-object v1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 215
    .line 216
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 217
    .line 218
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 219
    .line 220
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    int-to-float v2, v2

    .line 225
    sub-float/2addr v1, v2

    .line 226
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 227
    .line 228
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 229
    .line 230
    iget v1, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->b:I

    .line 231
    .line 232
    invoke-virtual {p0, p4, v0, v1}, Lteam/opay/business/guideview/MaskView;->p(Landroid/view/View;Landroid/graphics/RectF;I)V

    .line 233
    .line 234
    .line 235
    :goto_1
    iget-object v0, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 236
    .line 237
    iget v1, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->c:I

    .line 238
    .line 239
    int-to-float v1, v1

    .line 240
    mul-float v1, v1, p2

    .line 241
    .line 242
    const/high16 v2, 0x3f000000    # 0.5f

    .line 243
    .line 244
    add-float/2addr v1, v2

    .line 245
    float-to-int v1, v1

    .line 246
    int-to-float v1, v1

    .line 247
    iget p5, p5, Lteam/opay/business/guideview/MaskView$LayoutParams;->d:I

    .line 248
    .line 249
    int-to-float p5, p5

    .line 250
    mul-float p5, p5, p2

    .line 251
    .line 252
    add-float/2addr p5, v2

    .line 253
    float-to-int p5, p5

    .line 254
    int-to-float p5, p5

    .line 255
    invoke-virtual {v0, v1, p5}, Landroid/graphics/RectF;->offset(FF)V

    .line 256
    .line 257
    .line 258
    iget-object p5, p0, Lteam/opay/business/guideview/MaskView;->c:Landroid/graphics/RectF;

    .line 259
    .line 260
    iget v0, p5, Landroid/graphics/RectF;->left:F

    .line 261
    .line 262
    float-to-int v0, v0

    .line 263
    iget v1, p5, Landroid/graphics/RectF;->top:F

    .line 264
    .line 265
    float-to-int v1, v1

    .line 266
    iget v2, p5, Landroid/graphics/RectF;->right:F

    .line 267
    .line 268
    float-to-int v2, v2

    .line 269
    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    .line 270
    .line 271
    float-to-int p5, p5

    .line 272
    invoke-virtual {p4, v0, v1, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 273
    .line 274
    .line 275
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-boolean v2, p0, Lteam/opay/business/guideview/MaskView;->s:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iput v1, p0, Lteam/opay/business/guideview/MaskView;->q:I

    .line 18
    .line 19
    iput-boolean v3, p0, Lteam/opay/business/guideview/MaskView;->s:Z

    .line 20
    .line 21
    :cond_0
    iget v2, p0, Lteam/opay/business/guideview/MaskView;->q:I

    .line 22
    .line 23
    if-le v2, v1, :cond_1

    .line 24
    .line 25
    sub-int v2, v1, v2

    .line 26
    .line 27
    iput v2, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ge v2, v1, :cond_2

    .line 31
    .line 32
    sub-int v2, v1, v2

    .line 33
    .line 34
    iput v2, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iput v3, p0, Lteam/opay/business/guideview/MaskView;->r:I

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lteam/opay/business/guideview/MaskView;->b:Landroid/graphics/RectF;

    .line 43
    .line 44
    int-to-float v0, v0

    .line 45
    int-to-float v1, v1

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/business/guideview/MaskView;->c()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_1
    if-ge v3, v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    return-void
.end method

.method public final p(Landroid/view/View;Landroid/graphics/RectF;I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p3, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-eq p3, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 15
    .line 16
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 17
    .line 18
    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 19
    .line 20
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    sub-float/2addr p3, p1

    .line 28
    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    sub-float/2addr p3, v0

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr p3, v0

    .line 46
    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 47
    .line 48
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    add-float/2addr p3, p1

    .line 60
    div-float/2addr p3, v0

    .line 61
    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 64
    .line 65
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-virtual {p2, p3, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p3, p0, Lteam/opay/business/guideview/MaskView;->a:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget p3, p3, Landroid/graphics/RectF;->top:F

    .line 75
    .line 76
    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-float p1, p1

    .line 83
    add-float/2addr p3, p1

    .line 84
    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 85
    .line 86
    :goto_0
    return-void
.end method
