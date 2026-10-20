.class public final Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraPreview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/view/CameraPreview;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "team/opay/opb/qrcode/scanner/view/CameraPreview$d",
        "Landroid/hardware/camera2/CameraDevice$StateCallback;",
        "Landroid/hardware/camera2/CameraDevice;",
        "cameraDevice",
        "",
        "onOpened",
        "(Landroid/hardware/camera2/CameraDevice;)V",
        "onDisconnected",
        "",
        "error",
        "onError",
        "(Landroid/hardware/camera2/CameraDevice;I)V",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    const-string v0, "cameraDevice"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->s(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->t(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;Landroid/hardware/camera2/CameraDevice;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .line 1
    const-string v0, "cameraDevice"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->getCameraPreviewListener()Lhv1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Exception;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "CameraPreview stateCallback error: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    const-string v0, "cameraDevice"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->t(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;Landroid/hardware/camera2/CameraDevice;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->p(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 17
    .line 18
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->h(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/CameraPreview$d;->a:Lteam/opay/opb/qrcode/scanner/view/CameraPreview;

    .line 22
    .line 23
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/CameraPreview;->s(Lteam/opay/opb/qrcode/scanner/view/CameraPreview;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
