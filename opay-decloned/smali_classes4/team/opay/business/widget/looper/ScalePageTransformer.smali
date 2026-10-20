.class public final Lteam/opay/business/widget/looper/ScalePageTransformer;
.super Ljava/lang/Object;
.source "ScalePageTransformer.kt"

# interfaces
.implements Lfa7;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/business/widget/looper/ScalePageTransformer;",
        "Lfa7;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "",
        "a",
        "(Landroid/view/View;F)V",
        "F",
        "mMinScale",
        "b",
        "DEFAULT_CENTER",
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
.field public a:F

.field public final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f59999a    # 0.85f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 8
    .line 9
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    .line 11
    iput v0, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->b:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    const/4 v2, 0x2

    .line 20
    int-to-float v2, v2

    .line 21
    div-float/2addr v1, v2

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 23
    .line 24
    .line 25
    div-float v1, v0, v2

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 28
    .line 29
    .line 30
    const/high16 v1, -0x40800000    # -1.0f

    .line 31
    .line 32
    cmpg-float v1, p2, v1

    .line 33
    .line 34
    if-gez v1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    cmpg-float v1, p2, v1

    .line 54
    .line 55
    if-gtz v1, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    cmpg-float v2, p2, v2

    .line 59
    .line 60
    if-gez v2, :cond_1

    .line 61
    .line 62
    int-to-float v1, v1

    .line 63
    add-float v2, v1, p2

    .line 64
    .line 65
    iget v3, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 66
    .line 67
    sub-float/2addr v1, v3

    .line 68
    mul-float v2, v2, v1

    .line 69
    .line 70
    add-float/2addr v2, v3

    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->b:F

    .line 78
    .line 79
    neg-float p2, p2

    .line 80
    mul-float p2, p2, v1

    .line 81
    .line 82
    add-float/2addr v1, p2

    .line 83
    mul-float v0, v0, v1

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    int-to-float v1, v1

    .line 90
    sub-float p2, v1, p2

    .line 91
    .line 92
    iget v2, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 93
    .line 94
    sub-float/2addr v1, v2

    .line 95
    mul-float v1, v1, p2

    .line 96
    .line 97
    add-float/2addr v1, v2

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 102
    .line 103
    .line 104
    iget v1, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->b:F

    .line 105
    .line 106
    mul-float p2, p2, v1

    .line 107
    .line 108
    mul-float v0, v0, p2

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 115
    .line 116
    .line 117
    iget p2, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 120
    .line 121
    .line 122
    iget p2, p0, Lteam/opay/business/widget/looper/ScalePageTransformer;->a:F

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method
