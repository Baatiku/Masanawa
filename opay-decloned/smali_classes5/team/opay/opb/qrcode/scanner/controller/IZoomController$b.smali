.class public final Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "IZoomController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->T(Landroid/view/View;)V
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
        "team/opay/opb/qrcode/scanner/controller/IZoomController$b",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "",
        "onScaleBegin",
        "(Landroid/view/ScaleGestureDetector;)Z",
        "onScale",
        "opay-qrcode-scanner_release"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v2}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 23
    .line 24
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->j(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    float-to-double v4, p1

    .line 33
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 34
    .line 35
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->l(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-double v6, p1

    .line 40
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    double-to-float p1, v4

    .line 45
    mul-float v3, v3, p1

    .line 46
    .line 47
    invoke-static {v0, v3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 57
    .line 58
    invoke-static {v3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->j(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    mul-float v0, v0, v3

    .line 63
    .line 64
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->k(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->S(F)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 74
    .line 75
    invoke-static {p1, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Z)V

    .line 76
    .line 77
    .line 78
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 15
    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->x()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->n(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return p1
.end method
