.class public final Lteam/opay/qrcode/android/core/CameraPreview$a;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraPreview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/android/core/CameraPreview;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/qrcode/android/core/CameraPreview$a",
        "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "cameraCaptureSession",
        "",
        "onConfigured",
        "(Landroid/hardware/camera2/CameraCaptureSession;)V",
        "session",
        "onConfigureFailed",
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
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    const-string v0, "session"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "CameraPreview"

    .line 7
    .line 8
    const-string v0, "Camera2 onConfigureFailed"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    .line 1
    const-string v0, "CAREFUL"

    .line 2
    .line 3
    const-string v1, "cameraCaptureSession"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 9
    .line 10
    invoke-static {v1}, Lteam/opay/qrcode/android/core/CameraPreview;->g(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CameraDevice;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 18
    .line 19
    invoke-static {v1, p1}, Lteam/opay/qrcode/android/core/CameraPreview;->p(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->l(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const-string v1, "previewRequestBuilder"

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object p1, v2

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->l(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v3, v2

    .line 64
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p1, v1}, Lteam/opay/qrcode/android/core/CameraPreview;->q(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CaptureRequest;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 72
    .line 73
    invoke-static {p1}, Lteam/opay/qrcode/android/core/CameraPreview;->i(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 80
    .line 81
    invoke-static {v1}, Lteam/opay/qrcode/android/core/CameraPreview;->k(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CaptureRequest;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    const-string v1, "previewRequest"

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v1, v2

    .line 93
    :cond_3
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview$a;->a:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 94
    .line 95
    invoke-static {v3}, Lteam/opay/qrcode/android/core/CameraPreview;->f(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/os/Handler;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v0, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_3
    return-void
.end method
