.class public final Lteam/opay/pay/kyc/view/ZoomImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZoomImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/view/ZoomImageView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/pay/kyc/view/ZoomImageView$a",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onDoubleTap",
        "(Landroid/view/MotionEvent;)Z",
        "onSingleTapConfirmed",
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
.field public final synthetic a:Lteam/opay/pay/kyc/view/ZoomImageView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/view/ZoomImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Landroid/view/MotionEvent;Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/ZoomImageView$a;->d(Landroid/view/MotionEvent;Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/view/ZoomImageView$a;->c(Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getDoubleTouchX()F

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->getDoubleTouchY()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-static {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->c(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static final d(Landroid/view/MotionEvent;Lteam/opay/pay/kyc/view/ZoomImageView;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpl-float v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    div-float/2addr v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    div-float v0, v1, v0

    .line 43
    .line 44
    :goto_1
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    cmpl-float v2, v3, v2

    .line 49
    .line 50
    if-lez v2, :cond_4

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :cond_3
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    div-float/2addr v1, p0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    :goto_2
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    .line 81
    .line 82
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast v2, Ljava/lang/Float;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast p2, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-virtual {p0, v2, p2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/view/ZoomImageView;->setDoubleTouchX(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lteam/opay/pay/kyc/view/ZoomImageView;->setDoubleTouchY(F)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->c(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [F

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput v1, v3, v0

    .line 24
    .line 25
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 30
    .line 31
    invoke-static {v3}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v5, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 36
    .line 37
    invoke-static {v5}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-float v6, v2

    .line 42
    mul-float v5, v5, v6

    .line 43
    .line 44
    new-array v2, v2, [F

    .line 45
    .line 46
    aput v3, v2, v4

    .line 47
    .line 48
    aput v5, v2, v0

    .line 49
    .line 50
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-wide/16 v3, 0x64

    .line 55
    .line 56
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 71
    .line 72
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 79
    .line 80
    new-instance v4, Lubg;

    .line 81
    .line 82
    invoke-direct {v4, v3}, Lubg;-><init>(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 89
    .line 90
    new-instance v4, Lvbg;

    .line 91
    .line 92
    invoke-direct {v4, p1, v3}, Lvbg;-><init>(Landroid/view/MotionEvent;Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 99
    .line 100
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    cmpl-float p1, p1, v3

    .line 109
    .line 110
    if-lez p1, :cond_0

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 117
    .line 118
    .line 119
    :goto_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$a;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->getOnClickAction()Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method
