.class public final Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZXingScannerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "team/opay/opb/qrcode/scanner/view/ZXingScannerView$b",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "",
        "onScaleBegin",
        "(Landroid/view/ScaleGestureDetector;)Z",
        "onScale",
        "",
        "onScaleEnd",
        "(Landroid/view/ScaleGestureDetector;)V",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

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
    .locals 6

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->w(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    float-to-double v2, p1

    .line 17
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 18
    .line 19
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->x(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    float-to-double v4, p1

    .line 24
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    double-to-float p1, v2

    .line 29
    mul-float v1, v1, p1

    .line 30
    .line 31
    invoke-static {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->y(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;F)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->w(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setZoomRatio(F)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1
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
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->C()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->k()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 28
    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->y(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;F)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$b;->a:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->w(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setCurrentZoom(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
