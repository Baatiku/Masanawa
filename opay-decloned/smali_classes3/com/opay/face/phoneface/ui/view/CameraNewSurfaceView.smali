.class public Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraNewSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lb87;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "CameraNewSurfaceView"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Landroid/view/SurfaceHolder;

.field public e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

.field public f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

.field public g:Lpt1;

.field public h:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

.field public i:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

.field public j:Lcom/opay/face/common/config/OAppConfig;

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->k:Z

    .line 4
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->l:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->k:Z

    .line 9
    iput-boolean p2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->l:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->k:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->l:Z

    .line 14
    iput-boolean p2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->o()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->b()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->h:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;->e()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    const/4 v0, -0x2

    .line 10
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0, p0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a:Z

    .line 55
    .line 56
    return-void
.end method

.method public final c(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "SurfaceView isPause!"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getFaceConfig()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "OFaceLiveConfig is null!"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    if-nez p1, :cond_2

    .line 28
    .line 29
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "SurfaceHolder is null"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->i()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "Camera is opened\uff01"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x17

    .line 56
    .line 57
    if-lt v0, v1, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->c:Landroid/content/Context;

    .line 60
    .line 61
    const-string v1, "android.permission.CAMERA"

    .line 62
    .line 63
    invoke-static {v0, v1}, Loie;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 70
    .line 71
    const-string v0, "Camera unauthorized!"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->getFaceConfig()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getCameraId()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-gtz v0, :cond_5

    .line 90
    .line 91
    const/4 p1, -0x1

    .line 92
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->j:Lcom/opay/face/common/config/OAppConfig;

    .line 93
    .line 94
    const-string v1, "Dynamic_living_open_camera"

    .line 95
    .line 96
    const-string v2, "-4"

    .line 97
    .line 98
    const-string v3, "No camera found"

    .line 99
    .line 100
    invoke-static {v1, v2, v3, p1, v0}, Lcom/opay/face/common/util/TraceUtils;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_OPEN_CAMERA:Lcom/opay/face/phoneface/model/LiveCode;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->h(Landroid/view/SurfaceHolder;I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_7

    .line 114
    .line 115
    if-nez v1, :cond_6

    .line 116
    .line 117
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_OPEN_FRONT_CAMERA:Lcom/opay/face/phoneface/model/LiveCode;

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_OPEN_BACK_CAMERA:Lcom/opay/face/phoneface/model/LiveCode;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_0
    return-void
.end method

.method public final d(Lcom/opay/face/phoneface/model/LiveCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->g:Lpt1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lpt1;->x(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->g:Lpt1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->c()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->m:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onResume..."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->m:Z

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->c(Landroid/view/SurfaceHolder;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public getBaseCameraHandler()Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceCallback()Lpt1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->g:Lpt1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceConfig()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->i:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFacing()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public final h(Landroid/view/SurfaceHolder;I)Z
    .locals 3

    .line 1
    const-string v0, "Dynamic_living_open_camera"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->j(Landroid/view/SurfaceHolder;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->n()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->h:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-interface {p1, p2}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;->v(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    const-string p1, "0"

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "open camera "

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->j:Lcom/opay/face/common/config/OAppConfig;

    .line 61
    .line 62
    invoke-static {v0, p1, p2, v1, v2}, Lcom/opay/face/common/util/TraceUtils;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->l:Z

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 p1, 0x1

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    sget-object p2, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "Open camera error, "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {p2, v1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->d()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->j:Lcom/opay/face/common/config/OAppConfig;

    .line 111
    .line 112
    const-string v2, "-1"

    .line 113
    .line 114
    invoke-static {v0, v2, p1, p2, v1}, Lcom/opay/face/common/util/TraceUtils;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a()V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    :goto_2
    return p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;-><init>(Lb87;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->f:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAutoDetect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCameraCallback(Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->h:Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView$a;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceCallback(Lpt1;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->g:Lpt1;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setFaceLiveConfig(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->i:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setFlashColor(Lcom/opay/face/phoneface/ui/config/FlashColor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->e:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->m(Lcom/opay/face/phoneface/ui/config/FlashColor;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOAppConfig(Lcom/opay/face/common/config/OAppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->j:Lcom/opay/face/common/config/OAppConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setPortrait(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowToast(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "surfaceCreated..."

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 33
    .line 34
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->d:Landroid/view/SurfaceHolder;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->c(Landroid/view/SurfaceHolder;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 6
    .line 7
    sget-object p1, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->n:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "surfaceDestroyed..."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/view/CameraNewSurfaceView;->b:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
