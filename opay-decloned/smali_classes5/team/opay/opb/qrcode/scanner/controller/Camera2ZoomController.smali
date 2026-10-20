.class public final Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;
.super Lteam/opay/opb/qrcode/scanner/controller/IZoomController;
.source "Camera2ZoomController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;",
        "Lteam/opay/opb/qrcode/scanner/controller/IZoomController;",
        "<init>",
        "()V",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "previewView",
        "",
        "V",
        "(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V",
        "W",
        "",
        "J",
        "()Z",
        "",
        "targetZoomValue",
        "S",
        "(F)V",
        "x",
        "()F",
        "u",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "mPreview",
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
.field public u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public S(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->t(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final V(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->T(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->z()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getMaxZoomRatio()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0, v0, v1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->D(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public x()F
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera2ZoomController;->u:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getCurrentZoom()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->A()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method
