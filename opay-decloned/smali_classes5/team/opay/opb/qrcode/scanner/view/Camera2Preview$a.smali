.class public final Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Preview.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w()V
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
        "team/opay/opb/qrcode/scanner/view/Camera2Preview$a",
        "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "cameraCaptureSession",
        "",
        "onConfigured",
        "(Landroid/hardware/camera2/CameraCaptureSession;)V",
        "session",
        "onConfigureFailed",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

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
    .locals 2

    .line 1
    const-string v0, "session"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getCameraPreviewListener()Lhv1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Exception;

    .line 15
    .line 16
    const-string v1, "Camera2 session configure failed"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 1
    const-string v0, "cameraCaptureSession"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 15
    .line 16
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraDevice;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->k(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->k(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 66
    .line 67
    invoke-static {v2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    invoke-static {v2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraDevice;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-static {v2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-static {v2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/os/Handler;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    move-object v1, v0

    .line 93
    :cond_3
    invoke-static {p1, v1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CaptureRequest;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 97
    .line 98
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 105
    .line 106
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraDevice;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getCameraPreviewListener()Lhv1;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 121
    .line 122
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->j(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-interface {p1, v0}, Lhv1;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "Camera2 session configure exception: "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    .line 155
    .line 156
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lere;->a:Lere;

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;->a:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 165
    .line 166
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getCameraPreviewListener()Lhv1;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_4

    .line 171
    .line 172
    invoke-interface {p1, v1}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    :goto_2
    return-void

    .line 176
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 177
    .line 178
    .line 179
    return-void
.end method
