.class public final Lteam/opay/qrcode/android/core/CameraPreview;
.super Lteam/opay/qrcode/android/core/AutoFitTextureView;
.source "CameraPreview.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/android/core/CameraPreview$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0002D\\\u0008\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0002\u0081\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J-\u0010$\u001a\u00020\u00182\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008&\u0010\u0011J\u000f\u0010\'\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0011J\u000f\u0010(\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008(\u0010\u0011J\r\u0010)\u001a\u00020\u0012\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\u0012\u00a2\u0006\u0004\u0008+\u0010*J\r\u0010,\u001a\u00020\r\u00a2\u0006\u0004\u0008,\u0010\u0011J\r\u0010-\u001a\u00020\r\u00a2\u0006\u0004\u0008-\u0010\u0011J\r\u0010.\u001a\u00020\r\u00a2\u0006\u0004\u0008.\u0010\u0011J\u0015\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u0012\u00a2\u0006\u0004\u00080\u00101J\u0015\u00104\u001a\u00020\r2\u0006\u00103\u001a\u000202\u00a2\u0006\u0004\u00084\u00105R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u0016\u0010>\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010@\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010.R\u0016\u0010C\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010N\u001a\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010Y\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010[\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010iR\u0018\u0010m\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010lR\u0014\u0010p\u001a\u00020n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010oR\u0016\u0010s\u001a\u00020q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010rR\u0016\u0010v\u001a\u00020t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010uR\u0014\u0010y\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010xR\u0016\u0010z\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010=R\u0016\u0010{\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010=R\u0016\u0010}\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010BR\u0012\u0010\u0080\u0001\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010\u007f\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lteam/opay/qrcode/android/core/CameraPreview;",
        "Lteam/opay/qrcode/android/core/AutoFitTextureView;",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/qrcode/android/PERFORMANCE;",
        "performance",
        "Lgv1;",
        "cameraPreviewListener",
        "<init>",
        "(Landroid/content/Context;Lteam/opay/qrcode/android/PERFORMANCE;Lgv1;)V",
        "",
        "width",
        "height",
        "",
        "A",
        "(II)V",
        "v",
        "()V",
        "",
        "B",
        "(II)Z",
        "Landroid/hardware/camera2/params/StreamConfigurationMap;",
        "map",
        "",
        "Landroid/util/Size;",
        "y",
        "(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;",
        "viewWidth",
        "viewHeight",
        "u",
        "displayRotation",
        "r",
        "(I)Z",
        "choices",
        "textureViewWidth",
        "textureViewHeight",
        "s",
        "([Landroid/util/Size;II)Landroid/util/Size;",
        "t",
        "C",
        "E",
        "x",
        "()Z",
        "w",
        "G",
        "D",
        "F",
        "scaleToFill",
        "setShouldScaleToFill",
        "(Z)V",
        "",
        "aspectTolerance",
        "setAspectTolerance",
        "(F)V",
        "c",
        "Lteam/opay/qrcode/android/PERFORMANCE;",
        "d",
        "Lgv1;",
        "getCameraPreviewListener",
        "()Lgv1;",
        "e",
        "Z",
        "mShouldScaleToFill",
        "f",
        "mAspectTolerance",
        "g",
        "I",
        "mImageFormat",
        "team/opay/qrcode/android/core/CameraPreview$c",
        "h",
        "Lteam/opay/qrcode/android/core/CameraPreview$c;",
        "surfaceTextureListener",
        "",
        "i",
        "Ljava/lang/String;",
        "cameraId",
        "j",
        "Lteam/opay/qrcode/android/core/CameraPreview;",
        "textureView",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "k",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "captureSession",
        "Landroid/hardware/camera2/CameraDevice;",
        "l",
        "Landroid/hardware/camera2/CameraDevice;",
        "cameraDevice",
        "m",
        "Landroid/util/Size;",
        "previewSize",
        "n",
        "readerOutputSize",
        "team/opay/qrcode/android/core/CameraPreview$b",
        "o",
        "Lteam/opay/qrcode/android/core/CameraPreview$b;",
        "stateCallback",
        "Landroid/os/HandlerThread;",
        "p",
        "Landroid/os/HandlerThread;",
        "backgroundThread",
        "Landroid/os/Handler;",
        "q",
        "Landroid/os/Handler;",
        "backgroundHandler",
        "Landroid/media/ImageReader;",
        "Landroid/media/ImageReader;",
        "imageReader",
        "Landroid/view/Surface;",
        "Landroid/view/Surface;",
        "surface",
        "Landroid/media/ImageReader$OnImageAvailableListener;",
        "Landroid/media/ImageReader$OnImageAvailableListener;",
        "onImageAvailableListener",
        "Landroid/hardware/camera2/CaptureRequest$Builder;",
        "Landroid/hardware/camera2/CaptureRequest$Builder;",
        "previewRequestBuilder",
        "Landroid/hardware/camera2/CaptureRequest;",
        "Landroid/hardware/camera2/CaptureRequest;",
        "previewRequest",
        "Ljava/util/concurrent/Semaphore;",
        "Ljava/util/concurrent/Semaphore;",
        "cameraOpenCloseLock",
        "flashSupported",
        "flashIsOn",
        "z",
        "sensorOrientation",
        "getDisplayOrientation",
        "()I",
        "displayOrientation",
        "Companion",
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


