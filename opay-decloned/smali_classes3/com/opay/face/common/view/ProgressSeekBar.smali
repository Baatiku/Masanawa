.class public Lcom/opay/face/common/view/ProgressSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "ProgressSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/common/view/ProgressSeekBar$b;
    }
.end annotation


# instance fields
.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p0}, Lcom/opay/face/common/view/ProgressSeekBar;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p0}, Lcom/opay/face/common/view/ProgressSeekBar;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/opay/face/common/view/ProgressSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/ProgressSeekBar;->c(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/high16 v2, 0x41300000    # 11.0f

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x3e8

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final synthetic c(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public d(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/opay/face/common/view/ProgressSeekBar;->e(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e(IJLcom/opay/face/common/view/ProgressSeekBar$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    filled-new-array {v0, p1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    .line 50
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    new-instance p2, Ld2c;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Ld2c;-><init>(Lcom/opay/face/common/view/ProgressSeekBar;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    new-instance p2, Lcom/opay/face/common/view/ProgressSeekBar$a;

    .line 71
    .line 72
    invoke-direct {p2, p0, p4}, Lcom/opay/face/common/view/ProgressSeekBar$a;-><init>(Lcom/opay/face/common/view/ProgressSeekBar;Lcom/opay/face/common/view/ProgressSeekBar$b;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/opay/face/common/view/ProgressSeekBar;->b:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    div-int/lit8 v3, v0, 0xa

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "%"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    int-to-float v0, v0

    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    .line 34
    .line 35
    mul-float v0, v0, v3

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    sub-int/2addr v1, v3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sub-int/2addr v1, v3

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    int-to-float v3, v3

    .line 58
    int-to-float v1, v1

    .line 59
    mul-float v1, v1, v0

    .line 60
    .line 61
    add-float/2addr v3, v1

    .line 62
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-float v1, v1

    .line 73
    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    .line 75
    div-float/2addr v1, v4

    .line 76
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 77
    .line 78
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 79
    .line 80
    add-float/2addr v5, v0

    .line 81
    div-float/2addr v5, v4

    .line 82
    sub-float/2addr v1, v5

    .line 83
    iget-object v0, p0, Lcom/opay/face/common/view/ProgressSeekBar;->c:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
