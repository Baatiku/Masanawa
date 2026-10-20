.class public final Lteam/opay/qrcode/android/core/CameraPreview$b;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraPreview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/android/core/CameraPreview;-><init>(Landroid/content/Context;Lteam/opay/qrcode/android/PERFORMANCE;Lgv1;)V
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
        "team/opay/qrcode/android/core/CameraPreview$b",
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
        "qrcode_release"
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
.field public final synthetic a:Lteam/opay/qrcode/android/core/CameraPreview;


# direct methods
.method public constructor <init>(Lteam/opay/qrcode/android/core/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

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
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/qrcode/android/core/CameraPreview;->h(Lteam/opay/qrcode/android/core/CameraPreview;)Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lteam/opay/qrcode/android/core/CameraPreview;->o(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CameraDevice;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    const-string p2, "cameraDevice"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/android/core/CameraPreview$b;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
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
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lteam/opay/qrcode/android/core/CameraPreview;->o(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CameraDevice;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->e(Lteam/opay/qrcode/android/core/CameraPreview;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->getCameraPreviewListener()Lgv1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 23
    .line 24
    invoke-static {v0}, Lteam/opay/qrcode/android/core/CameraPreview;->j(Lteam/opay/qrcode/android/core/CameraPreview;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1, v0}, Lgv1;->b(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$b;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->h(Lteam/opay/qrcode/android/core/CameraPreview;)Ljava/util/concurrent/Semaphore;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
