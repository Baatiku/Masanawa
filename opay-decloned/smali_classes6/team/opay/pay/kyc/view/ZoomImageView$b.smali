.class public final Lteam/opay/pay/kyc/view/ZoomImageView$b;
.super Ljava/lang/Object;
.source "ZoomImageView.kt"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/kyc/view/ZoomImageView$b",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector;",
        "scaleGestureDetector",
        "",
        "onScale",
        "(Landroid/view/ScaleGestureDetector;)Z",
        "onScaleBegin",
        "",
        "onScaleEnd",
        "(Landroid/view/ScaleGestureDetector;)V",
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
    iput-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    const-string v0, "scaleGestureDetector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 30
    .line 31
    invoke-static {v2}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x14

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    mul-float v3, v3, v4

    .line 43
    .line 44
    const/high16 v5, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpg-float v3, v2, v3

    .line 47
    .line 48
    if-gez v3, :cond_1

    .line 49
    .line 50
    cmpl-float v3, v0, v5

    .line 51
    .line 52
    if-gtz v3, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    cmpl-float v3, v2, v3

    .line 59
    .line 60
    if-lez v3, :cond_6

    .line 61
    .line 62
    cmpg-float v3, v0, v5

    .line 63
    .line 64
    if-gez v3, :cond_6

    .line 65
    .line 66
    :cond_2
    mul-float v3, v2, v0

    .line 67
    .line 68
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    cmpg-float v3, v3, v5

    .line 73
    .line 74
    if-gez v3, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    div-float/2addr v0, v2

    .line 81
    :cond_3
    mul-float v3, v2, v0

    .line 82
    .line 83
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    mul-float v5, v5, v4

    .line 88
    .line 89
    cmpl-float v3, v3, v5

    .line 90
    .line 91
    if-lez v3, :cond_4

    .line 92
    .line 93
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    mul-float v0, v0, v4

    .line 98
    .line 99
    div-float/2addr v0, v2

    .line 100
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 101
    .line 102
    invoke-static {v2}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/view/ZoomImageView;->setDoubleTouchX(F)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->setDoubleTouchY(F)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 138
    .line 139
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->c(Lteam/opay/pay/kyc/view/ZoomImageView;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 143
    .line 144
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    const-string v0, "scaleGestureDetector"

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
    .locals 4

    .line 1
    const-string v0, "scaleGestureDetector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->f(Lteam/opay/pay/kyc/view/ZoomImageView;)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    cmpg-float v0, p1, v0

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lteam/opay/pay/kyc/view/ZoomImageView;->e()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    div-float/2addr v0, p1

    .line 25
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 26
    .line 27
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    const/high16 v2, 0x40000000    # 2.0f

    .line 41
    .line 42
    div-float/2addr v1, v2

    .line 43
    iget-object v3, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    div-float/2addr v3, v2

    .line 51
    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/kyc/view/ZoomImageView$b;->a:Lteam/opay/pay/kyc/view/ZoomImageView;

    .line 55
    .line 56
    invoke-static {p1}, Lteam/opay/pay/kyc/view/ZoomImageView;->d(Lteam/opay/pay/kyc/view/ZoomImageView;)Landroid/graphics/Matrix;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method
