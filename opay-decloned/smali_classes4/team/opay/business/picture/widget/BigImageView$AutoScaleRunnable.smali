.class final Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "BigImageView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/picture/widget/BigImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoScaleRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\r\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000cR\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000cR\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;",
        "Ljava/lang/Runnable;",
        "",
        "mTargetScale",
        "x",
        "y",
        "<init>",
        "(Lteam/opay/business/picture/widget/BigImageView;FFF)V",
        "",
        "run",
        "()V",
        "a",
        "F",
        "b",
        "c",
        "d",
        "BIGGER",
        "e",
        "SMALL",
        "f",
        "tmpScale",
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
.field public final a:F

.field public b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public f:F

.field public final synthetic g:Lteam/opay/business/picture/widget/BigImageView;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/widget/BigImageView;FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->a:F

    .line 7
    .line 8
    const v0, 0x3f88f5c3    # 1.07f

    .line 9
    .line 10
    .line 11
    iput v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->d:F

    .line 12
    .line 13
    const v1, 0x3f6e147b    # 0.93f

    .line 14
    .line 15
    .line 16
    iput v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->e:F

    .line 17
    .line 18
    iput p3, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->b:F

    .line 19
    .line 20
    iput p4, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->c:F

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/business/picture/widget/BigImageView;->getScale()F

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    cmpg-float p3, p3, p2

    .line 27
    .line 28
    if-gez p3, :cond_0

    .line 29
    .line 30
    iput v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->f:F

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lteam/opay/business/picture/widget/BigImageView;->getScale()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    cmpl-float p1, p1, p2

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    iput v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->f:F

    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->f(Lteam/opay/business/picture/widget/BigImageView;)Landroid/graphics/Matrix;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->f:F

    .line 8
    .line 9
    iget v2, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->b:F

    .line 10
    .line 11
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->c:F

    .line 12
    .line 13
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 17
    .line 18
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->c(Lteam/opay/business/picture/widget/BigImageView;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 22
    .line 23
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->f(Lteam/opay/business/picture/widget/BigImageView;)Landroid/graphics/Matrix;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/business/picture/widget/BigImageView;->getScale()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->f:F

    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpl-float v3, v1, v2

    .line 41
    .line 42
    if-lez v3, :cond_0

    .line 43
    .line 44
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->a:F

    .line 45
    .line 46
    cmpg-float v3, v0, v3

    .line 47
    .line 48
    if-ltz v3, :cond_1

    .line 49
    .line 50
    :cond_0
    cmpg-float v1, v1, v2

    .line 51
    .line 52
    if-gez v1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->a:F

    .line 55
    .line 56
    cmpl-float v1, v0, v1

    .line 57
    .line 58
    if-lez v1, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 61
    .line 62
    const-wide/16 v1, 0x10

    .line 63
    .line 64
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->a:F

    .line 69
    .line 70
    div-float/2addr v1, v0

    .line 71
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 72
    .line 73
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->f(Lteam/opay/business/picture/widget/BigImageView;)Landroid/graphics/Matrix;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v2, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->b:F

    .line 78
    .line 79
    iget v3, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->c:F

    .line 80
    .line 81
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 85
    .line 86
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->c(Lteam/opay/business/picture/widget/BigImageView;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 90
    .line 91
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->f(Lteam/opay/business/picture/widget/BigImageView;)Landroid/graphics/Matrix;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;->g:Lteam/opay/business/picture/widget/BigImageView;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lteam/opay/business/picture/widget/BigImageView;->h(Lteam/opay/business/picture/widget/BigImageView;Z)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method