# static fields
.field public static final A:Lteam/opay/qrcode/android/core/CameraPreview$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final c:Lteam/opay/qrcode/android/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lgv1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:F

.field public g:I

.field public final h:Lteam/opay/qrcode/android/core/CameraPreview$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lteam/opay/qrcode/android/core/CameraPreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/hardware/camera2/CameraCaptureSession;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/hardware/camera2/CameraDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Landroid/util/Size;

.field public n:Landroid/util/Size;

.field public final o:Lteam/opay/qrcode/android/core/CameraPreview$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/media/ImageReader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Landroid/media/ImageReader$OnImageAvailableListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public v:Landroid/hardware/camera2/CaptureRequest;

.field public final w:Ljava/util/concurrent/Semaphore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/qrcode/android/core/CameraPreview$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/qrcode/android/core/CameraPreview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/qrcode/android/core/CameraPreview;->A:Lteam/opay/qrcode/android/core/CameraPreview$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lteam/opay/qrcode/android/PERFORMANCE;Lgv1;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/qrcode/android/PERFORMANCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgv1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "performance"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "cameraPreviewListener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x6

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    invoke-direct/range {v1 .. v6}, Lteam/opay/qrcode/android/core/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->c:Lteam/opay/qrcode/android/PERFORMANCE;

    .line 26
    .line 27
    iput-object p3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->e:Z

    .line 31
    .line 32
    const p2, 0x3df5c28f    # 0.12f

    .line 33
    .line 34
    .line 35
    iput p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->f:F

    .line 36
    .line 37
    const/16 p2, 0x23

    .line 38
    .line 39
    iput p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->g:I

    .line 40
    .line 41
    new-instance p2, Lteam/opay/qrcode/android/core/CameraPreview$c;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lteam/opay/qrcode/android/core/CameraPreview$c;-><init>(Lteam/opay/qrcode/android/core/CameraPreview;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->h:Lteam/opay/qrcode/android/core/CameraPreview$c;

    .line 47
    .line 48
    iput-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 49
    .line 50
    new-instance p2, Lteam/opay/qrcode/android/core/CameraPreview$b;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lteam/opay/qrcode/android/core/CameraPreview$b;-><init>(Lteam/opay/qrcode/android/core/CameraPreview;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->o:Lteam/opay/qrcode/android/core/CameraPreview$b;

    .line 56
    .line 57
    new-instance p2, Lbv1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lbv1;-><init>(Lteam/opay/qrcode/android/core/CameraPreview;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->t:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 63
    .line 64
    new-instance p2, Ljava/util/concurrent/Semaphore;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 70
    .line 71
    return-void
.end method

.method public static synthetic b(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/media/ImageReader;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/android/core/CameraPreview;->z(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/media/ImageReader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lteam/opay/qrcode/android/core/CameraPreview;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/CameraPreview;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/qrcode/android/core/CameraPreview;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/android/core/CameraPreview;->u(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/qrcode/android/core/CameraPreview;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/CameraPreview;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/qrcode/android/core/CameraPreview;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/qrcode/android/core/CameraPreview;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->v:Landroid/hardware/camera2/CaptureRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lteam/opay/qrcode/android/core/CameraPreview;)Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lteam/opay/qrcode/android/core/CameraPreview;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/android/core/CameraPreview;->A(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->v:Landroid/hardware/camera2/CaptureRequest;

    .line 2
    .line 3
    return-void
.end method

.method public static final z(Lteam/opay/qrcode/android/core/CameraPreview;Landroid/media/ImageReader;)V
    .locals 5

    .line 1
    const-string v0, "CameraPreview"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "acquire image width:"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " height:"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-static {p1, v3}, Lteam/opay/qrcode/android/core/I420Transfer;->a(Landroid/media/Image;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "getDataFromImage(...)"

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v3, v1, v2}, Lgv1;->a([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, ""

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0, p0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.CAMERA"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/android/core/CameraPreview;->B(II)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 21
    .line 22
    invoke-interface {p1}, Lgv1;->c()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/qrcode/android/core/CameraPreview;->u(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "camera"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 45
    .line 46
    :try_start_0
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 47
    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    const-wide/16 v1, 0xbb8

    .line 51
    .line 52
    invoke-virtual {p2, v1, v2, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 59
    .line 60
    invoke-interface {p1}, Lgv1;->c()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;

    .line 67
    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    const-string p2, "cameraId"

    .line 71
    .line 72
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    :cond_3
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->o:Lteam/opay/qrcode/android/core/CameraPreview$b;

    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_1
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 85
    .line 86
    invoke-interface {p1}, Lgv1;->c()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_2
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 91
    .line 92
    invoke-interface {p1}, Lgv1;->c()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method public final B(II)Z
    .locals 12

    .line 1
    const-string v0, "CameraPreview"

    .line 2
    .line 3
    const-string v1, " h"

    .line 4
    .line 5
    const-string v2, "CAREFUL"

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "camera"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    .line 18
    .line 19
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v3, Landroid/hardware/camera2/CameraManager;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    :goto_0
    if-ge v8, v7, :cond_11

    .line 33
    .line 34
    aget-object v9, v6, v8

    .line 35
    .line 36
    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    const-string v11, "getCameraCharacteristics(...)"

    .line 41
    .line 42
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 46
    .line 47
    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    check-cast v11, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v11, :cond_0

    .line 54
    .line 55
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    nop

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_0
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 69
    .line 70
    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    check-cast v11, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 75
    .line 76
    if-nez v11, :cond_1

    .line 77
    .line 78
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v6, "window"

    .line 86
    .line 87
    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v6, "null cannot be cast to non-null type android.view.WindowManager"

    .line 92
    .line 93
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    check-cast v3, Landroid/view/WindowManager;

    .line 97
    .line 98
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 107
    .line 108
    invoke-virtual {v10, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast v6, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput v6, p0, Lteam/opay/qrcode/android/core/CameraPreview;->z:I

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lteam/opay/qrcode/android/core/CameraPreview;->r(I)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    move v6, p2

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    move v6, p1

    .line 132
    :goto_2
    if-eqz v3, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move p1, p2

    .line 136
    :goto_3
    invoke-virtual {p0, v11}, Lteam/opay/qrcode/android/core/CameraPreview;->y(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p0, p2, v6, p1}, Lteam/opay/qrcode/android/core/CameraPreview;->s([Landroid/util/Size;II)Landroid/util/Size;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 145
    .line 146
    new-instance p1, Landroid/util/Size;

    .line 147
    .line 148
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    const-string v3, "previewSize"

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    if-nez p2, :cond_4

    .line 154
    .line 155
    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object p2, v6

    .line 159
    :cond_4
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    int-to-float p2, p2

    .line 164
    iget-object v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->c:Lteam/opay/qrcode/android/PERFORMANCE;

    .line 165
    .line 166
    invoke-virtual {v7}, Lteam/opay/qrcode/android/PERFORMANCE;->getRatio()F

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    mul-float p2, p2, v7

    .line 171
    .line 172
    float-to-int p2, p2

    .line 173
    const/16 v7, 0x780

    .line 174
    .line 175
    invoke-static {p2, v7}, Lkotlin/ranges/c;->f(II)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    iget-object v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 180
    .line 181
    if-nez v7, :cond_5

    .line 182
    .line 183
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    move-object v7, v6

    .line 187
    :cond_5
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    int-to-float v7, v7

    .line 192
    iget-object v8, p0, Lteam/opay/qrcode/android/core/CameraPreview;->c:Lteam/opay/qrcode/android/PERFORMANCE;

    .line 193
    .line 194
    invoke-virtual {v8}, Lteam/opay/qrcode/android/PERFORMANCE;->getRatio()F

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    mul-float v7, v7, v8

    .line 199
    .line 200
    float-to-int v7, v7

    .line 201
    const/16 v8, 0x438

    .line 202
    .line 203
    invoke-static {v7, v8}, Lkotlin/ranges/c;->f(II)I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-direct {p1, p2, v7}, Landroid/util/Size;-><init>(II)V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->n:Landroid/util/Size;

    .line 211
    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string p2, "previewSize: w "

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 223
    .line 224
    if-nez p2, :cond_6

    .line 225
    .line 226
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object p2, v6

    .line 230
    :cond_6
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 241
    .line 242
    if-nez p2, :cond_7

    .line 243
    .line 244
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    move-object p2, v6

    .line 248
    :cond_7
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v2, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 271
    .line 272
    const/4 p2, 0x2

    .line 273
    if-ne p1, p2, :cond_a

    .line 274
    .line 275
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 276
    .line 277
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 278
    .line 279
    if-nez p2, :cond_8

    .line 280
    .line 281
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    move-object p2, v6

    .line 285
    :cond_8
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    iget-object v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 290
    .line 291
    if-nez v7, :cond_9

    .line 292
    .line 293
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    move-object v7, v6

    .line 297
    :cond_9
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    invoke-virtual {p1, p2, v3}, Lteam/opay/qrcode/android/core/AutoFitTextureView;->a(II)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_a
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 306
    .line 307
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 308
    .line 309
    if-nez p2, :cond_b

    .line 310
    .line 311
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    move-object p2, v6

    .line 315
    :cond_b
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    iget-object v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 320
    .line 321
    if-nez v7, :cond_c

    .line 322
    .line 323
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    move-object v7, v6

    .line 327
    :cond_c
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {p1, p2, v3}, Lteam/opay/qrcode/android/core/AutoFitTextureView;->a(II)V

    .line 332
    .line 333
    .line 334
    :goto_4
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->n:Landroid/util/Size;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .line 336
    const-string p2, "readerOutputSize"

    .line 337
    .line 338
    if-nez p1, :cond_d

    .line 339
    .line 340
    :try_start_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    move-object p1, v6

    .line 344
    :cond_d
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->n:Landroid/util/Size;

    .line 349
    .line 350
    if-nez v3, :cond_e

    .line 351
    .line 352
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    move-object v3, v6

    .line 356
    :cond_e
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    iget v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->g:I

    .line 361
    .line 362
    invoke-static {p1, v3, v7, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->t:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 367
    .line 368
    iget-object v7, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;

    .line 369
    .line 370
    invoke-virtual {p1, v3, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 371
    .line 372
    .line 373
    iput-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->r:Landroid/media/ImageReader;

    .line 374
    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v3, "readerSize: w "

    .line 381
    .line 382
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->n:Landroid/util/Size;

    .line 386
    .line 387
    if-nez v3, :cond_f

    .line 388
    .line 389
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    move-object v3, v6

    .line 393
    :cond_f
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->n:Landroid/util/Size;

    .line 404
    .line 405
    if-nez v1, :cond_10

    .line 406
    .line 407
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_10
    move-object v6, v1

    .line 412
    :goto_5
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-static {v2, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 427
    .line 428
    invoke-virtual {v10, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 433
    .line 434
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->x:Z

    .line 439
    .line 440
    iput-object v9, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    .line 442
    :cond_11
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;

    .line 443
    .line 444
    if-eqz p1, :cond_12

    .line 445
    .line 446
    const/4 v4, 0x1

    .line 447
    :cond_12
    return v4

    .line 448
    :catch_1
    :try_start_3
    const-string p1, "Camera2API not supported"

    .line 449
    .line 450
    invoke-static {v0, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    .line 452
    .line 453
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;

    .line 454
    .line 455
    if-eqz p1, :cond_13

    .line 456
    .line 457
    const/4 v4, 0x1

    .line 458
    :cond_13
    return v4

    .line 459
    :goto_6
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-static {v0, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    .line 465
    .line 466
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;

    .line 467
    .line 468
    if-eqz p1, :cond_14

    .line 469
    .line 470
    const/4 v4, 0x1

    .line 471
    :cond_14
    return v4

    .line 472
    :goto_7
    iget-object p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->i:Ljava/lang/String;

    .line 473
    .line 474
    if-eqz p1, :cond_15

    .line 475
    .line 476
    const/4 v4, 0x1

    .line 477
    :cond_15
    return v4
.end method

.method public final C()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "CameraBackground"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->p:Landroid/os/HandlerThread;

    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->p:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/CameraPreview;->C()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, " height: "

    .line 11
    .line 12
    const-string v2, "CAREFUL"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "camera preview opencamera texture width: "

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v2, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0, v0, v1}, Lteam/opay/qrcode/android/core/CameraPreview;->A(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "camera preview texture notready width: "

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 109
    .line 110
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->h:Lteam/opay/qrcode/android/core/CameraPreview$c;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    const-string v0, "startCameraPreview"

    .line 116
    .line 117
    invoke-static {v2, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->p:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->p:Landroid/os/HandlerThread;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->p:Landroid/os/HandlerThread;

    .line 20
    .line 21
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    const-string v1, "CameraPreview"

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_2
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/CameraPreview;->t()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/CameraPreview;->E()V

    .line 5
    .line 6
    .line 7
    const-string v0, "CAREFUL"

    .line 8
    .line 9
    const-string v1, "stopCameraPreview"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->y:Z

    .line 10
    .line 11
    xor-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput-boolean v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->y:Z

    .line 14
    .line 15
    const-string v1, "previewRequestBuilder"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v2

    .line 28
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v0, v2

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->v:Landroid/hardware/camera2/CaptureRequest;

    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    const-string v0, "previewRequest"

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v0, v2

    .line 83
    :cond_4
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->q:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method

.method public final getCameraPreviewListener()Lgv1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->d:Lgv1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->z:I

    .line 2
    .line 3
    add-int/lit16 v0, v0, 0x168

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x168

    .line 6
    .line 7
    return v0
.end method

.method public final r(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Display rotation is invalid: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "CameraPreview"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->z:I

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/16 v1, 0xb4

    .line 40
    .line 41
    if-ne p1, v1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->z:I

    .line 45
    .line 46
    const/16 v1, 0x5a

    .line 47
    .line 48
    if-eq p1, v1, :cond_3

    .line 49
    .line 50
    const/16 v1, 0x10e

    .line 51
    .line 52
    if-ne p1, v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 56
    :cond_3
    :goto_1
    return v0
.end method

.method public final s([Landroid/util/Size;II)Landroid/util/Size;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    int-to-double v3, v1

    .line 8
    int-to-double v5, v2

    .line 9
    div-double/2addr v3, v5

    .line 10
    array-length v1, v0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    if-ge v9, v1, :cond_1

    .line 20
    .line 21
    aget-object v12, v0, v9

    .line 22
    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v14, "available preview width: "

    .line 29
    .line 30
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v14, " height: "

    .line 41
    .line 42
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    const-string v14, "CameraPreview"

    .line 57
    .line 58
    invoke-static {v14, v13}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    int-to-double v13, v13

    .line 66
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    int-to-double v6, v15

    .line 71
    div-double/2addr v13, v6

    .line 72
    sub-double/2addr v13, v3

    .line 73
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    move-object/from16 v13, p0

    .line 78
    .line 79
    iget v14, v13, Lteam/opay/qrcode/android/core/CameraPreview;->f:F

    .line 80
    .line 81
    float-to-double v14, v14

    .line 82
    cmpl-double v16, v6, v14

    .line 83
    .line 84
    if-gtz v16, :cond_0

    .line 85
    .line 86
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    sub-int/2addr v6, v2

    .line 91
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    int-to-double v6, v6

    .line 96
    cmpg-double v14, v6, v10

    .line 97
    .line 98
    if-gez v14, :cond_0

    .line 99
    .line 100
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    sub-int/2addr v5, v2

    .line 105
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    int-to-double v10, v5

    .line 110
    move-object v5, v12

    .line 111
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v13, p0

    .line 115
    .line 116
    if-nez v5, :cond_3

    .line 117
    .line 118
    array-length v1, v0

    .line 119
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :goto_1
    if-ge v8, v1, :cond_3

    .line 125
    .line 126
    aget-object v3, v0, v8

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    sub-int/2addr v4, v2

    .line 133
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    int-to-double v9, v4

    .line 138
    cmpg-double v4, v9, v6

    .line 139
    .line 140
    if-gez v4, :cond_2

    .line 141
    .line 142
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    sub-int/2addr v4, v2

    .line 147
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-double v4, v4

    .line 152
    move-wide v6, v4

    .line 153
    move-object v5, v3

    .line 154
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v5
.end method

.method public final setAspectTolerance(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->f:F

    .line 2
    .line 3
    return-void
.end method

.method public final setShouldScaleToFill(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->k:Landroid/hardware/camera2/CameraCaptureSession;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->r:Landroid/media/ImageReader;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->r:Landroid/media/ImageReader;

    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->s:Landroid/view/Surface;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 44
    .line 45
    .line 46
    :cond_3
    iput-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->s:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string v2, "Interrupted while trying to lock camera closing."

    .line 57
    .line 58
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_2
    iget-object v1, p0, Lteam/opay/qrcode/android/core/CameraPreview;->w:Ljava/util/concurrent/Semaphore;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final u(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "configTransform viewWidth:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " viewHeight:"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "CAREFUL"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final v()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "CAREFUL"

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->j:Lteam/opay/qrcode/android/core/CameraPreview;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    const-string v4, "previewSize"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v3, v5

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :catch_1
    move-exception v0

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :catch_2
    move-exception v0

    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v6, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 39
    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v6, v5

    .line 46
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v2, v3, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v6, "texture buffersize preview width: "

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 64
    .line 65
    if-nez v6, :cond_3

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v6, v5

    .line 71
    :cond_3
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v6, " height: "

    .line 79
    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, Lteam/opay/qrcode/android/core/CameraPreview;->m:Landroid/util/Size;

    .line 84
    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    move-object v6, v5

    .line 91
    :cond_4
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v1, v3}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Landroid/view/Surface;

    .line 106
    .line 107
    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 108
    .line 109
    .line 110
    iput-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->s:Landroid/view/Surface;

    .line 111
    .line 112
    iget-object v2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 113
    .line 114
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iput-object v2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .line 123
    const-string v3, "previewRequestBuilder"

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object v2, v5

    .line 131
    :cond_5
    iget-object v4, p0, Lteam/opay/qrcode/android/core/CameraPreview;->r:Landroid/media/ImageReader;

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_1

    .line 140
    :cond_6
    move-object v4, v5

    .line 141
    :goto_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->u:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v2, v5

    .line 155
    :cond_7
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->s:Landroid/view/Surface;

    .line 156
    .line 157
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lteam/opay/qrcode/android/core/CameraPreview;->l:Landroid/hardware/camera2/CameraDevice;

    .line 164
    .line 165
    if-eqz v2, :cond_9

    .line 166
    .line 167
    iget-object v3, p0, Lteam/opay/qrcode/android/core/CameraPreview;->r:Landroid/media/ImageReader;

    .line 168
    .line 169
    if-eqz v3, :cond_8

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_2

    .line 176
    :cond_8
    move-object v3, v5

    .line 177
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-object v4, p0, Lteam/opay/qrcode/android/core/CameraPreview;->s:Landroid/view/Surface;

    .line 181
    .line 182
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const/4 v6, 0x2

    .line 186
    new-array v6, v6, [Landroid/view/Surface;

    .line 187
    .line 188
    const/4 v7, 0x0

    .line 189
    aput-object v3, v6, v7

    .line 190
    .line 191
    aput-object v4, v6, v0

    .line 192
    .line 193
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v3, Lteam/opay/qrcode/android/core/CameraPreview$a;

    .line 198
    .line 199
    invoke-direct {v3, p0}, Lteam/opay/qrcode/android/core/CameraPreview$a;-><init>(Lteam/opay/qrcode/android/core/CameraPreview;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v0, v3, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v1, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v1, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v1, v0}, Lt6c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_9
    :goto_6
    return-void
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final y(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 5

    .line 1
    iget v0, p0, Lteam/opay/qrcode/android/core/CameraPreview;->g:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x32315659

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x100

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v3, v3, [Ljava/lang/Integer;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v0, v3, v4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-object v1, v3, v0

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aput-object v2, v3, v1

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    array-length v3, v2

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    :goto_0
    if-nez v3, :cond_0

    .line 70
    .line 71
    :cond_2
    if-eqz v2, :cond_3

    .line 72
    .line 73
    array-length p1, v2

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    :cond_3
    new-array v2, v0, [Landroid/util/Size;

    .line 77
    .line 78
    new-instance p1, Landroid/util/Size;

    .line 79
    .line 80
    const/16 v0, 0x500

    .line 81
    .line 82
    const/16 v1, 0x2d0

    .line 83
    .line 84
    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 85
    .line 86
    .line 87
    aput-object p1, v2, v4

    .line 88
    .line 89
    :cond_4
    return-object v2
.end method
