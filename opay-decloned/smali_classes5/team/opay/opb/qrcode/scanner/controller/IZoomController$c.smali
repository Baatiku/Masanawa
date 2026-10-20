.class public final Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
        "team/opay/opb/qrcode/scanner/controller/IZoomController$c",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onDoubleTap",
        "(Landroid/view/MotionEvent;)Z",
        "onSingleTapUp",
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->x()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->z()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v2, 0x3c23d70a    # 0.01f

    .line 29
    .line 30
    .line 31
    add-float/2addr v1, v2

    .line 32
    cmpl-float p1, p1, v1

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->z()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->y()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    :goto_0
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 50
    .line 51
    invoke-static {v1, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->k(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;->a:Lteam/opay/opb/qrcode/scanner/controller/IZoomController;

    .line 56
    .line 57
    invoke-static {v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->h(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v0, p1, v2}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->M(ZFLjava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
